terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.19.0"
    }
  }

  backend "s3" {
  bucket = "remote-state01-86s"
  key    = "workspace-state-demo"
  region = "us-east-1"
  use_lockfile = true
  encrypt = true
}
}


 




provider "aws" {
  # Configuration options
  region = "us-east-1"
}



#terrraform provider lo emaina changes chesthe manam confirm ga reconfigure kottalsindhe.. 