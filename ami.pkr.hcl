variable "access_key" {
  type    = string
  default = "Enter your access key"
}

variable "secret_key" {
  type      = string
  default   = "Enter your secret key"
  sensitive = true
}

source "amazon-ebs" "example" {

  access_key    = "${var.access_key}"
  secret_key    = "${var.secret_key}"
  region        =  "ap-south-1"
  source_ami    =  "ami-0108d6a82a783b352"
  instance_type =  "t2.micro"
  ssh_username  =  "ec2-user"
  ami_name      =  "packer_AWS_example_{{timestamp}}"

  }

build {  
  sources = [    
    "source.amazon-ebs.example"  
    ]

    provisioner "shell" {  
      script       = "git.sh"  
      }
    
    }
