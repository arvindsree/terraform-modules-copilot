locals {
  argument_create = format("'%s' '%s' '%s' '%s' '%s' '%s' '%s' '%s' '%s' '%s' '%s' '%s' '%s' '%s' '%s' '%s' '%s' '%s'",
    var.access_key, var.security_key, var.controller_public_ip, var.controller_region, var.controller_username,
    var.controller_password, var.main_copilot_public_ip, var.main_copilot_private_ip, var.main_copilot_region, var.main_copilot_username, var.main_copilot_password,
    join(",", var.node_copilot_public_ips), join(",", var.node_copilot_private_ips), join(",", var.node_copilot_regions), join(",", var.node_copilot_usernames), join(",", var.node_copilot_passwords),
    join(",", var.node_copilot_data_volumes), join(",", var.node_copilot_names)
  )

  argument_destroy = format("'%s' '%s' '%s' '%s' '%s' '%s'",
    var.access_key, var.security_key, var.controller_public_ip, var.controller_region, var.main_copilot_public_ip, join(",", var.node_copilot_public_ips)
  )
}

resource "null_resource" "run_script" {
  triggers = {
    argument_destroy = local.argument_destroy
  }

  provisioner "local-exec" {
    command = "python3 -W ignore ${path.module}/aviatrix_copilot_cluster_init.py ${local.argument_create}"
  }

  provisioner "local-exec" {
    when = destroy
    command = "python3 -W ignore ${path.module}/clean_controller_sg.py ${self.triggers.argument_destroy}"
    on_failure = continue
  }
}
