data "oci_redis_redis_cluster_nodes" "redis_redis_cluster_nodes_lookup" {
  for_each = var.redis_redis_cluster_nodes_lookup

  redis_cluster_id = each.value.redis_cluster_id
  display_name     = each.value.display_name

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

