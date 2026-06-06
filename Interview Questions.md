● Can you explain the OSI model and why it is important in networking?
Follow-up: Can you describe the function of each layer?

There is the OSI Model and the TCP/IP Model that are most commonly used in Networking.  The OSI model has 7 layers while the TCP/IP model has 4 layers (to simplify):

					OSI model (7 layers):
1) Physical - electrical or physical specifications **(bits)**
2) Data Link - Layer 2 ethernet/mac addresses and vlans **(frames)**
3) Networking - Layer 3 where Layer 2 Mac address is converted to Layer 3 ip address **(packets)**
4) Transport - how packets transmit over the wire via tcp (reliable) vs udp (fast) **(segments)**
5) Session - Manages session and connection between applications (NetBIOS or PPTP) **(data)**
6) Presentation - Encoding, compression, and encryption (ssl/tls) **(data)**
7) Application - The actual service for end users (http, smtp, ftp, dns) **(data)**

					TCP/IP model (4 layers):
8) Network Interface/Link - physical/NIC and data link layer **(bits and frames)**
9) Internet/Network - Internet layer and routing **(packets)**
10) Transport - TCP and UDP **(segments)**
11) Application - end user apps like ftp, http, and smtp **(data)**

The main purpose is to standardize how different networks communicate which in turn helps network professionals a common language for troubleshooting.  It can help isolate which areas an issue is occurring so it can be diagnosed rather than guessing.

● What’s the difference between a router and a switch?
Follow-up: How would you determine which one to use in a given scenario?

Switches operate at the Layer 2 level and Routers operate at the layer 3 level.

Switches in enterprise networks are used primarily to send frames to locally connected devices as  **efficiently** as possible.  Things like **Trunking (802.1q) and vlans** as well as **LACP** (etherchannel) are both used at  layer 2.

Routers use ip addresses in enterprise networks create network boundaries or subnets as well as connect networks even if they are in different subnets utilizing routing protocols (rip, ospf, eigrp, bgp) to **route traffic efficiently and reliably** as possible; if a certain route goes down or is bogged down to a crawl then routers will dynamically change their routes to work around such limitations.

	Follow-Up:
If i am trying to connect devices within the same subnet or vlan then i would use a switch.  If i am trying to connect devices on a separate subnet or vlans then I would use a router. In most enterprise environments I've worked in, we used Layer 3 switches for inter-VLAN routing internally and dedicated routers or firewalls at the WAN edge. 

● How would you troubleshoot a network connection issue where a user is unable
to access a particular website but can access others?

First, I'd try to access the user's machine remotely via RDP or whatever remote access tool we have available. If that isn't possible, I'd walk them through opening a command prompt or terminal and ask them to ping the site's IP address directly, not the hostname, to rule out a DNS issue first.

If the ping to the IP succeeds, that tells me the network path is fine and the issue is likely DNS. I'd then ask them to run an `nslookup` or `dig` on the problem site and compare the result against a working site to see if it's resolving correctly.

If the domain resolves to the right IP but the site still won't load in the browser, I'd look at three possibilities; a firewall or ACL blocking the traffic, a proxy misconfiguration, or the site itself being down. I'd quickly check a site like downdetector or try reaching it from outside the network to rule out the last one.

From there I'd look at scope, is it just that one user or multiple users? If it's isolated to one user, it's likely a browser or local machine issue. If multiple users are affected, I'd test from outside that subnet. If users on other subnets can reach the site fine, the problem is localized to that subnet, most likely a firewall ACL, a content filter, or a DNS issue specific to that segment.

For the DNS angle, I'd run `nslookup` specifying the local DNS server explicitly to test whether it's resolving correctly, then test directly against the upstream forwarder address — something like nslookup site.com 8.8.8.8. If the forwarder resolves it but the local DNS server doesn't, the problem is either the forwarder configuration on the local DNS server or the local server itself.

● What are some common networking protocols you’ve worked with (e.g., TCP/IP,
HTTP, DNS)? Can you explain how they work?

In modern networks there are several protocols you work with on a daily basis whether you realize it or not.

Honestly in modern networks these protocols are so fundamental you're working with them constantly whether you're thinking about it or not.

TCP/IP is really the backbone of everything. TCP specifically is what you use when data integrity matters; it establishes a connection through a three-way handshake and uses acknowledgments to make sure data actually arrived. If something gets lost it retransmits. File transfers, web browsing, email basically anything where you can't afford to lose data.

UDP is kind of the opposite, there's no handshake, no acknowledgments, it just fires packets and moves on. That sounds like a flaw but for real-time stuff like VoIP or video conferencing it's actually what you want. A dropped packet in a Teams call is way less disruptive than the lag you'd get waiting for a retransmission.

DNS is name resolution, it translates a hostname like google.com into an IP address so the network knows where to actually send the traffic. Without it you'd be typing IP addresses into your browser all day.

HTTP is how your browser and a web server talk to each other, it defines how requests and responses are structured so both sides can understand what's being exchanged. HTTPS is the same thing but with TLS encryption on top so the data is protected in transit. At this point basically everything should be HTTPS.

Beyond those I've also worked with OSPF and BGP for routing, SNMP for monitoring, DHCP for address management, and 802.1Q for VLAN trunking on the switching side

● How do you configure a static IP address on a device?

Depends on the device and the OS its using.  If you want to assign a static ip address to a cisco device so you can ssh to it then you would create a virtual loopback address (this is useful if the network interface goes down):
interface Loopback0
ip address 10.0.0.1 255.255.255.255
no shutdown

Or you could just assign a physical network interface a static IP you could do:
interface g0/0
ip address 192.168.1.1 255.255.255.0
no shutdown

In a windows OS device i would go to the network adapters interface, right click the network adapter that is to be used and right click it and go to properties, then select the TCP/IPv4 item, then select property, enter the static IP i want to use, the gateway ip address, then the DNS server IP address i want to use, then select apply and make sure connection is established before i select okay.

In Linux/Mac OS i would utilize the ip command since most distros i worked with used that command (could also edit /etc/network/interfaces file):
sudo ip address add 192.168.1.100/24 dev eth0
sudo ip link set eth0 up
//set the default gateway
sudo ip route add default via 192.168.1.1

● What is DHCP, and how does it work?

DHCP automates IP address assignment. Utilizes DORA (Discover, Offer, Request, Acknowledge) where a client broadcasts a Discover, the DHCP server responds with an Offer containing an available IP and lease info, the client sends a Request to confirm, and the server sends an Acknowledge. You can configure scope options like default gateway, DNS, and lease duration. In enterprise setups I've worked with DHCP reservations tied to MAC addresses for servers and network gear.

● How would you troubleshoot DNS issues if a user cannot access a website by
domain name but can do so by IP address?

Well if the ip address works but not with the domain name then we for sure know its a DNS issue.  We would want to do a nslookup or dig on the IP address and see if the ip resolves to the domain.  I'd test resolution from the DNS server itself to rule out forwarding or recursion issues. If internal DNS, I'd check for stale records, zone transfer issues, or a misconfigured conditional forwarder. If it's intermittent, I'd look at TTLs and whether there's a caching inconsistency.

● Explain the difference between IPv4 and IPv6. Why is IPv6 becoming more
important?

Ipv4 uses 32 bits or 4 octets as its format which is 2^32 address which is around 4.3 billion which the creators of IP assumed would be more than enough address to handle everyone but eventually we realized that 4.3 billion wouldn't cut at some point. (1.1.1.1)

Ipv6 was a solution that we came up with since it has 128 bits with the format of 8 groups of 16 bit fields separated by : (0001:0001:0001:0001:0001:0001:0001:0001) which is 2^128 addresses 3.4 * 10^38 address.  

Although we have utilized NAT to help with the ipv4 address shortage which has proven to be effective.

● Can you explain what subnetting is and why it’s important? How do you subnet a
network?

Subnetting divides a larger network into smaller logical segments, which improves security, reduces broadcast domains, and helps with traffic management.  There is the host portion of ip address apply it to the subnet portion of the ip address.  So if you want to divide a network into 2 subnets of the ip address 192.168.1.0 subnet you would do a 192.168.1.0 255.255.255.128 or 192.168.1.0/25 which separates subnets into 2: 192.168.1.0 to 192.168.1.127 and 192.168.1.128.192.168.1.255

● What is a VLAN, and how do you configure one on a switch? 

A VLAN is a logical network segment defined in software that isolates broadcast domains regardless of physical topology. It's how you separate things like voice traffic from data traffic, or segment departments for security. On a Cisco switch you'd create the VLAN with:
vlan 100
name Vlan100
exit

then configure access ports with switchport mode access and switchport access vlan. Trunk ports carrying multiple VLANs get I've done this extensively at APM Terminals and LA county:

for trunk interface:
int g0/24
switchport trunk encapsulation dot1q
switchport mode trunk
switchport trunk allowed vlan 100
no shut
exit

for access interface:
int g0/1
switchport mode access
switchport access vlan 100
no shut
exit

● What is NAT, and how is it used in a typical home or office network setup?

NAT translates private IP addresses to a public IP address for outbound internet traffic. In a home or office setup, devices on the 192.168.x.x range all share one public IP assigned by the ISP such as 100.100.100.100.  It can also utilize PAT (port address translation) so that for the same public ip like 100.100.100.100:8001->192.168.1.100 and 100.100.100.100:8002 -> 192.168.1.101

● How would you secure a Wi-Fi network in a corporate environment?

I would first setup the wifi to (first disable WPS) utilize WPA3 or even WPA2-Enterprise (since they are the most up to date and secure proto) using 802.1X with a PAM like RAIDUS or other AAA servers like Cisco ISE.  Seperate SSID for corp devices, guest traffic, and IOT devices (each on their own VLAN).  Enforce isolation from the guest network and the corporate devices.  Keep Access Point firmware update.  Disable SSID broadcasting on managment networks and deploy wireless IPS to detect rogue AP and deauth attacks.

● What is the difference between TCP and UDP? When would you choose one over
the other?

TCP is connection-oriented with guaranteed delivery, ordering, and error checking via the three-way handshake and ACKs. UDP is connectionless (faster, lower overhead, no delivery guarantee) I'd use TCP for anything where data integrity matters: web traffic, file transfers, email, SSH. UDP works better where speed matters more than perfection: VoIP, video streaming, DNS queries, gaming. 

● How would you approach configuring a VPN for remote employees?

It depends on the environment. In most enterprise setups I'd stand up either a site-to-site IPsec VPN for branch offices or a client VPN solution like Cisco AnyConnect or GlobalProtect for remote work. Start with defining the IPSEC policies and transform sets, configure the crypto map, set up user authentication (ideally MFA through RADIUS or LDAP), and split tunneling decisions, whether all traffic routes through the VPN or just internal destinations. I've also deployed OpenVPN on Linux for smaller environments. Certificate-based auth is preferable over just username/password.

Problem-Solving and Troubleshooting
● A user reports that their connection is slow. How would you go about diagnosing
and fixing the problem?

I start by narrowing scope, is it just them, their subnet, or the whole site? I'd run a speed test from their device and compare to baseline. Check for high CPU or memory on their machine first (sometimes it's not the network at all). Then I'd look at interface errors/drops on their switch port show interface on Cisco. Check for duplex mismatches. Look at utilization on the uplink. If it's application-specific slow, I'd check latency with traceroute and see where the delay is introduced. If it's intermittent, I'd set up a continuous ping and correlate timing with any scheduled jobs or backups eating bandwidth.

● You notice that a particular subnet has been experiencing consistent packet loss.
What steps would you take to investigate and resolve the issue?

First I would want to see if i can connect to the device at all.  Can i ping it and get not packet loss from my device?  Do i have access to any of the connected devices?  Can i ping it from that device?  Is there just packet loss due to an unstable connection?  Run a few pings from the connected gateway to the device.  If i can connect to the affected device are there any issues showing up if i do a:

show interface g0/1
show interface summary
show ip int brief

check the logs:
show logging | i interface GigabitEthernet0/1

● Explain how you would handle a situation where a critical server goes down in a
remote environment, and you are unable to access the office physically.

Well that would be bad.  Is this critical server a VM? If so do we have connection to the hypervisor?  Would be great if we did because then we can just interact with the hypervisor and see if there are any logs via something like dmesg to see what the problem was from.  If this server isnt a VM and is an actual bare metal device then I sure hope we have something like iLO or iDRAC setup on separate NIC so that there was some way to connect to it and reboot it if possible.  In both VM and bare metal situations we would want to see if we could just reboot or spin up the server and then look at logs.  If perhaps its just a network issue we could do a traceroute from where we are to the server, maybe try just ip address to check DNS, and see at what point the connection fails.  Sometimes these problems will require calling the ISP being used and asking if the device is down for them and if they can do their own troubleshooting.


● How do you monitor network performance and health?

At LA County we used SNMP polling through Cisco Prime Infrastructure to track device health and interface stats via a web dashboard. We also aggregated syslog across devices and configured threshold-based alerts so the team was notified proactively when something hit a critical state and send us an email or alert to the monitoring tool.

● Which tools or methods would you use to track bandwidth, latency, and packet
loss?

I'd use a layered approach:

SNMP polling for utilization trends
NetFlow for traffic composition and Cisco IP SLA for continuous synthetic monitoring of latency and loss between key points. 

For reactive troubleshooting I'd start with ping and traceroute, then drop into interface error counters or a packet capture if I needed to confirm where the issue was occurring

Remote Work & Soft Skills
● As a remote engineer, how do you ensure effective communication with team
members who are spread across different time zones?

I lean heavily on documentation and tickets to keep everyone aligned regardless of time zone. Before I log off I make sure any open issues have a current status note so the next engineer isn't starting blind. For anything urgent I'll flag it proactively in the team channel rather than waiting for someone to ask. I've found that async communication works well as long as you're disciplined about keeping the ticket or runbook current

● Can you describe a time when you had to work independently on a network
issue? How did you manage your time and resources to resolve it?

At LA County, the Public Services Department experienced a full building outage — both their AT&T and Spectrum connections went down simultaneously, so there was no redundancy path available. I confirmed the outage by pinging the on-site router from the WAN side and calling the building directly to verify.

I immediately opened a critical ticket in Cherwell and began timestamping every action taken. I contacted both ISPs and explicitly flagged it as customer-impacting, which triggers their internal escalation process. That's when we learned a fiber cable had been severed in a car accident near the building — a physical external issue, so my role shifted from troubleshooting to coordination.

I deployed a field technician to the site, gave the ISP their contact information, and reached out to the department director to inform him of the cause and request a building point of contact for site access. From that point I maintained a ticket update every 20 minutes to keep stakeholders informed throughout.

Once the fiber splice was completed I confirmed restoration by re-pinging the site router and verifying with the on-site contact before closing the ticket. I documented the full timeline and flagged a recommendation to have ISP escalation contacts more prominently listed in the runbook for future critical outages

● How do you stay motivated and organized while working remotely without direct
supervision?

Honestly, I keep myself motivated by remembering that the people on the other end of these network connections aren't just users, they're depending on this stuff the same way they depend on having the lights on. I've worked in environments where network downtime had real consequences, hospitals being one of them, so that weight stays with me whether someone is looking over my shoulder or not. I hold myself accountable regardless.  And I stay organized by sticking to the ticketing protocols that are typically already in place for us to follow.

● How do you handle a situation where you need to collaborate on a network issue
with a team but are facing connectivity problems (either due to remote tools or
network issues)?

When collaboration gets difficult I fall back on whatever channel is still available and make sure I'm documenting everything in the ticket so nothing is lost if I have to hand off mid-troubleshooting.  Early on at LA County I ran into something similar in spirit.  I was new to the team and got a performance complaint from the Metro conference building downtown with Teams streams dropping. I didn't know the full toolset yet so I went straight to my supervisor, asked what monitoring tools we had available, and we worked through it together using nGeniusONE to identify the bandwidth spike. That collaboration got us to the root cause faster than if I'd tried to figure it out alone."
