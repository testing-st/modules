# Remote state for the lz/folders stack.
# GCS bucket lives in project proven-yen-511213-p5 (bucket is not created by import).
terraform {
  backend "gcs" {
    bucket = "proven-yen-511213-p5"
    prefix = "lz/folders"
  }
}
