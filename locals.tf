locals {
  bytes = join(var.separator, random_id.mac.*.hex)
}
