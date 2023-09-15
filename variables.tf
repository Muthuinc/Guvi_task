# Region for the resources
variable "region"{
    default = "ap-south-1"
}

variable "securitygroup" {
    default = ["sg-0f33201aaee3c26e2"]
}
variable "instance_ami" {
    default = "ami-0f5ee92e2d63afc18"
}
variable "instance_type" {
    default = "t2.micro"
}
variable "key_name"{
    default = "Avam"
}
variable "instance_tag" {
    default = "ubuntu"
}
