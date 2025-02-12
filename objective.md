
##### NAT Server Deployed in GCP

In this project I want to deploy private self managed NAT server. This server is going to be routing traffic between two different VPC networks on GCP
Two VMs are deployed in each of the mentioned VPCs, vm-a and vm-b.
With iptables I was able to set up a NAT server on CentOs VM and connect vm1 and vm2 together.


the end goal is to automate the process of deploying a NAT server and connecting two VPCs togheter.

###### steps 

+ create two sepearte VPC with non overlaping IP ranges, VPC-A and VPC-B
+ deploy vm-a in VPC-A, vm-b in VPC-B
+ deploy VM instance nat-server with two interfaces in each VPC, 
  + enable [ip forwarding](https://cloud.google.com/vpc/docs/using-routes#canipforward) on the NAT server.
  + using bash script, configure the iptables rules to route trafic between VPC-A and VPC-B.
+ create customer static [routes](https://cloud.google.com/vpc/docs/routes#instance_next_hops) from both ends to the peer destination.
+ configure firewall rules to allow connection between VMs in the same VPC
vm1 and CentOs, vm2 and CentOs



using iptables

configured two chains in nat table

prerouting -j DNAT
postrouting -j MASQUERADE



 
