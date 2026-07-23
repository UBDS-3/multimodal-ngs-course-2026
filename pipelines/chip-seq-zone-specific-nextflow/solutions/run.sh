export NXF_VER=24.10.6

nextflow run nf-core/chipseq \
    --input samplesheet.csv \
    --outdir /home/YOUR_USER/multimodal-ngs-course-2026/pipelines/chip-seq-zone-specific-nextflow/results \
    --genome GRCm38 \
    --aligner bowtie2 \
    --read_length 75 \
    -profile singularity \
    -resume