# NSC-Bioinf

This repo holds instructions on how to set up different bio informatics tools on NSC, Slovenian compute cluster.

## Prerequisites

### Access to the cluster
You must gain access to the compute cluster.
All educational institutions have the right to use it, so you should be able to get an account if you are a student, professor or researcher.

Once you get your account you can manage it via [fido.sling](https://fido.sling.si/ipa/ui/).



### SSH connection

You will need a way to connect to the cluster via SSH. All linux systems have `ssh` command already installed, while some windows machines don't.  
In this case you can use [puTTY](https://www.putty.org/)

My personal preference is connecting to it with my code editor. [VS Code](https://code.visualstudio.com/).
This method is nice, since it also serves as an easy way to transfer files from and to the cluster.


Follow [this tutorial](https://code.visualstudio.com/docs/remote/ssh) to set up your remote environment.
connect to `myUsername@nsc-login1.ijs.si`

When you connect successfully, you should be presented with a console like this one ` [someone123@nsc-login1]~% `.

### How to
clone this repository on your home folder on the cluster. 
`git clone https://github.com/LanVukusic/NSC-Bioinf`  
This download is minimal. Download of tools happens when you run the installers.

All tools are ready to get installed in their folders. Find instruction for every tool below.

## Supported tools
The list of currently supported tools and pipelines.  
Follow the instruction to set-up and use them.

- [Roary](https://sanger-pathogens.github.io/Roary/) instructions [here](/roary/Roary.md)

