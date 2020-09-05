variable "ldap_user" {
  description = "LDAP user to use for connections"
  type        = string
}

variable "org_name" {
  description = "Cloudfoundry ORG name to use for reverse proxy"
  type        = string
}

variable "app_domain" {
  description = "The regular app domain to use"
  type        = string
  default     = "us-east.philips-healthsuite.com"
}

variable "thanos_image" {
  description = "Image to use for thanos"
  default     = "quay.io/thanos/thanos"
  type        = string
}

variable "prometheus_image" {
  description = "Image to use for centrifugo app"
  default     = "bitnami/prometheus:latest"
  type        = string
}