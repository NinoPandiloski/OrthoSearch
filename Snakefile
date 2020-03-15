samples=["HT", "PB"]

rule gene_sequence:
        input:
                fa=expand("Data/{sample}.genome", sample=samples),
                gff=expand("Data/{sample}.gtf", sample=samples)

        output:
                "Results/1_GeneSequences/{sample}.fna",
                "Results/1_GeneSequences/{sample}.faa",
                "Results/1_GeneSequences/{sample}.log"

        shell:
                """
                bin/gffParse.pl -i {input.fa} -g {input.gff} -b {wildcards.sample} -c -p
                mv  -t Results/1_GeneSequences/ {wildcards.sample}.faa {wildcards.sample}.fna {wildcards.sample}.log
                """
