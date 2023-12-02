## Introduction to Proxmox 8 Cluster Setup with Ceph and HA

#### In this how to I'm going to try to describe how to create a Proxmox 8 cluster using three nodes in this case I'm using three Dell Optiplex 3040 Micro PC's. So let's jump right into how I have prepared the Proxmox Cluster Creation.

I first had to do the following:  1) Create a bootable USB (Ventoy) flash drive that contains the proxmox ISO. 2) Clear the 3040's BIOS password. 3) Boot to the USB and install on all three micro pcs.
 
I name these three nodes pve-cluster-1-2-3 and set them up with static IPs on a managed VLAN. I'm going to use pve-cluster-1 as the master of the cluster. Go to the Data Center and then we're gonna click on cluster and then we're going to create a cluster. Here the name can be anything - I used XCLUSTER and the managed VLAN network used. Next is to extract the join information so click on the join information and should see basically the API key that needs to be used in the other nodes so they can be joined to the XCLUSTER.

---

![java-code](https://raw.githubusercontent.com/rBums/cheat-sheets/main/server_management/proxmox/ceph/images/ceph-01.png)<hr>
<b>Join Cluster</b><br>
![java-code](https://raw.githubusercontent.com/rBums/cheat-sheets/main/server_management/proxmox/ceph/images/ceph-01.png)<hr>

---

## Ceph Dashboard

  The Ceph Dashboard is a built-in web-based Ceph management and monitoring application through which you can inspect and administer various resources within the cluster. It is implemented as a Ceph Manager Daemon module.