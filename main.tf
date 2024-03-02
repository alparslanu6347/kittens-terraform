variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "arrow_kittens-instance"
}

variable "instance_type" {
   description = "Instance type t2.micro"
   type        = string
   default     = "t2.micro"
} 

variable "instance_keypair" {
  description = "AWS EC2 Key Pair that need to be associated with EC2 Instance"
  type        = string
  default     = "arrow"
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "enable_public_ip" {
  description = "Enable public IP address"
  type        = bool
  default     = true
}






output "instance_publicip" {        # Bu output kullaniyorsan """ count""" KULLANAMAZSIN HATA VERİYOR. Çünkü sadece 1 tane instance kullanıyorsun. 
  description = "EC2 Instance Public IP"
  value = aws_instance.arrow_kittens-ec2.public_ip  # value = aws_instance.arrow_kittens-ec2.*.public_ip  OLARAK YAZARSAN count  kullanabilirsin
}

output "instance_publicdns" {     # Bu output kullaniyorsan """ count""" KULLANAMAZSIN HATA VERİYOR. Çünkü sadece 1 tane instance kullanıyorsun.
  description = "EC2 Instance Public DNS"
  value = aws_instance.arrow_kittens-ec2.public_dns   # value = aws_instance.arrow_kittens-ec2.*.public_dns  OLARAK YAZARSAN count  kullanabilirsin
}