locals {
  # If the Zone is unspecified, hide both the Zone and the Tier
  Zone = var.Zone != null ? var.Zone : ""
  Tier = var.Zone != null ? var.Tier : ""
  desc = "${var.Project-Code}-${var.Environment}${local.Zone}${local.Tier}"

  # Compile the output tag set
  tags = {
    Agency       = var.Agency
    Project-Code = var.Project-Code
    Environment  = var.Environment
    Zone         = var.Zone
    Tier         = var.Tier
  }
}
