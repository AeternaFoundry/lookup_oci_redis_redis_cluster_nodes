variable "redis_redis_cluster_nodes_lookup" {
  description = <<EOT
Map of redis_redis_cluster_nodes_lookup, attributes below
Required:
    - redis_cluster_id
Optional:
    - display_name
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    redis_cluster_id = string
    display_name     = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

