

resource "aws_instance" "jumphostn" {
  count         = "${var.instance_count}"
  ami                         = "ami-0d8aee0fe327c6fb2" # eu-west-2
  instance_type               = "t2.medium"
  key_name                    = "jumphost-key"
  associate_public_ip_address = true
  security_groups             = [ aws_security_group.jumphostsg.name ]
  #subnet_id                   = aws_subnet.main.id
  get_password_data           = true
  #private_ip                  = "10.0.0.40"


 
  tags = {
    Name  = "JumpHost-${count.index + 1}"
  }
}


variable "instance_count" {
  default = "16"
}

output "password0" {
  value = "${rsadecrypt(aws_instance.jumphostn[0].password_data,file("jumphosts"))}"
}  

output "password1" {
  value = "${rsadecrypt(aws_instance.jumphostn[1].password_data,file("jumphosts"))}"
}  

output "password2" {
  value = "${rsadecrypt(aws_instance.jumphostn[2].password_data,file("jumphosts"))}"
}  

output "password3" {
  value = "${rsadecrypt(aws_instance.jumphostn[3].password_data,file("jumphosts"))}"
}  

output "password4" {
  value = "${rsadecrypt(aws_instance.jumphostn[4].password_data,file("jumphosts"))}"
}  

output "password5" {
  value = "${rsadecrypt(aws_instance.jumphostn[5].password_data,file("jumphosts"))}"
}  

output "password6" {
  value = "${rsadecrypt(aws_instance.jumphostn[6].password_data,file("jumphosts"))}"
}  

output "password7" {
  value = "${rsadecrypt(aws_instance.jumphostn[7].password_data,file("jumphosts"))}"
}  

output "password8" {
  value = "${rsadecrypt(aws_instance.jumphostn[8].password_data,file("jumphosts"))}"
}  

output "password9" {
  value = "${rsadecrypt(aws_instance.jumphostn[9].password_data,file("jumphosts"))}"
}  

output "password10" {
  value = "${rsadecrypt(aws_instance.jumphostn[10].password_data,file("jumphosts"))}"
}  

output "password11" {
  value = "${rsadecrypt(aws_instance.jumphostn[11].password_data,file("jumphosts"))}"
}  

output "password12" {
  value = "${rsadecrypt(aws_instance.jumphostn[12].password_data,file("jumphosts"))}"
}  

output "password13" {
  value = "${rsadecrypt(aws_instance.jumphostn[13].password_data,file("jumphosts"))}"
}  

output "password14" {
  value = "${rsadecrypt(aws_instance.jumphostn[14].password_data,file("jumphosts"))}"
}  

output "password15" {
  value = "${rsadecrypt(aws_instance.jumphostn[15].password_data,file("jumphosts"))}"
}  
