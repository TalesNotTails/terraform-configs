variable servers {
  description = "A map of servers with properties to create"
  type        = map(object({
    inst_ami       = string
    inst_type = string
    vol_size      = number
    vol_type  = string    
    vol_az    = string
  }))
}
