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
    //id      = "log" //unique identifier for rule
    enabled = each.value.lifecycle_status // Required. Specifies lifecycle rule status

    //prefix = "log/" //Optional. Object key prefix identifying one or more object to which rule applies

    transition { 

      days          = each.value.transition_days
      storage_class = each.value.transition_storage
    }

    # transition { // wants to add more transition
    #   days          = var.transition_days.transition2
    #   storage_class = var.transition_storage.storage2
    # }

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