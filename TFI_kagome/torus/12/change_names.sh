#!/usr/bin/env bash


for x in *; do
   mv "$x" "${x//TFI_kagome_12qb_g_/}";
done
for x in *; do
   mv "$x" "${x//_torus_f/}";
done

for d in $(find . -maxdepth 1 -type d)
do
echo $d
  mv -- "$d/test_8_stats.txt" "$d/stats.txt"
  mv -- "$d/test_8_params.npy" "$d/params.npy"
  mv -- "$d/test_8_final_state.npy" "$d/final_state.npy"
  mv -- "$d/test_8_energies.npy" "$d/energies.npy"
done

