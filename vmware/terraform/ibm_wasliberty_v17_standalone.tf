# =================================================================
# Licensed Materials - Property of IBM
# 5737-E67
# @ Copyright IBM Corporation 2016, 2017 All Rights Reserved
# US Government Users Restricted Rights - Use, duplication or disclosure
# restricted by GSA ADP Schedule Contract with IBM Corp.
# =================================================================

# This is a terraform generated template generated from ibm_wasliberty_v17_standalone

##############################################################
# Keys - CAMC (public/private) & optional User Key (public)
##############################################################
variable "user_public_ssh_key" {
  type        = "string"
  description = "User defined public SSH key used to connect to the virtual machine, whose format is required to be the openSSH key format with optional comment"
  default     = "None"
}

variable "ibm_pm_public_ssh_key" {
  description = "Public CAMC SSH key value which is used to connect to a guest, used on VMWare only."
}

variable "ibm_pm_private_ssh_key" {
  description = "Private CAMC SSH key (base64 encoded) used to connect to the virtual guest."
}

variable "allow_unverified_ssl" {
  description = "Communication with vsphere server with self signed certificate"
  default     = "true"
}

##############################################################
# Define the vsphere provider
##############################################################
provider "vsphere" {
  allow_unverified_ssl = "${var.allow_unverified_ssl}"
}

resource "random_id" "stack_id" {
  byte_length = "16"
}

##############################################################
# Define pattern variables
##############################################################
##### unique stack name #####
variable "ibm_stack_name" {
  description = "A unique stack name."
}

#### Default OS Admin User Map ####

##### Environment variables #####
#Variable : ibm_im_repo
variable "ibm_im_repo" {
  type        = "string"
  description = "IBM Software  Installation Manager Repository URL (https://<hostname/IP>:<port>/IMRepo) "
}

#Variable : ibm_im_repo_password
variable "ibm_im_repo_password" {
  type        = "string"
  description = "IBM Software  Installation Manager Repository Password"
}

#Variable : ibm_im_repo_user
variable "ibm_im_repo_user" {
  type        = "string"
  description = "IBM Software  Installation Manager Repository username"
  default     = "repouser"
}

#Variable : ibm_pm_access_token
variable "ibm_pm_access_token" {
  type        = "string"
  description = "IBM Pattern Manager Access Token"
}

#Variable : ibm_pm_service
variable "ibm_pm_service" {
  type        = "string"
  description = "IBM Pattern Manager Service"
}

#Variable : ibm_sw_repo
variable "ibm_sw_repo" {
  type        = "string"
  description = "IBM Software Repo Root (https://<hostname>:<port>)"
}

#Variable : ibm_sw_repo_password
variable "ibm_sw_repo_password" {
  type        = "string"
  description = "IBM Software Repo Password"
}

#Variable : ibm_sw_repo_user
variable "ibm_sw_repo_user" {
  type        = "string"
  description = "IBM Software Repo Username"
  default     = "repouser"
}

##### libertynode variables #####
#Variable : libertynode-image
variable "libertynode-image" {
  type        = "string"
  description = "Operating system image id / template that should be used when creating the virtual image"
}

#Variable : libertynode-name
variable "libertynode-name" {
  type        = "string"
  description = "Short hostname of virtual machine"
}

#Variable : libertynode-os_admin_user
variable "libertynode-os_admin_user" {
  type        = "string"
  description = "Name of the admin user account in the virtual machine that will be accessed via SSH"
}

#Variable : libertynode_was_liberty_base_version
variable "libertynode_was_liberty_base_version" {
  type        = "string"
  description = "The release and fixpack level for WebSphere Liberty to be installed. Example formats are 8.5.5.11 or 17.0.2"
  default     = "17.0.2"
}

#Variable : libertynode_was_liberty_edition
variable "libertynode_was_liberty_edition" {
  type        = "string"
  description = "Indicates which Liberty offering should be installed. Valid values are: base, core, nd"
  default     = "base"
}

#Variable : libertynode_was_liberty_im_install_dir
variable "libertynode_was_liberty_im_install_dir" {
  type        = "string"
  description = "The installation root directory for the installation manager product binaries"
  default     = "/opt/IBM/InstallationManager"
}

#Variable : libertynode_was_liberty_install_dir
variable "libertynode_was_liberty_install_dir" {
  type        = "string"
  description = "Liberty installation directory"
  default     = "/opt/IBM/WebSphere/Liberty"
}

#Variable : libertynode_was_liberty_install_grp
variable "libertynode_was_liberty_install_grp" {
  type        = "string"
  description = "Liberty install group"
  default     = "root"
}

#Variable : libertynode_was_liberty_install_user
variable "libertynode_was_liberty_install_user" {
  type        = "string"
  description = "Liberty installation user"
  default     = "root"
}

#Variable : libertynode_was_liberty_java_version
variable "libertynode_was_liberty_java_version" {
  type        = "string"
  description = "The Java SDK version that should be installed with the WebSphere Application Server. Example format is 8.0.4.70"
  default     = "8.0"
}

#Variable : libertynode_was_liberty_liberty_servers_server1_feature
variable "libertynode_was_liberty_liberty_servers_server1_feature" {
  type        = "string"
  description = "Liberty features that should be included in the server definition"
  default     = "webProfile-7.0 adminCenter-1.0"
}

#Variable : libertynode_was_liberty_liberty_servers_server1_httpport
variable "libertynode_was_liberty_liberty_servers_server1_httpport" {
  type        = "string"
  description = "Default HTTP Transport Port"
  default     = "9080"
}

#Variable : libertynode_was_liberty_liberty_servers_server1_httpsport
variable "libertynode_was_liberty_liberty_servers_server1_httpsport" {
  type        = "string"
  description = "Secure Default HTTP Transport Port"
  default     = "9443"
}

#Variable : libertynode_was_liberty_liberty_servers_server1_keystore_id
variable "libertynode_was_liberty_liberty_servers_server1_keystore_id" {
  type        = "string"
  description = "Liberty keystore id"
  default     = "defaultKeyStore"
}

#Variable : libertynode_was_liberty_liberty_servers_server1_keystore_password
variable "libertynode_was_liberty_liberty_servers_server1_keystore_password" {
  type        = "string"
  description = "Liberty Keystore password"
}

#Variable : libertynode_was_liberty_liberty_servers_server1_name
variable "libertynode_was_liberty_liberty_servers_server1_name" {
  type        = "string"
  description = "Name of Liberty server to be created"
  default     = "defaultServer"
}

#Variable : libertynode_was_liberty_liberty_servers_server1_users_admin_user_name
variable "libertynode_was_liberty_liberty_servers_server1_users_admin_user_name" {
  type        = "string"
  description = "Liberty administrative user name"
  default     = "admin"
}

#Variable : libertynode_was_liberty_liberty_servers_server1_users_admin_user_password
variable "libertynode_was_liberty_liberty_servers_server1_users_admin_user_password" {
  type        = "string"
  description = "Liberty administrative user name password"
}

#Variable : libertynode_was_liberty_liberty_servers_server1_users_admin_user_role
variable "libertynode_was_liberty_liberty_servers_server1_users_admin_user_role" {
  type        = "string"
  description = "liberty admin_user role"
  default     = "admin"
}

#Variable : libertynode_was_liberty_wlp_user_dir
variable "libertynode_was_liberty_wlp_user_dir" {
  type        = "string"
  description = "Liberty directory for user data"
  default     = "/opt/IBM/WebSphere/Liberty/usr"
}

#########################################################
##### Resource : VaultItem
#########################################################

resource "camc_vaultitem" "VaultItem" {
  camc_endpoint   = "${var.ibm_pm_service}/v1/vault_item/chef"
  access_token    = "${var.ibm_pm_access_token}"
  skip_ssl_verify = true
  trace           = true

  data = <<EOT
{
  "vault_content": {
    "item": "secrets",
    "values": {},
    "vault": "${random_id.stack_id.hex}"
  }
}
EOT
}

#########################################################
##### Resource : libertynode
#########################################################

variable "libertynode-os_password" {
  type        = "string"
  description = "Operating System Password for the Operating System User to access virtual machine"
}

variable "libertynode_folder" {
  description = "Target vSphere folder for virtual machine"
}

variable "libertynode_datacenter" {
  description = "Target vSphere Datacenter for virtual machine creation"
}

variable "libertynode_number_of_vcpu" {
  description = "Number of virtual CPU for the virtual machine, which is required to be a positive Integer"
  default     = "2"
}

variable "libertynode_memory" {
  description = "Memory for virtual machine in MBs, which is required to be one or more times of 1024"
  default     = "2048"
}

variable "libertynode_cluster" {
  description = "Target vSphere cluster to host the virtual machine"
}

variable "libertynode_dns_suffixes" {
  type        = "list"
  description = "Name resolution suffixes for the virtual network adapter"
}

variable "libertynode_dns_servers" {
  type        = "list"
  description = "DNS servers for the virtual network adapter"
}

variable "libertynode_network_interface_label" {
  description = "vSphere port group or network label for virtual machine's vNIC"
}

variable "libertynode_ipv4_gateway" {
  description = "IPv4 gateway for vNIC configuration"
}

variable "libertynode_ipv4_address" {
  description = "IPv4 address for vNIC configuration"
}

variable "libertynode_ipv4_prefix_length" {
  description = "IPv4 Prefix length for vNIC configuration, which is required to be numbers between 8 and 32"
}

variable "libertynode_root_disk_datastore" {
  description = "Data store or storage cluster name for target virtual machine's disks"
}

variable "libertynode_root_disk_type" {
  type        = "string"
  description = "Type of template disk volume"
  default     = "eager_zeroed"
}

variable "libertynode_root_disk_controller_type" {
  type        = "string"
  description = "Type of template disk controller"
  default     = "scsi"
}

variable "libertynode_root_disk_keep_on_remove" {
  type        = "string"
  description = "Delete template disk volume when the virtual machine is deleted"
  default     = "false"
}

# vsphere vm
resource "vsphere_virtual_machine" "libertynode" {
  name         = "${var.libertynode-name}"
  folder       = "${var.libertynode_folder}"
  datacenter   = "${var.libertynode_datacenter}"
  vcpu         = "${var.libertynode_number_of_vcpu}"
  memory       = "${var.libertynode_memory}"
  cluster      = "${var.libertynode_cluster}"
  dns_suffixes = "${var.libertynode_dns_suffixes}"
  dns_servers  = "${var.libertynode_dns_servers}"

  network_interface {
    label              = "${var.libertynode_network_interface_label}"
    ipv4_gateway       = "${var.libertynode_ipv4_gateway}"
    ipv4_address       = "${var.libertynode_ipv4_address}"
    ipv4_prefix_length = "${var.libertynode_ipv4_prefix_length}"
  }

  disk {
    type            = "${var.libertynode_root_disk_type}"
    template        = "${var.libertynode-image}"
    datastore       = "${var.libertynode_root_disk_datastore}"
    keep_on_remove  = "${var.libertynode_root_disk_keep_on_remove}"
    controller_type = "${var.libertynode_root_disk_controller_type}"
  }

  # Specify the connection
  connection {
    type     = "ssh"
    user     = "${var.libertynode-os_admin_user}"
    password = "${var.libertynode-os_password}"
  }

  provisioner "file" {
    destination = "libertynode_add_ssh_key.sh"

    content = <<EOF
##############################################################
# Licensed Materials - Property of IBM
#
# For use by authorized subscribers only.
#
# Refer to Service Description and SLA available here:
# http://www-03.ibm.com/software/sla/sladb.nsf/sla/saas
#
# D0021ZX IBM Cloud Automation Library, Enterprise Middleware
# © Copyright IBM Corp. 2017
##############################################################
#!/bin/bash

if (( $# != 3 )); then
echo "usage: arg 1 is user, arg 2 is public key, arg3 is CAMC Public Key"
exit -1
fi

userid="$1"
ssh_key="$2"
camc_ssh_key="$3"

user_home=$(eval echo "~$userid")
user_auth_key_file=$user_home/.ssh/authorized_keys
echo "$user_auth_key_file"
if ! [ -f $user_auth_key_file ]; then
echo "$user_auth_key_file does not exist on this system, creating."
mkdir $user_home/.ssh
chmod 600 $user_home/.ssh
echo "" > $user_home/.ssh/authorized_keys
chmod 600 $user_home/.ssh/authorized_keys
else
echo "user_home : $user_home"
fi

if [[ $ssh_key = 'None' ]]; then
echo "skipping user key add, 'None' specified"
else
echo "$user_auth_key_file"
echo "$ssh_key" >> "$user_auth_key_file"
if [ $? -ne 0 ]; then
echo "failed to add to $user_auth_key_file"
exit -1
else
echo "updated $user_auth_key_file"
fi
fi

echo "$camc_ssh_key" >> "$user_auth_key_file"
if [ $? -ne 0 ]; then
echo "failed to add to $user_auth_key_file"
exit -1
else
echo "updated $user_auth_key_file"
fi

EOF
  }

  # Execute the script remotely
  provisioner "remote-exec" {
    inline = [
      "sudo bash -c 'chmod +x libertynode_add_ssh_key.sh'",
      "sudo bash -c './libertynode_add_ssh_key.sh  \"${var.libertynode-os_admin_user}\" \"${var.user_public_ssh_key}\" \"${var.ibm_pm_public_ssh_key}\">> libertynode_add_ssh_key.log 2>&1'",
    ]
  }
}

#########################################################
##### Resource : libertynode_chef_bootstrap_comp
#########################################################

resource "camc_bootstrap" "libertynode_chef_bootstrap_comp" {
  depends_on      = ["camc_vaultitem.VaultItem", "vsphere_virtual_machine.libertynode"]
  name            = "libertynode_chef_bootstrap_comp"
  camc_endpoint   = "${var.ibm_pm_service}/v1/bootstrap/chef"
  access_token    = "${var.ibm_pm_access_token}"
  skip_ssl_verify = true
  trace           = true

  data = <<EOT
{
  "os_admin_user": "${var.libertynode-os_admin_user}",
  "stack_id": "${random_id.stack_id.hex}",
  "environment_name": "_default",
  "host_ip": "${vsphere_virtual_machine.libertynode.network_interface.0.ipv4_address}",
  "node_name": "${var.libertynode-name}",
  "node_attributes": {
    "ibm_internal": {
      "stack_id": "${random_id.stack_id.hex}",
      "stack_name": "${var.ibm_stack_name}",
      "vault": {
        "item": "secrets",
        "name": "${random_id.stack_id.hex}"
      }
    }
  }
}
EOT
}

#########################################################
##### Resource : libertynode_liberty_create_server
#########################################################

resource "camc_softwaredeploy" "libertynode_liberty_create_server" {
  depends_on      = ["camc_softwaredeploy.libertynode_liberty_install"]
  name            = "libertynode_liberty_create_server"
  camc_endpoint   = "${var.ibm_pm_service}/v1/software_deployment/chef"
  access_token    = "${var.ibm_pm_access_token}"
  skip_ssl_verify = true
  trace           = true

  data = <<EOT
{
  "os_admin_user": "${var.libertynode-os_admin_user}",
  "stack_id": "${random_id.stack_id.hex}",
  "environment_name": "_default",
  "host_ip": "${vsphere_virtual_machine.libertynode.network_interface.0.ipv4_address}",
  "node_name": "${var.libertynode-name}",
  "runlist": "role[liberty_create_server]",
  "node_attributes": {
    "ibm_internal": {
      "roles": "[liberty_create_server]"
    },
    "was_liberty": {
      "install_dir": "${var.libertynode_was_liberty_install_dir}",
      "liberty_servers": {
        "server1": {
          "feature": "${var.libertynode_was_liberty_liberty_servers_server1_feature}",
          "httpport": "${var.libertynode_was_liberty_liberty_servers_server1_httpport}",
          "httpsport": "${var.libertynode_was_liberty_liberty_servers_server1_httpsport}",
          "jvm_params": "-Xms256m -Xmx2048m",
          "keystore_id": "${var.libertynode_was_liberty_liberty_servers_server1_keystore_id}",
          "name": "${var.libertynode_was_liberty_liberty_servers_server1_name}",
          "users": {
            "admin_user": {
              "name": "${var.libertynode_was_liberty_liberty_servers_server1_users_admin_user_name}",
              "role": "${var.libertynode_was_liberty_liberty_servers_server1_users_admin_user_role}"
            }
          }
        }
      },
      "wlp_user_dir": "${var.libertynode_was_liberty_wlp_user_dir}"
    }
  },
  "vault_content": {
    "item": "secrets",
    "values": {
      "was_liberty": {
        "liberty_servers": {
          "server1": {
            "keystore_password": "${var.libertynode_was_liberty_liberty_servers_server1_keystore_password}",
            "users": {
              "admin_user": {
                "password": "${var.libertynode_was_liberty_liberty_servers_server1_users_admin_user_password}"
              }
            }
          }
        }
      }
    },
    "vault": "${random_id.stack_id.hex}"
  }
}
EOT
}

#########################################################
##### Resource : libertynode_liberty_install
#########################################################

resource "camc_softwaredeploy" "libertynode_liberty_install" {
  depends_on      = ["camc_bootstrap.libertynode_chef_bootstrap_comp"]
  name            = "libertynode_liberty_install"
  camc_endpoint   = "${var.ibm_pm_service}/v1/software_deployment/chef"
  access_token    = "${var.ibm_pm_access_token}"
  skip_ssl_verify = true
  trace           = true

  data = <<EOT
{
  "os_admin_user": "${var.libertynode-os_admin_user}",
  "stack_id": "${random_id.stack_id.hex}",
  "environment_name": "_default",
  "host_ip": "${vsphere_virtual_machine.libertynode.network_interface.0.ipv4_address}",
  "node_name": "${var.libertynode-name}",
  "runlist": "role[liberty_install]",
  "node_attributes": {
    "ibm": {
      "im_repo": "${var.ibm_im_repo}",
      "im_repo_user": "${var.ibm_im_repo_user}",
      "sw_repo": "${var.ibm_sw_repo}",
      "sw_repo_user": "${var.ibm_sw_repo_user}"
    },
    "ibm_internal": {
      "roles": "[liberty_install]"
    },
    "was_liberty": {
      "base_version": "${var.libertynode_was_liberty_base_version}",
      "edition": "${var.libertynode_was_liberty_edition}",
      "im_install_dir": "${var.libertynode_was_liberty_im_install_dir}",
      "install_dir": "${var.libertynode_was_liberty_install_dir}",
      "install_grp": "${var.libertynode_was_liberty_install_grp}",
      "install_user": "${var.libertynode_was_liberty_install_user}",
      "java_version": "${var.libertynode_was_liberty_java_version}",
      "wlp_user_dir": "${var.libertynode_was_liberty_wlp_user_dir}"
    }
  },
  "vault_content": {
    "item": "secrets",
    "values": {
      "ibm": {
        "im_repo_password": "${var.ibm_im_repo_password}",
        "sw_repo_password": "${var.ibm_sw_repo_password}"
      }
    },
    "vault": "${random_id.stack_id.hex}"
  }
}
EOT
}

output "libertynode_ip" {
  value = "VM IP Address : ${vsphere_virtual_machine.libertynode.network_interface.0.ipv4_address}"
}

output "libertynode_name" {
  value = "${var.libertynode-name}"
}

output "libertynode_roles" {
  value = "liberty_create_server,liberty_install"
}

output "stack_id" {
  value = "${random_id.stack_id.hex}"
}
