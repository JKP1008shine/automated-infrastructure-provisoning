provider "google" {
	project = var.project_id
	region = var.region
}

resource "google_compute_instance" "default" {
	name 		= "sinjini-instance"
	machine_type    = "e2-medium"
	zone		= var.zone
	
	boot_disk {
		initialize_params {
			image = "debian-cloud/debian-10"
		} 
	}
	
	network_interface {
		network    = "try-vpc"
		subnetwork = "try-pub"
		access_config {
			// ephermal public ip //
		}

	}
}


