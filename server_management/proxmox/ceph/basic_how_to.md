# # Proxmox & Ceph
Ceph is a distributed network storage and file system with distributed metadata management and POSIX semantics.

---
## Proxmox Snapshots
<b>Create Cluster</b><br>

I started by installing Proxmox 8.03 on three Dell Optiplex 3040M Thin-Clients. Then I created a cluster<br>

![java-code](https://raw.githubusercontent.com/rBums/cheat-sheets/main/server_management/proxmox/ceph/images/ceph-01.png)<hr>
<b>Join Cluster</b><br>
![java-code](https://raw.githubusercontent.com/rBums/cheat-sheets/main/server_management/proxmox/ceph/images/ceph-01.png)<hr>
<b>OPEN SPACE</b><br>
![java-code](https://raw.githubusercontent.com/rBums/cheat-sheets/main/server_management/proxmox/ceph/images/ceph-01.png)<hr>
<b>Container(CT) Migrate (3 min)</b><br>
![java-code](https://raw.githubusercontent.com/rBums/cheat-sheets/main/server_management/proxmox/ceph/images/ceph-01.png)<hr>
<b>Container(CT) Migrate Output</b><br>
![java-code](https://raw.githubusercontent.com/rBums/cheat-sheets/main/server_management/proxmox/ceph/images/ceph-01.png)<hr>
<b>VM HA Adding</b><br>
![java-code](https://raw.githubusercontent.com/rBums/cheat-sheets/main/server_management/proxmox/ceph/images/ceph-01.png)<hr>
<b>VM HA Migrate Output</b><br>
![java-code](https://raw.githubusercontent.com/rBums/cheat-sheets/main/server_management/proxmox/ceph/images/ceph-01.png)<hr>
<b>VM HA Migrate Status</b><br>
![java-code](https://raw.githubusercontent.com/rBums/cheat-sheets/main/server_management/proxmox/ceph/images/ceph-01.png)<br>

---

## Ceph Dashboard

  The Ceph Dashboard is a built-in web-based Ceph management and monitoring application through which you can inspect and administer various resources within the cluster. It is implemented as a Ceph Manager Daemon module.