rule samtools_index:
    input:
        "/mnt/gtklab01/linglab/tdp43/STAR/tdp43_cnp_hip_p60/{sample_name}/{sample_name}_Aligned.sortedByCoord.out.bam"
    output:
        "/mnt/gtklab01/linglab/tdp43/STAR/tdp43_cnp_hip_p60/{sample_name}/{sample_name}_Aligned.sortedByCoord.out.bam.bai"
    threads: 4
    shell:
        "samtools index -@ {threads} {input}"