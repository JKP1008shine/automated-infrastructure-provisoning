variable "project_id"{
	description = "GCP project id"
	type        = string
}

variable "region" {
	description = "The region to deploy resources"
	type        = string
	default     = "us-central1"
}

variable "zone" {
	description = "The zone to deploy resources"
	type        = string
	default     = "us-central1-a"
}


