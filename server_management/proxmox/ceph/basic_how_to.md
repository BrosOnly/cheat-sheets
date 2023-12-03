# Introduction to Proxmox 8 Cluster Setup with Ceph and HA

In this basic how to I describe how to create a cluster using three nodes running Proxmox 8 with Ceph installed on three 128G USB3 flash drives. In this case I'm using three Dell OptiPlex 3040 Micro PC's. So jumping right into how I have prepared the Proxmox Cluster Creation, but first I needed to do a few things.

1) Create a bootable USB (Ventoy) flash drive for the proxmox ISO.
2) Clear all the 3040 BIOS passwords.
3) Boot to the USB and install Proxmox on all three micros.
4) Named the nodes pve-cluster1-2-3.
5) Set static IP's in a managed VLAN.
 
I used pve-cluster-1 as the master of the cluster. Under Datacenter, click on cluster to create the cluster. Here the name can be anything - I used XCLUSTER and the selected the managed VLAN. Next, is to extract the join information so click on the Join Information and should see basically the API key (copy this) that needs to be used in the other nodes so they can be joined to the XCLUSTER. Do this step for the other nodes and you should see the following.
*at some point will add this >  to input the root password<hr>

<b>Joined Cluster Nodes<br>
![java-code](https://raw.githubusercontent.com/rBums/cheat-sheets/main/server_management/proxmox/ceph/images/ceph-01.png)</br>

1) Create a Virtual Machine (VM) Ubuntu 20.04.
2) Create a Container (CT) from template.

<b>Migrate Container Test - took three minutes</b><br>
![java-code](https://raw.githubusercontent.com/rBums/cheat-sheets/main/server_management/proxmox/ceph/images/ct-migrate-3MIN.png)<hr>
<b>Container Output</b><br>
![java-code](https://raw.githubusercontent.com/rBums/cheat-sheets/main/server_management/proxmox/ceph/images/ct-migrate-output.png)<hr>
<b>Setup VM or CT for HA</b><br>
![java-code](https://raw.githubusercontent.com/rBums/cheat-sheets/main/server_management/proxmox/ceph/images/vm-HA-add.png)<hr>
<b>Migrate HA VM Output</b><br>
![java-code](https://raw.githubusercontent.com/rBums/cheat-sheets/main/server_management/proxmox/ceph/images/vm-migrate-output.png)<hr>
<b>Migrate HA VM Status</b><br>
![java-code](https://raw.githubusercontent.com/rBums/cheat-sheets/main/server_management/proxmox/ceph/images/vm-migrate-status.png)<hr>

---

## Ceph Dashboard

  The Ceph Dashboard is a built-in web-based Ceph management and monitoring application through which you can inspect and administer various resources within the cluster. It is implemented as a Ceph Manager Daemon module.