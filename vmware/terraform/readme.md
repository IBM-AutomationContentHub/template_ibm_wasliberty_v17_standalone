# Template - IBM WAS Liberty V17 Standalone
Template Version - 1.0

## Description

This template will install the Liberty server single node topology. This template will install either BASE, CORE or ND Edition.<br>

## Features

### Clouds

 VMWare<br>
<br>
### Template Version

V1.0<br>
<br>
### Operating Systems Supported

Redhat 7, Ubuntu 16<br>
<br>
### Topology

1) Liberty server - single node<br>
<br>
### Software Deployed

- IBM Liberty version 17<br>
<br>
### Default Virtual Machine Settings

 VCPU = 1, Memory = 4GB, Storage = 20GB<br>
<br>
### Usage and Special Notes

- Installation is via Installation Manager, please ensure this has been correctly on the Repo Server.<br>
- Modify the libertynode_was_liberty_edition variable in CAM Variables to change the installation type to base, core or nd.<br>


## Overview

### License and Maintainer

Copyright IBM Corp. 2016, 2017 

### Target Cloud Type

VMware vSphere

### Software Deployed

- IBM WebSphere Liberty

### Major Versions

- IBM WebSphere Liberty 16.0.4
- IBM WebSphere Liberty 17.0.1
- IBM WebSphere Liberty 17.0.2


### Minor Versions

- IBM WebSphere Liberty 16.0.4
- IBM WebSphere Liberty 17.0.1
- IBM WebSphere Liberty 17.0.2


*Note, these represent base versions only, explicit fixpacks may also be added.*

### Platforms Supported

The following Operating Systems are supported for software defined in this template.

- RHEL 6.x
- RHEL 7.x
- Ubuntu 14.x
- Ubuntu 16.x


### Nodes Description

The following table describes the nodes and relevant software component deployed on each node.

<table>
  <tr>
    <th>Node Name</th>
    <th>Component</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>libertynode</code></td>
    <td>liberty_install</code></td>
    <td>installs WAS Liberty Base</code></td>
  </tr>
  <tr>
    <td>libertynode</code></td>
    <td>liberty_create_server</code></td>
    <td>create and configure a liberty server instance</code></td>
  </tr>
</table>


### Autoscaling Support

Nil

## Software Resource Minimal Requirements

The following is a summary of the minimal requirements available to the base operating system to support a successful deployment.

### IBM WebSphere Liberty
<table>
  <tr>
    <td>Internal Firewall</td>
    <td>off</td>
  </tr>
  <tr>
    <td>Min Disk</td>
    <td>20GB</td>
  </tr>
  <tr>
    <td>Min CPU</td>
    <td>1</td>
  </tr>
  <tr>
    <td>Remote Root Access</td>
    <td>yes</td>
  </tr>
  <tr>
    <td>Min Memory</td>
    <td>1024</td>
  </tr>
</table>



## Disk Requirements

The following lists on a per-product basis the minimal reccomended disk required for each product installed.

### IBM WebSphere Liberty
<table>
  <tr>
    <td>/var</td>
    <td>512</td>
  </tr>
  <tr>
    <td>/tmp/ibm_cloud</td>
    <td>2048</td>
  </tr>
  <tr>
    <td>/opt/IBM</td>
    <td>2048</td>
  </tr>
  <tr>
    <td>/tmp</td>
    <td>2048</td>
  </tr>
</table>



## Software Repository Libraries

The following standard operating system libraries are required in the relevant Operating System library for each Operating System.

### IBM WebSphere Liberty
<table>
  <tr>
    <td>debian</td>
    <td>x86_64</td>
    <td>None</td>
  </tr>
  <tr>
    <td>redhat</td>
    <td>x86_64</td>
    <td>None</td>
  </tr>
</table>



## Network Connectivity and Security Groups

Network connectivity is required from the deployed nodes to standard infrastructure. The following is a description of the network Ports required on each node based on the software deployed on that node.

### IBM WebSphere Liberty
<table>
  <tr>
    <td>Http port</td>
    <td>9080</td>
  </tr>
  <tr>
    <td>Https port</td>
    <td>9443</td>
  </tr>
</table>



# Software Repository Requirements

The following files are neccessary on the Software Repository to successfully install this product. Please refer to the document on managing software repositories for the correct method to load  and manage files on the Software Repository.


## IBM WebSphere Liberty

### Installation
<table>
  <tr>
    <th>Version</th>
    <th>Arch</th>
    <th>Repository Root</th>
    <th>File</th>
  </tr>
  <tr>
    <td>17.0.2</td>
    <td>X86_64</td>
    <td>Installed from IM Repository</td>
    <td><br>com.ibm.websphere.liberty.BASE_17.0.2.20170523_1818</br><br>com.ibm.websphere.liberty.CORE_17.0.2.20170523_1818</br><br>com.ibm.websphere.liberty.ND_17.0.2.20170523_1818</br></td>
  </tr>
  <tr>
    <td>17.0.1</td>
    <td>X86_64</td>
    <td>Installed from IM Repository</td>
    <td><br>com.ibm.websphere.liberty.BASE_17.0.1.20170227_0221</br><br>com.ibm.websphere.liberty.CORE_17.0.1.20170227_0221</br><br>com.ibm.websphere.liberty.ND_17.0.1.20170227_0221</br></td>
  </tr>
  <tr>
    <td>16.0.4</td>
    <td>X86_64</td>
    <td>Installed from IM Repository</td>
    <td><br>com.ibm.websphere.liberty.BASE_16.0.4.20161113_0220</br><br>com.ibm.websphere.liberty.BASE_16.0.4.20161113_0220</br><br>com.ibm.websphere.liberty.BASE_16.0.4.20161113_0220</br></td>
  </tr>
</table>


# Cloud Specific Requirements

The following is required prior to deploying the template on the target cloud. These details will either be required by the deployer or injected by the platform at runtime.

<table>
  <tr>
    <th>Terraform Provider Variable</th>
    <th>Terraform Provider Variable Description.</th>
  </tr>
  <tr>
    <td>user</th>
    <td>The user name for vSphere API operations.</th>
  </tr>
  <tr>
    <td>password</code></td>
    <td>The user password for vSphere API operations.</td>
  </tr>
  <tr>
    <td>vsphere_server</code></td>
    <td>The vSphere Server name for vSphere API operations.</td>
  </tr>
  <tr>
    <td>allow_unverified_ssl</code></td>
    <td>Set True, VMware vSphere client will permit unverifiable SSL certificates.</td>
  </tr>
</table>

These variables are typically defined when creating a Cloud Connection.

