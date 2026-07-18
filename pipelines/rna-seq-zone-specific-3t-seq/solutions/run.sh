pixi run -e dev snakemake \
    --profile profile/slurm-ubds \
    --configfile config/config.yaml \
    --rerun-incomplete
    #--report report-$(date -I).zip