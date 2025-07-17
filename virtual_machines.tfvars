
# Virtual machines
virtual_machines = {

  PTSG-5STARwb01 = {
    virtual_machine_settings = {
      windows = {
        name                            = "PTSG-5STARwb01"
        size                            = "Standard_B2ms"
        admin_username                  = "manager"
        disable_password_authentication = true
        zone                           = "1"
        custom_image_id                 = "/subscriptions/8a71ac81-04ed-4e9b-adea-c852951f4d69/resourceGroups/PTAZSG-CORE-VM-IMAGES-RG/providers/Microsoft.Compute/galleries/PTAZSG_3COC_VM_Images/images/PTAZSG-3COC-WS2022-V2"

        # Value of the nic keys to attach the VM. The first one in the list is the default nic
        network_interface_keys = ["PTSG-5STARwb01-nic01"]

        os_disk = {
          name                 = "PTSG-5STARwb01_OsDisk"
          caching              = "ReadWrite"
          storage_account_type = "Standard_LRS"
          disk_size_gb         = "128"
          lz_key               = "cmk"
          zones                = [1]
        }
      }
    }

    # Data disk block
    data_disks = {
        vm_data_disk01 = {
        name                 = "PTSG-5STARwb01_DataDisk_1"
        storage_account_type = "Standard_LRS"
        create_option        = "Empty" # Only Empty is supported. More community contributions required to cover
        disk_size_gb         = "128"
        lun                  = 1
        lz_key               = "cmk"
        zones                = [1]
      }
    }

    # Define the number of networking cards to attach the virtual machine
    networking_interfaces = {
      PTSG-5STARwb01-nic01 = {
        # Value of the keys from networking.tfvars
        lz_key                  = "networking_spoke_virtual_machines"
        vnet_key                = "vm_region1"
        subnet_key              = "PTAZSG-5SUBNET-WEB"
        name                    = "PTSG-5STARwb01-nic01"
        enable_ip_forwarding    = false
        internal_dns_name_label = "PTSG-5STARwb01-nic01"
        # public_ip_address_key   = "sql_server_vm_pip"

        # configuration below need to be added if the nic is using dynamic IP
        private_ip_address_allocation = "Static"
        private_ip_address  = ""
        private_ip_address_version = "IPv4"
      }
    }

    resource_group_key                   = "PTAZSG-IAC-DEV-STARS-RG"
    provision_vm_agent                   = true
    boot_diagnostics_storage_account_key = "bootdiag_region1"
    os_type = "windows"

    # the auto-generated ssh key in keyvault secret. Secret name being {VM name}-ssh-public and {VM name}-ssh-private
    keyvault_key = "PTAZSG-5STARS-KV01"
  }
 
  PTSG-5STARap01 = {
    virtual_machine_settings = {
      windows = {
        name                            = "PTSG-5STARap01"
        size                            = "Standard_B2ms"
        admin_username                  = "manager"
        disable_password_authentication = true
        zone                           = "1"
        custom_image_id                 = "/subscriptions/8a71ac81-04ed-4e9b-adea-c852951f4d69/resourceGroups/PTAZSG-CORE-VM-IMAGES-RG/providers/Microsoft.Compute/galleries/PTAZSG_3COC_VM_Images/images/PTAZSG-3COC-WS2022-V2"

        # Value of the nic keys to attach the VM. The first one in the list is the default nic
        network_interface_keys = ["PTSG-5STARap01-nic01"]

        os_disk = {
          name                 = "PTSG-5STARap01_OsDisk"
          caching              = "ReadWrite"
          storage_account_type = "Standard_LRS"
          disk_size_gb         = "128"
          lz_key               = "cmk"
          zones                = [1]
        }
      }
    }

    # Data disk block
    data_disks = {
        vm_data_disk01 = {
        name                 = "PTSG-5STARap01_DataDisk_1"
        storage_account_type = "Standard_LRS"
        create_option        = "Empty" # Only Empty is supported. More community contributions required to cover
        disk_size_gb         = "128"
        lun                  = 1
        lz_key               = "cmk"
        zones                = [1]
      }
    }

    # Define the number of networking cards to attach the virtual machine
    networking_interfaces = {
      PTSG-5STARap01-nic01 = {
        # Value of the keys from networking.tfvars
        lz_key                  = "networking_spoke_virtual_machines"
        vnet_key                = "vm_region1"
        subnet_key              = "PTAZSG-5SUBNET-WEB"
        name                    = "PTSG-5STARap01-nic01"
        enable_ip_forwarding    = false
        internal_dns_name_label = "PTSG-5STARap01-nic01"
        # public_ip_address_key   = "sql_server_vm_pip"

        # configuration below need to be added if the nic is using dynamic IP
        private_ip_address_allocation = "Static"
        private_ip_address  = ""
        private_ip_address_version = "IPv4"
      }
    }

    resource_group_key                   = "PTAZSG-IAC-DEV-STARS-RG"
    provision_vm_agent                   = true
    boot_diagnostics_storage_account_key = "bootdiag_region1"
    os_type = "windows"

    # the auto-generated ssh key in keyvault secret. Secret name being {VM name}-ssh-public and {VM name}-ssh-private
    keyvault_key = "PTAZSG-5STARS-KV01"
  }
    
  PTSG-5STARap02 = {
    virtual_machine_settings = {
      windows = {
        name                            = "PTSG-5STARap02"
        size                            = "Standard_B2ms"
        admin_username                  = "manager"
        disable_password_authentication = true
        zone                           = "1"
        custom_image_id                 = "/subscriptions/8a71ac81-04ed-4e9b-adea-c852951f4d69/resourceGroups/PTAZSG-CORE-VM-IMAGES-RG/providers/Microsoft.Compute/galleries/PTAZSG_3COC_VM_Images/images/PTAZSG-3COC-WS2022-V2"

        # Value of the nic keys to attach the VM. The first one in the list is the default nic
        network_interface_keys = ["PTSG-5STARap02-nic01"]

        os_disk = {
          name                 = "PTSG-5STARap02_OsDisk"
          caching              = "ReadWrite"
          storage_account_type = "Standard_LRS"
          disk_size_gb         = "128"
          lz_key               = "cmk"
          zones                = [1]
        }
      }
    }

    # Data disk block
    data_disks = {
        vm_data_disk01 = {
        name                 = "PTSG-5STARap02_DataDisk_1"
        storage_account_type = "Standard_LRS"
        create_option        = "Empty" # Only Empty is supported. More community contributions required to cover
        disk_size_gb         = "128"
        lun                  = 1
        lz_key               = "cmk"
        zones                = [1]
      }
    }

    # Define the number of networking cards to attach the virtual machine
    networking_interfaces = {
      PTSG-5STARap02-nic01 = {
        # Value of the keys from networking.tfvars
        lz_key                  = "networking_spoke_virtual_machines"
        vnet_key                = "vm_region1"
        subnet_key              = "PTAZSG-5SUBNET-WEB"
        name                    = "PTSG-5STARap02-nic01"
        enable_ip_forwarding    = false
        internal_dns_name_label = "PTSG-5STARap02-nic01"
        # public_ip_address_key   = "sql_server_vm_pip"

        # configuration below need to be added if the nic is using dynamic IP
        private_ip_address_allocation = "Static"
        private_ip_address  = ""
        private_ip_address_version = "IPv4"
      }
    }

    resource_group_key                   = "PTAZSG-IAC-DEV-STARS-RG"
    provision_vm_agent                   = true
    boot_diagnostics_storage_account_key = "bootdiag_region1"
    os_type = "windows"

    # the auto-generated ssh key in keyvault secret. Secret name being {VM name}-ssh-public and {VM name}-ssh-private
    keyvault_key = "PTAZSG-5STARS-KV01"
  }

  PTSG-5STARap03 = {
    virtual_machine_settings = {
      windows = {
        name                            = "PTSG-5STARap03"
        size                            = "Standard_B2ms"
        admin_username                  = "manager"
        disable_password_authentication = true
        zone                           = "1"
        custom_image_id                 = "/subscriptions/8a71ac81-04ed-4e9b-adea-c852951f4d69/resourceGroups/PTAZSG-CORE-VM-IMAGES-RG/providers/Microsoft.Compute/galleries/PTAZSG_3COC_VM_Images/images/PTAZSG-3COC-WS2022-V2"

        # Value of the nic keys to attach the VM. The first one in the list is the default nic
        network_interface_keys = ["PTSG-5STARap03-nic01"]

        os_disk = {
          name                 = "PTSG-5STARap03_OsDisk"
          caching              = "ReadWrite"
          storage_account_type = "Standard_LRS"
          disk_size_gb         = "128"
          lz_key               = "cmk"
          zones                = [1]
        }
      }
    }

    # Data disk block
    data_disks = {
        vm_data_disk01 = {
        name                 = "PTSG-5STARap03_DataDisk_1"
        storage_account_type = "Standard_LRS"
        create_option        = "Empty" # Only Empty is supported. More community contributions required to cover
        disk_size_gb         = "128"
        lun                  = 1
        lz_key               = "cmk"
        zones                = [1]
      }
    }

    # Define the number of networking cards to attach the virtual machine
    networking_interfaces = {
      PTSG-5STARap03-nic01 = {
        # Value of the keys from networking.tfvars
        lz_key                  = "networking_spoke_virtual_machines"
        vnet_key                = "vm_region1"
        subnet_key              = "PTAZSG-5SUBNET-WEB"
        name                    = "PTSG-5STARap03-nic01"
        enable_ip_forwarding    = false
        internal_dns_name_label = "PTSG-5STARap03-nic01"
        # public_ip_address_key   = "sql_server_vm_pip"

        # configuration below need to be added if the nic is using dynamic IP
        private_ip_address_allocation = "Static"
        private_ip_address  = ""
        private_ip_address_version = "IPv4"
      }
    }

    resource_group_key                   = "PTAZSG-IAC-DEV-STARS-RG"
    provision_vm_agent                   = true
    boot_diagnostics_storage_account_key = "bootdiag_region1"
    os_type = "windows"

    # the auto-generated ssh key in keyvault secret. Secret name being {VM name}-ssh-public and {VM name}-ssh-private
    keyvault_key = "PTAZSG-5STARS-KV01"
  }
}
