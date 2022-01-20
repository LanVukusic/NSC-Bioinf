# Roary

## Installation
run the install script.  
`./install.sh`

A progress bar should appear, indicating that download has started.  
Finished log looks like that:
```
INFO:    Downloading shub image
708.1MiB / 708.1MiB [====================] 100 %
13.5 MiB/s 0s
```
Done, roary is installed.

## Execution

Instead of typing the `roary` command, use one of the provided aliases
- roary16
- roary32
- roary64

These commands allocate 16, 32 or 64 processing cores on the cluster. Use `-p` flag to set number of threads roary actually uses.


## Technical brief
Roary is distributed as a container. To run containers, they must be converted from Docker to Singularity containers.
[More on singularity](https://sylabs.io/guides/3.5/user-guide/introduction.html)

Since the whole cluster runs on top of SLURM, we need to `srun ` the command.  
This actually puts our workload in the working queue. Process is executed on the compute node and does not just run on the login node.

The command is simplified for the end user. `~/.zshrc` file contains aliases for all the _roary16_ - _roary64_ commands.
