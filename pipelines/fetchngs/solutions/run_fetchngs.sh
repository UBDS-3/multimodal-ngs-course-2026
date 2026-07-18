#!/bin/bash

export NXF_VER=24.10.6

nextflow run nf-core/fetchngs \
    --input ids.csv \
    --outdir ./output \
    --download_method ftp \
    -c nextflow.config \
    -resume