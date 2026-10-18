# --- NETWORKING OUTPUTS ---
output "vpc_id" {
  description = "The ID of the main telemetry VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "The ID of the public telemetry subnet"
  value       = aws_subnet.public_1.id
}

# --- STORAGE OUTPUTS ---
output "s3_bucket_name" {
  description = "The name of the telemetry data lake S3 bucket"
  value       = aws_s3_bucket.telemetry_bucket.id
}

output "s3_bucket_arn" {
  description = "The ARN of the telemetry data lake S3 bucket"
  value       = aws_s3_bucket.telemetry_bucket.arn
}

# --- COMPUTE OUTPUTS ---
output "ecs_cluster_name" {
  description = "The name of the ECS Fargate telemetry processing cluster"
  value       = aws_ecs_cluster.telemetry_cluster.name
}

output "ecs_cluster_id" {
  description = "The ARN/ID of the ECS Fargate telemetry processing cluster"
  value       = aws_ecs_cluster.telemetry_cluster.id
}
