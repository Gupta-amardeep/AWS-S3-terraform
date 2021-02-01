output "s3_bucket_id" {
  value = values(aws_s3_bucket.bucket)[*].id
}

output "s3_bucket_domain_name" {
  value = values(aws_s3_bucket.bucket)[*].bucket_domain_name
}

output "s3_bucket_region" {
  value = values(aws_s3_bucket.bucket)[*].region
}
