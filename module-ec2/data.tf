data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "RHEL-9-DevOps-practice"
  owners      = ["973714476881"]    
}