module "controllers" {
  source = "controllers"
  name = "${var.cluster_name}"
  cluster_name = "${var.cluster_name}"
  region = "${var.region}"
  dns_zone = "${var.dns_zone}"

  # configuration
  ssh_fingerprints      = "${var.ssh_fingerprints}"
  service_cidr          = "${var.service_cidr}"
  cluster_domain_suffix = "${var.cluster_domain_suffix}"
  clc_snippets          = "${var.controller_clc_snippets}"
}

