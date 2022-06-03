configfile: "/mnt/cbis/home/yongshan/samtools-index/config/config.yaml"
include: "rules/common.smk"
include: "rules/samtools_index.smk"

rule all:
    input:
        expand("/mnt/gtklab01/linglab/tdp43/STAR/tdp43_cnp_hip_p60/{sample_name}/{sample_name}_Aligned.sortedByCoord.out.bam.bai",sample_name=SAMPLES)