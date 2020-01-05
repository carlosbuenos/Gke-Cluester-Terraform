# Gke-Cluester-Terraform
Script Para Criar um Cluster GKE
# Sample:

    resource "google_container_cluster" "gke-cluster-1" {
    name               = "my-first-gke-cluster"
    network            = "default"
    location               = "europe-west1-b"
    initial_node_count = 4
    enable_kubernetes_alpha = "true"
    enable_legacy_abac = "true"
  }
