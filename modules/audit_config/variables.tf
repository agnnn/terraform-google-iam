/**
 * Copyright 2019 Google LLC
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

variable "audit_log_config" {
  description = "List of objects to be added to audit log config"
  type        = list(object( { service: string, list( object({ log_type: string, exempted_members: list(string) })) } ))
}

variable "project" {
  description = "Project to add the IAM policies/bindings"
  type        = string
}
