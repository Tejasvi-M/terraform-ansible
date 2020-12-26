resource "aws_security_group" "webserver_sg"{
    name="java-webserver-sg"
    description= "allow traffic from/to neccessary hosts"
    vpc_id = "${var.vpc_id}"
    ingress{
        description="SSH protocol allowed to all devices"
        from_port=22
        to_port=22
        protocol="tcp"
        cidr_blocks=["0.0.0.0/0"]
    }
    ingress{
        description="HTTP protocol allowed to all devices"
        from_port=80
        to_port=80
        protocol="tcp"
        cidr_blocks=["0.0.0.0/0"]
    }
    egress{
        from_port=0
        to_port=0
        protocol=-1
        cidr_blocks=["0.0.0.0/0"]
    }
    tags={
        Name="jav-web-server-sg"
    }
}