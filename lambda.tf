locals {
  lambda_zip_location = "outputs/hello-world.zip"
}

data "archive_file" "hello-world" {
  type        = "zip"
  source_file = "hello-world.js"
  output_path = local.lambda_zip_location
}

resource "aws_lambda_function" "lambda" {
  filename      = local.lambda_zip_location
  function_name = "hello-world"
  role          = aws_iam_role.lambda_role.arn
  handler       = "hello-world.handler"

  source_code_hash = filebase64sha256(local.lambda_zip_location)

  runtime = "nodejs12.x"
}

