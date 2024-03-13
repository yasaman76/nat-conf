
NAT server deployed in GCP.

in this project I have created a NAT server ( CentOs ) with two NICs in two VPC.
two VMs are deployed in each of the mentioned VPCs, vm1 and vm2.
with iptables I was able to set up a NAT server on CentOs VM and connect vm1 and vm2 together.


the end goal is to package(?) and automate the whole process of deploying a NAT server and connecting two VPCs togheter.

===========

steps taken in GCP :

1- enable ip forwarding.

https://cloud.google.com/compute/docs/instances/update-instance-properties#updatable-properties

2- create customer static routes from both ends to the peer destination.

https://cloud.google.com/vpc/docs/routes#instance_next_hops

3- configure firewall rules to allow connection between VMs in the same VPC
vm1 and CentOs, vm2 and CentOs


==========


using iptables

configured two chains in nat table

prerouting -j DNAT
postrouting -j MASQUERADE



 
