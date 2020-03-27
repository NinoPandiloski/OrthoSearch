# Author: Ninoslav Pandiloski
# License: No license.
# Usage: snakemake --use-conda (-n)
The software can be obtained by: git pull https://github.com/NinoPandiloski/OrthoSearch

OrthoSearch is a program used to extract the orthologous genes from genome files. The process is performed using gffParse and busco. 
gffParse is able to extract all of the predicted genes(using a provided gtf files). Busco then is used to search against a database 
for orthology of the predicted genes. Please make sure that your input data (genome and gtf) is found in the Data/ directory. The ex
tensions of your data should be .genome and .gtf.

OrthoSearch was tested on multiple machines for it's portability. The binaries are also provided within the repository for easier use.
Howerver, OrthoSearch depends on a conda environment for busco to run. If OrthoSearch does not perform its task please try using:
#$conda install -c bioconda -c conda-forge busco=4.0.5
#$conda activate base

