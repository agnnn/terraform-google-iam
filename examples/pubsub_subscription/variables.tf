/**
 * Copyright 2018 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "credentials_file_path" {
  description = "Service account json auth path"
}

variable "group_email" {
  description = "Email for group to receive roles (ex. group@example.com)"
}

variable "sa_email" {
  description = "Email for Service Account to receive roles (Ex. default-sa@example-project-id.iam.gserviceaccount.com)"
}

variable "user_email" {
  description = "Email for group to receive roles (Ex. user@example.com)"
}

/******************************************
  pubsub_subscription_iam_binding variables
 *****************************************/
variable "pubsub_subscription_project" {
  description = "Project id of the pub/sub subscription"
}

variable "pubsub_subscription_one" {
  description = "First pubsub subscription name to add the IAM policies/bindings"
}

variable "pubsub_subscription_two" {
  description = "Second pubsub subscription name to add the IAM policies/bindings"
}