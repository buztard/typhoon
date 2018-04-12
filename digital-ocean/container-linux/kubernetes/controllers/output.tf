output "tag_name" {
  value = "${digitalocean_tag.controllers.name}"
}

output "dns_name" {
  value = "${digitalocean_record.controllers.0.fqdn}"
}

output "ipv4" {
  value = ["${digitalocean_droplet.controllers.*.ipv4_address}"]
}

output "ipv6" {
  value = ["${digitalocean_droplet.controllers.*.ipv6_address}"]
}

output "etcds" {
  value = "${digitalocean_record.etcds.*.fqdn}"
}
