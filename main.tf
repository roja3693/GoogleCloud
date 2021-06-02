module "bucket" {
  source = "./modules/bucket"
  location = "US"
  bucketname = "auto-expiring-bucket-123654788"
  lifecycleruleage = 3
}

module "sql" {
  source = "./database"
  instancename="master-instance"
  region = "us-west1"
  dbversion = "MYSQL_5_7"
  tier= "db-f1-micro"

}
