# output "lb_ip" {
#   value = digitalocean_loadbalancer.wp_lb.ip
# }

# output "wp_vm_ip" {
#     value = digitalocean_droplet.vm_wp[*].ipv4_address
# }

# output "nfs_vm_ip" {
#     value = digitalocean_droplet.vm_nfs.ipv4_address
# }

# output "database_username" {
#   value     = digitalocean_database_user.wp_database_user.name
# }

# output "database_password" {
#   value     = digitalocean_database_user.wp_database_user.password
#   sensitive = true
# }