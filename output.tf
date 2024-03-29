output "VPC" {
  value = "${aws_vpc.dev.id}"
}
output "Public_subnet" {
  value = "${aws_subnet.public1a.id}"
}

output "Private_subnet" {
  value = "${aws_subnet.private1a.id}"
}

output "pub_sec_group" {
  value = "${aws_security_group.public.id}"
}
output "private_sec_group" {
  value = "${aws_security_group.privateDB.id}"
}
output "key_name" {
  value = "${var.key_name}"
  }
