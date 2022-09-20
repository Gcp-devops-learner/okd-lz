module "project-services" {
  source  = "terraform-google-modules/project-factory/google//modules/project_services"
  version = "~> 13.0"

  project_id                  = var.project_id

  activate_apis = distinct(concat(var.activate_apis, ["billingbudgets.googleapis.com"]))
}