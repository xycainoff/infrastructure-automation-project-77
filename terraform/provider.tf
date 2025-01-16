terraform {
    backend "s3" {
        key = "hexlet_project/terraform.tfstate"
    }
}

provider "aws" {
    region = "eu-central-1"
}
provider "cloudinit" {}
