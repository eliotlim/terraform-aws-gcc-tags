variable "Agency-Code" {
  description = "The agency initials"
  type        = string
}

variable "Project-Code" {
  description = "The project code"
  type        = string
}

variable "Environment" {
  description = "Environment identifier (e.g. tXX, dev, stg, uat, prd)"
  type        = string
}

variable "Zone" {
  description = "Zone identifier (e.g. iz, ez, mz ,dz)"
  type        = string
  default     = null
}

variable "Tier" {
  description = "Tier identifier (e.g. web, gut, app, it, db, svc, na)"
  type        = string
  default     = null
}
