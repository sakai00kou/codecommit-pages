#-----------------------------------------------------------------------------------------------------------------------
# 静的WebサイトホスティングURLの出力
#-----------------------------------------------------------------------------------------------------------------------
output "website_endpoint" {
  value = "${local.codecommit_pages_protocol}://${aws_s3_bucket_website_configuration.bucket.website_endpoint}"
}
