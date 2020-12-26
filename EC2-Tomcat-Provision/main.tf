module "web_server"{
    source= "./ec2"

    ami= "${var.ami}"
    instance_type="${var.instance_type}"
    key_name="${var.key_name}"
    subnet_id="${var.subnet_id}"
    vpc_id="${var.vpc_id}"
    volume_size="${var.volume_size}"
}

