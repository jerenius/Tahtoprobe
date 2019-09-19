# Tahtoprobe LLDPd

### What is LLDP?

As described in Wikipedia the [Link Layer Discovery Protocol (LLDP)](https://en.wikipedia.org/wiki/Link_Layer_Discovery_Protocol) is a 
vendor-neutral link layer protocol used by network devices for advertising 
their identity, capabilities, and neighbors on a local area network based on 
IEEE 802 technology, principally wired Ethernet.

Most modern managed switches support LLDP, which makes it handy little helper when
debugging mysterious network related problems.

### Vision

I have been using managed switches when LLDP is needed. I happened to have a spear
Raspberry PI 2 just sitting ducks and waiting for a purpose. I decided to make a LLDP
probe using that RPI 2. 

I had some few requirements

- easy deployment
- simple
- zero configuration onsite (or very little configuration)

### Tahtoprobe was born

From vision to reality I decided to use [Balena](https://balena.io) for deployment. Balena is a neat
tool for managing Linux devices. If you are not familiar with Balena, refer documents on Balena website.

Quick and dirty steps for using Tahtoprobe this tool are:

1. Clone this repository from github
2. Create application in Balena
3. Add Balena as target (use git to do this, for syntax refer Balena website
4. Configure PROBENAME fleet or device variable in Balena to set LLDP hostname






