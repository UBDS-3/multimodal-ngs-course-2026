export NXF_VER=24.10.6

nextflow run nf-core/chipseq \
    --input samplesheet.csv \
    --outdir /g/boulard/Lisa/Projects/multimodal-ngs-ubds-2026/pipelines/chip-seq-zone-specific-nextflow/results \
    --fasta /g/boulard/references/mm10/GRCm38.primary_assembly.genome.main_chromosomes.fa \
    --gtf /g/boulard/references/mm10/gencode.vM10.annotation.gtf \
    --aligner bowtie2 \
    --read_length 75 \
    -profile embl_hd,singularity \
    -resume