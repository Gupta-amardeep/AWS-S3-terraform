variable buckets {
   
    description = "Bucket properties"
    default = {
        "bucket1" = {
            "name" = "hourly"
            "acl" = "private"
            "versioning" = "true"
            "lifecycle_status" = "true"
            "transition_days" = 30
            "transition_storage" = "GLACIER"
            "expiration_days" = 90
            "sse_algorithm" = "aws:kms"
        }
    
        "bucket2" = {
            "name" = "weekly"
            "acl" = "public-read"
            "versioning" = "false"
            "lifecycle_status" = "true"
            "transition_days" = 60
            "transition_storage" = "STANDARD_IA"
            "expiration_days" = 120
            "sse_algorithm" = "AES256"
        }
    

        "bucket3" = {
            "name" = "monthly"
            "acl" = "private"
            "versioning" = "true"
            "lifecycle_status" = "true"
            "transition_days" = 45
            "transition_storage" = "GLACIER"
            "expiration_days" = 120
            "sse_algorithm" = "aws:kms"
        }
    }
}