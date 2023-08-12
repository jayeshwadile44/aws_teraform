#create s3
resource "aws_s3_bucket" "mybucket" {
    bucket = "rinkiyakepapahasdele050"
    acl = "private"
    versioning {
        enabled =true
    }
    server_side_encryption_configuration {
        rule {
            apply_server_side_encryption_by_default {
               sse_algorithm = "AES256"
        }
    }
  }

}

#create dynamoDB for avoiding corruption of file 

resource "aws_dynamodb_table" "statelock" {
    name = "state-lock"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"

    attribute {
        name = "LockID"
        type = "S"
    }
}