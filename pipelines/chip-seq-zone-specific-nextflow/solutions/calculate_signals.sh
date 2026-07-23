#!/bin/bash
conda activate deeptools

BWDIR=/g/boulard/Lisa/Projects/multimodal-ngs-ubds-2026/pipelines/chip-seq-zone-specific-nextflow/results/bowtie2/merged_library/bigwig
BEDDIR=/g/boulard/Lisa/Projects/multimodal-ngs-ubds-2026/pipelines/chip-seq-zone-specific-nextflow/or_bed

multiBigwigSummary BED-file \
  --bwfiles ${BWDIR}/ChIP_Bulk_mOSN_REP1.mLb.clN.bigWig \
            ${BWDIR}/ChIP_Zone1_mOSN_REP1.mLb.clN.bigWig \
            ${BWDIR}/ChIP_Zone1_mOSN_REP2.mLb.clN.bigWig \
            ${BWDIR}/ChIP_Zone2_mOSN_REP1.mLb.clN.bigWig \
            ${BWDIR}/ChIP_Zone2_mOSN_REP2.mLb.clN.bigWig \
            ${BWDIR}/ChIP_Zone5_mOSN_REP1.mLb.clN.bigWig \
            ${BWDIR}/ChIP_Zone5_mOSN_REP2.mLb.clN.bigWig \
  --BED ${BEDDIR}/OR_genes_zoneall_mm10.bed \
  --outFileName ${BEDDIR}/all_H3K9me3_signal_mm10.npz \
  --outRawCounts ${BEDDIR}/all_H3K9me3_signal_mm10.tab \
  -p 8