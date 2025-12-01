
resource "aws_lambda_function" "pipeline_notify" {
  function_name    = "pipeline-notify-${terraform.workspace}"
  handler          = "lambda.lambda_handler"
  runtime          = "python3.10"
  filename         = "${path.module}/lambda.zip"
  source_code_hash = filebase64sha256("${path.module}/lambda.zip")

  role = var.role_arn

  environment {
    variables = {
      DISCORD_WEBHOOK_URL = var.discord_webhook_url
    }
  }
}

resource "aws_lambda_permission" "github_actions" {
  statement_id  = "AllowGitHubActionsInvoke"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.pipeline_notify.function_name
  principal     = "*"
}