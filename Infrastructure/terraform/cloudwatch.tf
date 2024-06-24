resource "aws_cloudwatch_log_group" "my_log_group" {
  name = "/ecs/my-container"
}