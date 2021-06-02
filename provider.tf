provider "google" {
  credentials = file("gcp-cred.json")
  project = "able-river-315213"
  region = "us-west1"
  zone = "us-west1-c"
}
