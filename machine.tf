provider "aws" {
  profile = "default"
  region     = var.region #wird nicht von Profil übernommen.
}

resource "aws_instance" "amazonLinux"{
  ami = var.amiCode
  instance_type = var.instanceType
  iam_instance_profile = var.iamInstanceProfile
  security_groups = var.securityGroups
  subnet_id = var.subnetId
  key_name = var.keyName
  tags = {
    Name = "MigrationInstanceJD"
  }
}
