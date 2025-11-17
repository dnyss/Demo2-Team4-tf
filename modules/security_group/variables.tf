variable "name" { type = string }
variable "description" {
    type = string
    default = "Security group"
}
variable "vpc_id" { type = string }
variable "ingress_rules" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
    description = optional(string)
  }))
  default = [
    { from_port = 22, to_port = 22, protocol = "tcp", cidr_blocks = ["0.0.0.0/0"], description = "ssh" }
  ]
}
variable "tags" {
  type    = map(string)
  default = {}
}
