#!/usr/bin/env bash


for x in *; do
   mv "$x" "${x//XXZ_8qb_delta_/}";
done
for x in *; do
   mv "$x" "${x//_closed_af/}";
done

for d in $(find . -maxdepth 1 -type d)
do
echo $d
  mv -- "$d/qaoa_grid_4_stats.txt" "$d/stats.txt"
  mv -- "$d/qaoa_grid_4_params.npy" "$d/params.npy"
  mv -- "$d/qaoa_grid_4_final_state.npy" "$d/final_state.npy"
  mv -- "$d/qaoa_grid_4_energies.npy" "$d/energies.npy"
done

