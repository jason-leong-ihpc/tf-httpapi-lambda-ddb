output "invoke_url" {
  value = trimsuffix(aws_apigatewayv2_stage.default.invoke_url, "/")
}

resource "local_file" "invoke_url_file" {
  content  = trimsuffix(aws_apigatewayv2_stage.default.invoke_url, "/")
  # filename = "${path.module}/invoke_url.txt"
  filename = "./invoke_url.txt"  
}

output "lambda_function_name" {
  value = aws_lambda_function.http_api_lambda.function_name
}