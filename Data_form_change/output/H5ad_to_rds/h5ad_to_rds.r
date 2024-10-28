library(dplyr)
library(Seurat)
library(hdf5r)
library(stringr)
library(reticulate)
library(sceasy)
library(SummarizedExperiment)
library(SingleCellExperiment)

use_condaenv("/data/public/dulin/miniconda/bin/python", required = TRUE)

setwd("/data/public/dulin/python_code/18.GFcode/SpotGF_test/Data_form_change/demo_data")
h5ad_file = 'demoe_visium_orchid.cellbin.h5ad'
File = 'demoe_visium_orchid.cellbin.rds'
rds = sceasy::convertFormat(h5ad_file, from="anndata", to="seurat",outFile= File)