output "tag_name" {
  value = "${digitalocean_tag.workers.name}"
}

output "dns_name" {
  value = "${digitalocean_record.workers.0.fqdn}"
}

output "ipv4" {
  value = ["${digitalocean_droplet.workers.*.ipv4_address}"]
}

output "ipv6" {
  value = ["${digitalocean_droplet.workers.*.ipv6_address}"]
}
