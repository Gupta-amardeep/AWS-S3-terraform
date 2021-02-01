resource "random_string" "bucket" {
  length  = 4
  special = false
  upper   = false
}

resource "aws_s3_bucket" "bucket" {
  for_each = var.buckets

  bucket = "berlin-weather-${each.value.name}-${random_string.bucket.result}"
  acl    = each.value.acl

  versioning {
    enabled = each.value.versioning
  }

  lifecycle_rule {
  
    enabled = each.value.lifecycle_status // Required. Specifies lifecycle rule status

    transition { 

      days          = each.value.transition_days
      storage_class = each.value.transition_storage
    }


    expiration { 
      days = each.value.expiration_days
    }
  }


  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm     = each.value.sse_algorithm
      }
    }
  }

}
