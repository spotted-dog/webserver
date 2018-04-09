terragrunt = {
  remote_state {
    backend = "s3"
    config {
      bucket         = "sds.webserver-pipeline.us-west-2"
      key            = "${path_relative_to_include()}/terraform.tfstate"
      region         = "us-west-2"
      encrypt        = true
      dynamodb_table = "simple-webserver-pipeline-lock-table"
      profile        = "sds-terraform"
    }
  }
}
