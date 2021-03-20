/**
 * Copyright 2021 Taito United
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

variable "dns_zones" {
  type = list(object({
    dnsName = string
    recordSets = list(object({
      dnsName = string
      type = string
      value = string
      ttl = optional(number)
      port = optional(number)
      priority = optional(number)
      weight = optional(number)
      flags = optional(number)
      tag = optional(string)
    }))
  }))
  description = "Resources as JSON (see README.md). You can read values from a YAML file with yamldecode()."
}
