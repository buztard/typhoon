variable "name" {
  type        = "string"
  description = "Unique name for the worker pool"
}

variable "cluster_name" {
  type        = "string"
  description = "Must be set to `cluster_name of cluster`"
}

# Digital Ocean

variable "region" {
  type        = "string"
  description = "Must be set to `region` of cluster"
}

variable "dns_zone" {
  type        = "string"
  description = "Must be set to `dns_zone` of cluster"
}

# instances

variable "count" {
  type        = "string"
  default     = "1"
  description = "Number of workers"
}

variable "droplet_type" {
  type        = "string"
  default     = "s-1vcpu-1gb"
  description = "Droplet type for workers (e.g. s-1vcpu-1gb, s-1vcpu-2gb, s-2vcpu-2gb)"
}

variable "image" {
  type        = "string"
  default     = "coreos-stable"
  description = "Container Linux image for instances (e.g. coreos-stable)"
}

variable "clc_snippets" {
  type        = "list"
  description = "Worker Container Linux Config snippets"
  default     = []
}

# configuration

variable "ssh_fingerprints" {
  type        = "list"
  description = "SSH public key fingerprints. (e.g. see `ssh-add -l -E md5`)"
}

variable "pod_cidr" {
  description = "CIDR IPv4 range to assign Kubernetes pods"
  type        = "string"
  default     = "10.2.0.0/16"
}

variable "service_cidr" {
  description = <<EOD
CIDR IPv4 range to assign Kubernetes services.
The 1st IP will be reserved for kube_apiserver, the 10th IP will be reserved for kube-dns.
EOD

  type    = "string"
  default = "10.3.0.0/16"
}

variable "cluster_domain_suffix" {
  description = "Queries for domains with the suffix will be answered by kube-dns. Default is cluster.local (e.g. foo.default.svc.cluster.local) "
  type        = "string"
  default     = "cluster.local"
}
