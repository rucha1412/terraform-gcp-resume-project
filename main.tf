module "service_account" {
  source       = "./modules/service_account"
  account_id   = "resume-cloudrun-sa"
  display_name = "Resume Cloud Run Service Account"
}

module "secret_manager" {
  source                = "./modules/secret_manager"
  secret_id             = "db-password"
  secret_value          = var.db_password
  service_account_email = module.service_account.email
}

module "cloud_sql" {
  source        = "./modules/cloud_sql"
  instance_name = "resume-mysql-instance"
  region        = var.region
  db_name       = "appdb"
  db_user       = "appuser"
  db_password   = var.db_password
}

module "cloud_run" {
  source                = "./modules/cloud_run"
  service_name          = "resume-app"
  region                = var.region
  service_account_email = module.service_account.email
  db_connection_name    = module.cloud_sql.connection_name
  db_name               = module.cloud_sql.db_name
  db_user               = module.cloud_sql.db_user
  db_password_secret_id = module.secret_manager.secret_id
}
