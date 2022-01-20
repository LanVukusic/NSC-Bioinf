#!/bin/bash
# Install script for the roary tool

get_abs_filename() {
  # $1 : relative filename
  echo "$(cd "$(dirname "$1")" && pwd)/$(basename "$1")"
}

# #  download the image
tool="roary"
singularity pull --name "$tool".sif shub://iferres/Singularity_recipes:"$tool"

echo "">> ~/.zshrc

echo "# roary">> ~/.zshrc
echo "alias roary16=\"srun -n 16 singularity run $(get_abs_filename 'roary.sif')\"" >> ~/.zshrc
echo "alias roary32=\"srun -n 32 singularity run $(get_abs_filename 'roary.sif')\"" >> ~/.zshrc
echo "alias roary64=\"srun -n 64 singularity run $(get_abs_filename 'roary.sif')\"" >> ~/.zshrc

source ~/.zshrc

echo "Installation complete. try   roary16"
