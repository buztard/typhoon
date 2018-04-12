output "controllers_dns" {
  value = "${module.controllers.dns_name}"
}

output "workers_dns" {
  value = "${module.workers.dns_name}"
}

output "controllers_ipv4" {
  value = ["${module.controllers.ipv4}"]
}

output "controllers_ipv6" {
  value = ["${module.controllers.ipv6}"]
}

output "workers_ipv4" {
  value = ["${module.workers.ipv4}"]
}

output "workers_ipv6" {
  value = ["${module.workers.ipv6}"]
}
