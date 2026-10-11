output "branch_protections_id" {
  description = "Map of id values across all branch_protections, keyed the same as var.branch_protections"
  value       = { for k, v in github_branch_protection.branch_protections : k => v.id if v.id != null && length(v.id) > 0 }
}
output "branch_protections_allows_deletions" {
  description = "Map of allows_deletions values across all branch_protections, keyed the same as var.branch_protections"
  value       = { for k, v in github_branch_protection.branch_protections : k => v.allows_deletions if v.allows_deletions != null }
}
output "branch_protections_allows_force_pushes" {
  description = "Map of allows_force_pushes values across all branch_protections, keyed the same as var.branch_protections"
  value       = { for k, v in github_branch_protection.branch_protections : k => v.allows_force_pushes if v.allows_force_pushes != null }
}
output "branch_protections_enforce_admins" {
  description = "Map of enforce_admins values across all branch_protections, keyed the same as var.branch_protections"
  value       = { for k, v in github_branch_protection.branch_protections : k => v.enforce_admins if v.enforce_admins != null }
}
output "branch_protections_force_push_bypassers" {
  description = "Map of force_push_bypassers values across all branch_protections, keyed the same as var.branch_protections"
  value       = { for k, v in github_branch_protection.branch_protections : k => v.force_push_bypassers if v.force_push_bypassers != null && length(v.force_push_bypassers) > 0 }
}
output "branch_protections_lock_branch" {
  description = "Map of lock_branch values across all branch_protections, keyed the same as var.branch_protections"
  value       = { for k, v in github_branch_protection.branch_protections : k => v.lock_branch if v.lock_branch != null }
}
output "branch_protections_pattern" {
  description = "Map of pattern values across all branch_protections, keyed the same as var.branch_protections"
  value       = { for k, v in github_branch_protection.branch_protections : k => v.pattern if v.pattern != null && length(v.pattern) > 0 }
}
output "branch_protections_repository_id" {
  description = "Map of repository_id values across all branch_protections, keyed the same as var.branch_protections"
  value       = { for k, v in github_branch_protection.branch_protections : k => v.repository_id if v.repository_id != null && length(v.repository_id) > 0 }
}
output "branch_protections_require_conversation_resolution" {
  description = "Map of require_conversation_resolution values across all branch_protections, keyed the same as var.branch_protections"
  value       = { for k, v in github_branch_protection.branch_protections : k => v.require_conversation_resolution if v.require_conversation_resolution != null }
}
output "branch_protections_require_signed_commits" {
  description = "Map of require_signed_commits values across all branch_protections, keyed the same as var.branch_protections"
  value       = { for k, v in github_branch_protection.branch_protections : k => v.require_signed_commits if v.require_signed_commits != null }
}
output "branch_protections_required_linear_history" {
  description = "Map of required_linear_history values across all branch_protections, keyed the same as var.branch_protections"
  value       = { for k, v in github_branch_protection.branch_protections : k => v.required_linear_history if v.required_linear_history != null }
}
output "branch_protections_required_pull_request_reviews" {
  description = "Map of required_pull_request_reviews values across all branch_protections, keyed the same as var.branch_protections"
  value       = { for k, v in github_branch_protection.branch_protections : k => v.required_pull_request_reviews if v.required_pull_request_reviews != null && length(v.required_pull_request_reviews) > 0 }
}
output "branch_protections_required_status_checks" {
  description = "Map of required_status_checks values across all branch_protections, keyed the same as var.branch_protections"
  value       = { for k, v in github_branch_protection.branch_protections : k => v.required_status_checks if v.required_status_checks != null && length(v.required_status_checks) > 0 }
}
output "branch_protections_restrict_pushes" {
  description = "Map of restrict_pushes values across all branch_protections, keyed the same as var.branch_protections"
  value       = { for k, v in github_branch_protection.branch_protections : k => v.restrict_pushes if v.restrict_pushes != null && length(v.restrict_pushes) > 0 }
}

