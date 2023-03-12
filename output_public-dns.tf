output "instance_publicdns" {     # Bu output kullaniyorsan """ count""" KULLANAMAZSIN HATA VERİYOR. Çünkü sadece 1 tane instance kullanıyorsun.
  description = "EC2 Instance Public DNS"
  value = aws_instance.arrow_kittens-ec2.public_dns   # value = aws_instance.arrow_kittens-ec2.*.public_dns  OLARAK YAZARSAN count  kullanabilirsin
}