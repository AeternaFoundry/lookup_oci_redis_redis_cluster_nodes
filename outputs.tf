output "redis_redis_cluster_nodes_lookup_id" {
  description = "Map of id values across all redis_redis_cluster_nodes_lookup, keyed the same as var.redis_redis_cluster_nodes_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_redis_redis_cluster_nodes.redis_redis_cluster_nodes_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "redis_redis_cluster_nodes_lookup_display_name" {
  description = "Map of display_name values across all redis_redis_cluster_nodes_lookup, keyed the same as var.redis_redis_cluster_nodes_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.oci_redis_redis_cluster_nodes.redis_redis_cluster_nodes_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "redis_redis_cluster_nodes_lookup_filter" {
  description = "Map of filter values across all redis_redis_cluster_nodes_lookup, keyed the same as var.redis_redis_cluster_nodes_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_redis_redis_cluster_nodes.redis_redis_cluster_nodes_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "redis_redis_cluster_nodes_lookup_redis_cluster_id" {
  description = "Map of redis_cluster_id values across all redis_redis_cluster_nodes_lookup, keyed the same as var.redis_redis_cluster_nodes_lookup except keys with no redis_cluster_id are omitted"
  value       = { for k, v in data.oci_redis_redis_cluster_nodes.redis_redis_cluster_nodes_lookup : k => v.redis_cluster_id if v.redis_cluster_id != null && length(v.redis_cluster_id) > 0 }
}
output "redis_redis_cluster_nodes_lookup_redis_node_collection" {
  description = "Map of redis_node_collection values across all redis_redis_cluster_nodes_lookup, keyed the same as var.redis_redis_cluster_nodes_lookup except keys with no redis_node_collection are omitted"
  value       = { for k, v in data.oci_redis_redis_cluster_nodes.redis_redis_cluster_nodes_lookup : k => v.redis_node_collection if v.redis_node_collection != null && length(v.redis_node_collection) > 0 }
}

