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

/*
   name:- (Optional) Creates a unique bucket name beginning with the specified prefix. Conflicts with bucket.
   acl:- (Optional) The canned ACL to apply. Defaults to private. Conflicts with grant. private, public-read, public-read-write, aws-exec-read, authenticated-read, and log-delivery-write
   versioning:- (Optional) A state of versioning.True or False
   lifecycle_status:- (Required) Specifies lifecycle rule status
   transition_days:- (Optional) Specifies object transition period
   transition_days:- (Optional) Specifies object transition storage
   expiration_days:- (Optional) Specifies a period in the object's expire
   sse_alogorithm:- (Required) The server-side encryption algorithm to use. Valid values are AES256 and aws:kms
*/
