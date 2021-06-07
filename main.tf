//module "bucket" {
//  source = "./modules/bucket"
//  location = "US"
//  bucketname = "auto-expiring-bucket-123654788"
//  lifecycleruleage = 3
//}
//
//module "sql" {
//  source = "./database"
//  region = "us-west1"
//  dbversion = "MYSQL_5_7"
//  tier= "db-f1-micro"
//}

module "cluster" {
  source = "./modules/cluster"
  name ="my-gke-cluster"
  location="us-west1"
  account_id   = "service-account-id"
  display_name = "Service Account"
  nodepoolname  = "my-node-pool"
  machine_type = "e2-medium"

}
module "IAM" {
  source = "./modules/IAM"
}
