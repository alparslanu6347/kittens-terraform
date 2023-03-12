output "instance_publicip" {        # Bu output kullaniyorsan """ count""" KULLANAMAZSIN HATA VERİYOR. Çünkü sadece 1 tane instance kullanıyorsun. 
  description = "EC2 Instance Public IP"
  value = aws_instance.arrow_kittens-ec2.public_ip  # value = aws_instance.arrow_kittens-ec2.*.public_ip  OLARAK YAZARSAN count  kullanabilirsin
}