variable "branch_protections" {
  description = <<EOT
Map of branch_protections, attributes below
Required:
    - pattern
    - repository_id
Optional:
    - allows_deletions
    - allows_force_pushes
    - enforce_admins
    - force_push_bypassers
    - lock_branch
    - require_conversation_resolution
    - require_signed_commits
    - required_linear_history
    - required_pull_request_reviews (block):
        - dismiss_stale_reviews (optional)
        - dismissal_restrictions (optional)
        - pull_request_bypassers (optional)
        - require_code_owner_reviews (optional)
        - require_last_push_approval (optional)
        - required_approving_review_count (optional)
        - restrict_dismissals (optional)
    - required_status_checks (block):
        - contexts (optional)
        - strict (optional)
    - restrict_pushes (block):
        - blocks_creations (optional)
        - push_allowances (optional)
EOT

  type = map(object({
    pattern                         = string
    repository_id                   = string
    allows_deletions                = optional(bool)
    allows_force_pushes             = optional(bool)
    enforce_admins                  = optional(bool)
    force_push_bypassers            = optional(set(string))
    lock_branch                     = optional(bool)
    require_conversation_resolution = optional(bool)
    require_signed_commits          = optional(bool)
    required_linear_history         = optional(bool)
    required_pull_request_reviews = optional(list(object({
      dismiss_stale_reviews           = optional(bool)
      dismissal_restrictions          = optional(set(string))
      pull_request_bypassers          = optional(set(string))
      require_code_owner_reviews      = optional(bool)
      require_last_push_approval      = optional(bool)
      required_approving_review_count = optional(number)
      restrict_dismissals             = optional(bool)
    })))
    required_status_checks = optional(list(object({
      contexts = optional(set(string))
      strict   = optional(bool)
    })))
    restrict_pushes = optional(list(object({
      blocks_creations = optional(bool)
      push_allowances  = optional(set(string))
    })))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

