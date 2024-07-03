resource "aws_cloudwatch_metric_alarm" "alb_4xx_errors" {
    alarm_name = "alb-4xx-errors"
    comparison_operator = "GreaterThanOrEqualToThreshold"
    evaluation_periods = "1"
    metric_name = "HTTPCode_ELB_4XX_Count"
    namespace = "AWS/ApplicationELB"
    period = "60"
    statistic = "SampleCount"
    threshold = "100"
    alarm_description = "This metric checks for 4xx errors from ALB"
    alarm_actions = [] // specify actions like SNS topic ARN
    dimensions = {
        LoadBalancer = aws_lb.my_alb.arn
    }
}

resource "aws_cloudwatch_metric_alarm" "alb_5xx_errors" {
    alarm_name          = "alb-5xx-errors"
    comparison_operator = "GreaterThanOrEqualToThreshold"
    evaluation_periods  = "1"
    metric_name         = "HTTPCode_ELB_5XX_Count"
    namespace           = "AWS/ApplicationELB"
    period              = "60"
    statistic           = "SampleCount"
    threshold           = "100"
    alarm_description   = "This metric checks for 5xx errors from ALB"
    alarm_actions       = [] // specify actions like SNS topic ARN
    dimensions = {    
        LoadBalancer = aws_lb.my_alb.arn
    }
}

# Alarm for high CPU utilization
resource "aws_cloudwatch_metric_alarm" "high_cpu_utilization" {
    alarm_name          = "high-cpu-utilization"
    comparison_operator = "GreaterThanOrEqualToThreshold"
    evaluation_periods  = "1"
    metric_name         = "CPUUtilization"
    namespace           = "AWS/ECS"
    period              = "60"
    statistic           = "Average"
    threshold           = "80"
    alarm_description   = "This metric checks if CPU utilization is more than 80%"
    alarm_actions       = [] // specify actions like SNS topic ARN
    dimensions = {    
        ClusterName = aws_ecs_cluster.my_cluster.name    
        ServiceName = aws_ecs_service.my_service.name
    }
}


# Alarm for high memory utilization
resource "aws_cloudwatch_metric_alarm" "high_memory_utilization" {
    alarm_name          = "high-memory-utilization"
    comparison_operator = "GreaterThanOrEqualToThreshold"
    evaluation_periods  = "1"
    metric_name         = "MemoryUtilization"
    namespace           = "AWS/ECS"
    period              = "60"
    statistic           = "Average"
    threshold           = "80"
    alarm_description   = "This metric checks if memory utilization is more than 80%"
    alarm_actions       = [] // specify actions like SNS topic ARN
    dimensions = {    
        ClusterName = aws_ecs_cluster.my_cluster.name    
        ServiceName = aws_ecs_service.my_service.name
    }
}
