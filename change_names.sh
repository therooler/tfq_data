#!/usr/bin/env bash

for d in $(find . -maxdepth 1 -type d)
do
echo $d
  Do something, the directory is accessible with $d:
  mv -- "$d/qaoa_grid_2_stats.txt" "$d/stats.txt"
  mv -- "$d/qaoa_grid_2_params.npy" "$d/params.npy"
  mv -- "$d/qaoa_grid_2_final_state.npy" "$d/final_state.npy"
  mv -- "$d/qaoa_grid_2_energies.npy" "$d/energies.npy"
done

#for x in *; do
#   echo $x
#   mv "$x" "${x//XXZ_4qb_delta_/}";
#   mv "$x" "${x//_closed_af/}";
#done
