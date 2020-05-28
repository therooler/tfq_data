#!/usr/bin/env bash
#for x in *; do
#  mv -- "$x" "${x//ff/f}"
#done

for d in $(find . -maxdepth 1 -type d)
do
#  Do something, the directory is accessible with $d:
  mv -- "$d/qaoa_grid_8_stats.txt" "$d/stats.txt"
  mv -- "$d/qaoa_grid_8_params.npy" "$d/params.npy"
  mv -- "$d/qaoa_grid_8_final_state.npy" "$d/final_state.npy"
  mv -- "$d/qaoa_grid_8_energies.npy" "$d/energies.npy"
done
echo "duhdoi"
for x in *; do
  echo $x
  mv -- "$x" "${x//TFI_16qb_g_/}"
done

for x in *; do
  mv -- "$x" "${x//f/}"
done

for x in *; do
  mv -- "$x" "${x//_closed_/}"
done