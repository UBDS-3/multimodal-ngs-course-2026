# Multimodal NGS analysis of gene expression and chromatin state in the olfactory epithelium

**UBDS^3 | 2026**

---

## About this course

This course introduces next-generation sequencing (NGS) technologies and their application in biological research, using the mouse olfactory system as a model. The olfactory epithelium is organized into distinct spatial zones, each expressing a unique subset of olfactory receptor genes - a striking example of zone-specific gene regulation that remains incompletely understood.

You will perform hands-on computational analysis of two complementary NGS datasets:

- **RNA-seq** from mature olfactory sensory neurons isolated from different epithelial zones
- **ChIP-seq** targeting H3K9me3, a histone modification associated with heterochromatin and gene silencing

By the end of the course, you will have a conceptual and practical foundation in NGS data analysis, and will have gained mechanistic insight into the transcriptional and epigenetic regulation of zone-specific olfactory receptor expression.

---

## Course structure

| Day | Topic |
|-----|-------|
| Day 1 | Setting up your environment and downloading the data |
| Day 2 | Running the 3t-seq pipeline for RNA-seq data processing |
| Day 3 | Exploring RNA-seq results |
| Day 4 | Running the ChIP-seq pipeline (hopefully) |
| Day 5 | Integrative analysis of RNA-seq and ChIP-seq data |

---

## Repository structure

```
multimodal-ngs-course-2026/
├── tutorials/       # Day-by-day qmd/HTML guides — open these in your browser
├── slides/          # Lecture slides
├── metadata/        # Sample metadata tables
├── pipelines/       # Pipeline configuration files and scripts
│   ├── fetchngs/    # nf-core/fetchngs for RNA-seq an ChIP-seq data download
│   ├── rna-seq-zone-specific-3t-seq/          # 3t-seq RNA-seq pipeline solutions
│   └── chip-seq-zone-specific-nextflow/         # nf-core/chipseq pipeline solutions
└── analysis/        # R scripts for downstream analysis (hopefully)
    ├── exercises/       # Exercise templates for you to fill in
    └── solutions/       # Solutions — try the exercises first!
```

---

## Getting started

### 1. Connect to your server

We will provide you with the server IP address and login credentials.

```bash
ssh your_username@SERVER_IP
```

### 2. Clone this repository

```bash
git clone https://github.com/UBDS-3/multimodal-ngs-course-2026.git
cd multimodal-ngs-course-2026
```

## Contact

Lisa Korneeva (Tutor), Olexandr Lykhenko (TA)
