variable "project_id" {
  description = "Google Cloud project ID"
  type        = string
}

variable "region" {
  description = "Google Cloud region"
  type        = string
  default     = "northamerica-northeast1"
}

variable "db_password" {
  description = "Database password"
  type        = string
  sensitive   = true
}
