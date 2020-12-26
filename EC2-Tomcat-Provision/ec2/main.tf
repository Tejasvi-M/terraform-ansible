resource "aws_instance" "web-server"{
    ami = "${var.ami}"
    instance_type="${var.instance_type}"
    tags={
        Name="Java-WebServer"
    }
    key_name = "${var.key_name}"
    vpc_security_group_ids=[aws_security_group.webserver_sg.id]
    subnet_id="${var.subnet_id}"

    root_block_device{
        volume_size="${var.volume_size}"
        delete_on_termination=false
    }

    provisioner "local-exec" {
        command = "sleep 120; ansible-playbook  -i '${self.public_ip}', ./ansible/main.yml -e 'host=${self.public_ip} ansible_ssh_user=ec2-user' --private-key=PATH_TO_EC2_PRIVATE_KEY --ssh-extra-args='-o StrictHostKeyChecking=no'" 
}
}