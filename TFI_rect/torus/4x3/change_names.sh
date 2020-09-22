#!/usr/bin/env bash


for x in *; do
   mv "$x" "${x//TFI_4x3qb_g_/}";
done
for x in *; do
   mv "$x" "${x//_torus_f/}";
done

for d in $(find . -maxdepth 1 -type d)
do
echo $d
  mv -- "$d/grid_6_stats.txt" "$d/stats.txt"
  mv -- "$d/grid_6_params.npy" "$d/params.npy"
  mv -- "$d/grid_6_final_state.npy" "$d/final_state.npy"
  mv -- "$d/grid_6_energies.npy" "$d/energies.npy"
done

