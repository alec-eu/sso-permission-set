variable "name" {
  type        = string
  description = "(Required, Forces new resource) The name of the Permission Set."
}

variable "description" {
  type        = string
  description = "(Optional) The description of the Permission Set."
  default     = null
}

variable "instance_arn" {
  description = "(Required, Forces new resource) The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed."
  type        = string

}

variable "relay_state" {
  description = "(Optional) The relay state URL used to redirect users within the application during the federation authentication process."
  type        = string
  default     = ""
}

variable "session_duration" {
  description = "(Optional) The length of time that the application user sessions are valid in the ISO-8601 standard. Default: PT1H."
  type        = string
  default     = "PT1H"
}

variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = map(string)
  default     = {}
}

variable "managed_policy_arns" {
  type        = list(string)
  description = "(Optional) List of aws managed policy arns that will be attached to the permission set."
  default     = []
}

variable "inline_policy_jsons" {
  type        = list(string)
  description = "(Optional) A list of json formatted policy documents. (Use 'data \"aws_iam_policy_document\" \"policy\" {}' and pass in the json attribute in a list format."
  default     = []
}
