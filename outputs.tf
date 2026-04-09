output "load_balancer_ip" {
  description = "Public IP of Load Balancer"
  value       = azurerm_public_ip.example.ip_address
}