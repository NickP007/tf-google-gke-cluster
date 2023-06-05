# ${path.module} is an interpolated string in Terraform, which references the path to the current
# module. In this case, it returns the path to the directory containing the current module.

output "kubeconfig" {
  value       = "${path.module}/kubeconfig"
  description = "The path to the kubeconfig file"
}

output "config_host" {
  value = module.gke_auth.host
}

output "config_token" {
  value = module.gke_auth.token
}

output "config_ca" {
  value = module.gke_auth.cluster_ca_certificate
}

output "name" {
  value = google_container_cluster.this.name
}
