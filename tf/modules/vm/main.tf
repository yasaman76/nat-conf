#source https://cloud.google.com/vpc/docs/create-use-multiple-interfaces#creating_virtual_machine_instances_with_multiple_network_interfaces
# use 


resource "google_compute_instance" "default" {
  project      = var.project_id # Replace with your project ID in quotes
  zone         = "us-central1-b"
  name         = "backend-instance"
  machine_type = "e2-medium"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    subnetwork = var.subnet_1 # Replace with self link to a subnetwork in quotes
    network_ip = "10.0.0.14"
  }
  network_interface {
    subnetwork = var.subnet_2 # Replace with self link to a subnetwork in quotes
    network_ip = "10.10.20.14"
  }
  can_ip_forward = true
}
