# Sony_Tablet_Z_KK.283_Kernel

This is the Stock Sony Tablet Z KitKat (14.5.1.A.0.283) Kernel Source.
The Config was modified to create NFS and CIFS-Module.

For CIFS you only need:
cifs.ko

For NFS you need:
sunrpc.ko
lockd.ko
auth_rpcgss.ko
nfs.ko 

Usage:
./make.sh

After that you will find "boot.img" in root of your Repo.
