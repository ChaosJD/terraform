variable "region" {
  default = "eu-west-1"
}

variable "instanceType" {
  default = "t2.micro"
}

variable "amiCode" {
  default = "ami-08935252a36e25f85"
}

variable "iamInstanceProfile" {
  default = "EC2-Admin"
}

variable "securityGroups" {
  type = list(string)
  default = ["sg-0ee39c5d3a2388af1"] #Wichtig: Hier nur group ID setzen für    VPC ID
}

variable "subnetId" {
  type = string
  default = "subnet-04f751a4e41b566bc"
}

variable "keyName" {
  type = string
  default = "EC2 Instance"
}
