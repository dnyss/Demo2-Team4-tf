variable "name" {
    type = string
    default = "app"
    }
variable "ami" { type = string }
variable "instance_type" {
    type = string
    default = "t3.micro"
}
variable "subnet_ids" { type = list(string) }
variable "security_group_ids" {
    type = list(string)
    default = []
}
variable "key_name" {
    type = string
    default = ""
}
variable "tags" {
    type = map(string)
    default = {}
}
