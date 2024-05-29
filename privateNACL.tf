//create a private NACL
resource "aws_network_acl" "terrajens_priv_nacl" {
    vpc_id = aws_vpc.test_vpc.id

 egress {
    protocol   = "tcp"
    rule_no = 200
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 22
    to_port    = 22
  }

  ingress {
    protocol   = "tcp"
    rule_no = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 22
    to_port    = 22
  }

  tags = {
    Name = "jerrajens_priv_nacl"
  }
}   
  
/*inbound rule: from within VPC ONLY
outbound rule: to internet using all ports
*/

