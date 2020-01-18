resource "google_container_cluster" "clbueno-1" {
  name               = "clbueno-1"
  network            = "default"
  location               = "us-central1-a"
  initial_node_count = 4
  enable_kubernetes_alpha = "true"
  enable_legacy_abac = "true"
}

resource "kubernetes_namespace" "Service" {
  metadata {
    annotations = {
      name = "Service"
    }

    labels = {
      mylabel = "Service"
    }

    name = "Service"
  }
}
