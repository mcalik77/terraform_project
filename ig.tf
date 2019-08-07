resource "aws_internet_gateway" "ig" {
  vpc_id = "${aws_vpc.dev.id}"

  tags = {
      Name = "${var.Name}"
      Env = "${var.Env}"
      Created_by = "${var.Created_by}"
      Dept = "${var.Dept}"
  }
}