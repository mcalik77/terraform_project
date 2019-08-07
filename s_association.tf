resource "aws_route_table_association" "a" {
  subnet_id      = ["${aws_subnet.public1a.id}","${aws_subnet.public1b.id}","${aws_subnet.public1c.id}"]
  route_table_id = "${aws_route_table.r.id}"
}
