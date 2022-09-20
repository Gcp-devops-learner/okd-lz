prefix       = "dev"
region       = "europe-west1"
master_count = 1
node_count   = 2

project_id              = "okd-automation"

org_id                    = "34545645634345" // Organisation ID
folder_id                 = ""
environment               = "development"
billing_code              = "1234"
billing_account           = "0090FE-ED3D81-ER565" // Billig Account
application_name          = ""
primary_contact           = "avinash@example.com"
# activate_apis = [
#   "compute.googleapis.com",
#   "cloudbilling.googleapis.com",
#   "dns.googleapis.com",
#   "servicenetworking.googleapis.com"
# ]
master_subdomain = "okd.avinashj.in"
public_subdomain = "console.okd.avinashj.in"
dns_master_subdomain = "okd.avinashj.in."
ssh_user = "" // overidden byscript