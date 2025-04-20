variable "origin_id" {
  description = "S3 Bucket ID"
  type        = string
}

variable "bucket_domain_name" {
  description = "S3 Bucket Domain Name"
  type        = string
}

variable "cdn_price_class" {
  type        = string
  default     = "PriceClass_200"
  description = "CDN Price Class"
}

variable "cdn_tags" {
  type        = map(string)
  default     = {}
  description = "Tags to be applied to the CDN"
}
