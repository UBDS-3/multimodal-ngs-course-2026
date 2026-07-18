#!/bin/bash

set -euo pipefail

FASTQ_DIR="./output/fastq"  # fetchngs output directory
RENAMED_DIR="./fastq_renamed"  # destination for renamed files

mkdir -p "${RENAMED_DIR}"

# SRR accession → custom sample name
declare -A SAMPLES=(
    ["SRR12761392"]="RNA_Zone1_mOSN_Rep1"
    ["SRR12761393"]="RNA_Zone1_mOSN_Rep2"
    ["SRR12761394"]="RNA_Zone1_mOSN_Rep3"
    ["SRR12761403"]="RNA_Zone5_mOSN_Rep1"
    ["SRR12761404"]="RNA_Zone5_mOSN_Rep2"
    ["SRR12761405"]="RNA_Zone5_mOSN_Rep3"
    ["SRR12761412"]="RNA_Zone2_mOSN_Rep1"
    ["SRR12761413"]="RNA_Zone2_mOSN_Rep2"
    ["SRR12761446"]="ChIP_Zone1_mOSN_Rep1"
    ["SRR12761451"]="ChIP_Zone1_mOSN_Rep2"
    ["SRR12761448"]="ChIP_Zone2_mOSN_Rep1"
    ["SRR12761452"]="ChIP_Zone2_mOSN_Rep2"
    ["SRR12761450"]="ChIP_Zone5_mOSN_Rep1"
    ["SRR12761453"]="ChIP_Zone5_mOSN_Rep2"
    ["SRR12761463"]="ChIP_Bulk_mOSN_Rep1"
)

for SRR in "${!SAMPLES[@]}"; do
    NEW_NAME="${SAMPLES[$SRR]}"

    R1_SRC=$(ls "${FASTQ_DIR}/"*"${SRR}_1.fastq.gz" 2>/dev/null | head -1)
    R2_SRC=$(ls "${FASTQ_DIR}/"*"${SRR}_2.fastq.gz" 2>/dev/null | head -1)

    if [[ -f "${R1_SRC}" && -f "${R2_SRC}" ]]; then
        cp "${R1_SRC}" "${RENAMED_DIR}/${NEW_NAME}_R1.fastq.gz"
        cp "${R2_SRC}" "${RENAMED_DIR}/${NEW_NAME}_R2.fastq.gz"
        echo "[OK] ${SRR} → ${NEW_NAME}_R1/R2.fastq.gz"
    else
        echo "[WARN] Files not found for ${SRR}, skipping."
    fi
done

echo ""
echo "Done. Renamed files are in: ${RENAMED_DIR}"
