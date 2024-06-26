module "test_dynamodb"{
  source           = "git@github.com:MRKR-TERRAFORM-MODULES/common-dynamo-db.git?ref=v1.0"
  table_name       = "test_dynamo_db"
  billing_mode     = "PROVISIONED"
  read_capacity    = 5
  write_capacity   = 5
  hash_key         = "HashKey"
  range_key        = "RangeKey"
  attributes       = [{"name" : "HashKey", "type" : "S"}, {"name" : "RangeKey", "type" : "S"}]
}