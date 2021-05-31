module "bucket" {
  source = "./modules/bucket"
  location = "US"
  bucketname = "auto-expiring-bucket-123654788"
  lifecycleruleage = 3
}