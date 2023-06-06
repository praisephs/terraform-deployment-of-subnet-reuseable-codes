subnet-names = [
  { cidr = "10.0.0.0/24", name = "web-subnet" },
  { cidr = "10.0.1.0/24", name = "api-subnet" },
  { cidr = "10.0.2.0/24", name = "db-subnet" },
]

resource_group_name = "cohort3-uyi-rg-demo"
virtual_network_name = "my-vnet-demo"

address_space = ["10.0.0.0/16"]