provider "aws" {
  region = "us-west-2"
}

module "notify_pagerduty" {
  source           = "../.."
  create_sns_topic = 1
  sns_topic_name   = "sns-topic-you-want-to-create"

  pagerduty_endpoint = "https://events.pagerduty.com/integration/INTEGRATION_KEY/enqueue"
}
