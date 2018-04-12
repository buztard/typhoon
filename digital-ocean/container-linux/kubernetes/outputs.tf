output "controllers_dns" {
  value = "${digitalocean_record.controllers.0.fqdn}"
}

output "workers_dns" {
  value = "${module.workers.dns_name}"
}

output "controllers_ipv4" {
  value = ["${digitalocean_droplet.controllers.*.ipv4_address}"]
}

output "controllers_ipv6" {
  value = ["${digitalocean_droplet.controllers.*.ipv6_address}"]
}

output "workers_ipv4" {
  value = ["${module.workers.ipv4}"]
}

output "workers_ipv6" {
  value = ["${module.workers.ipv6}"]
}
