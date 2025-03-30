
resource "aws_sqs_queue" "this" {
    name = "devops-na-nuvem-queue"
    delay_seconds = 90
    max_message_size = 1024
    message_retention_seconds = 86400
    receive_wait_time_seconds = 10
}


