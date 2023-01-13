variable "region" {
    type = string 
    default = "us-east-1"
}

variable "ami" {
    type = string
    default = "ami-0742b4e673072066f"
}

variable "type" {
    type = string
    default = "t2.micro"
}

variable "tags" {
    type = map
    default = {
        Name = "WebServer"
        Env =  "Dev"
    }
}

variable "bucketlist" {
    type = list(string)
    default = ["dino-10-bkt","dino-20-bkt","dino-30-bkt"]
}

variable "sshport" {
    type = number
    default = 22
}

variable "inputname" {
    type = string
    description = "Set the name of the vpc"
}

variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
}

variable "tcp" {
    type = string
    default = "TCP"
}

variable "httpsport" {
    type = number
    default = 443
}

variable "ssh" {
      type = string
      default = "SSH"
  }

