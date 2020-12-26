variable "region"{
    type="string"
    default="ap-south-1"
}

variable "ami"{
    type="string"
    default="ami-0a9d27a9f4f5c0efc"
}

variable "instance_type"{
    type="string"
    default="t2.micro"
}

variable "key_name"{
    type="string"
    default=""
}

variable "subnet_id"{
    type="string"
    default=""
}

variable "vpc_id"{
    type="string"
    default=""
}

variable "volume_size"{
    type=number
    default=10
}