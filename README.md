
<p align="center" style="margin-bottom: 0px !important;">
  <img src="xxx" width="100" height="100">
</p>
<h1 align="center" style="margin-top: -10px; font-size: 20px">RamEx</h1>

A ramanome represents a single-cell-resolution metabolic phenome that is information-rich, revealing functional heterogeneity among cells, and universally applicable to all cell types. Ramanome Explorer (RamEx, Fig.1) is a toolkit for comprehensive and efficient analysis and comparison of ramanomes. Results from the multidimensional analysis are visualized via intuitive graphics. Implemented via R, RamEx is fully extendable and supports cross-platform use.By providing simple-to-use modules for computational tasks that otherwise would require substantial programming experience and algorithmic skills, RamEx should greatly facilitate the computational mining of ramanomes.

RamEx is built on the following principles:    
- **Reliability** achieved via stringent statistical control
- **Robustness** achieved via flexible modelling of the data and automatic parameter selection
- **Reproducibility** promoted by thorough recording of all analysis steps
- **Ease of use**: high degree of automation, an analysis can be set up in several mouse clicks, no bioinformatics expertise required
- **Powerful tuning options** to enable unconventional experiments
- **Scalability and speed**: up to xxx runs processed per minutes

**Download**: https://github.com/qibebt-bioinfo/RamEx


### Table of Contents
**[Installation](#installation)**<br>
**[Getting started](#getting-started)**<br>
**[Raw data formats](#raw-data-formats)**<br>
**[Output](#output)**<br>
**[Changing default settings](#changing-default-settings)**<br>
**[Visualisation](#visualisation)**<br>
**[Automated pipelines](#automated-pipelines)**<br>
**[Functions](#functions)**<br>
**[Frequently asked questions (FAQ)](#frequently-asked-questions)**<br>
**[Contact](#contact)**<br>

### Installation

RamEx will be installed from GitHub:.
```
library('devtools')
install_github("qibebt-bioinfo/RamEx")
```

### Getting Started

RamEx can be installed simply: 

1. Package loading: load the RamEx package:
```  
library('RamEx'); 
```  
2. Data loading: load the data and generate a ramanome object:
```  
data <- read_spec("the folder path of your specture") 
```
3. Preprocessing:
```  
data <- pre.smooth.sg(data)
data <- pre.baseline.polyfit(data)
data <- pre.normalize.ch(data)
```
4. Quality control:
```  
data_index <- qc_jump(data@datasets$normalized.data,var_tol = 0.4)
data <- data[data$index_good]
```   
5. Meta-based analysis 
```  
marker_info <- find_markers_roc(data@datasets$normalized.data,data@meta.data$group)
```
6. Meta-free analysis
```  
cluster_info <- louvain_clustering(object = data, resolutions = c(0.01))
```    
### Raw data formats

It accommodates data from mainstream instrument manufactures such as Horiba, Renishaw, Thermo Fisher Scientific, WITec, and Bruker. This module efficiently manages single-point data collection, where each spectrum is stored in a separate txt file, as well as mapping data enriched with coordinate information. 

### Output

The **Output** pane allows to specify where the output should be saved. 

### Changing default settings
RamEx can be successfully used to process almost any experiment with default settings. In general, it is recommended to only change settings when specifically advised to help information.


### Visualisation
RamEx also offers an online version. Please visit (http://ramex.single-cell.cn).

### Automated pipelines
The pipeline allows to xxx.

<!--### functions

**Import** Import the xx data
* **R Data** xxx
**Quality Control** Import the xx data
* **Outlier Detection** xxx
**Cell-level analysis** Import the xx data
* **Outlier Detection** xxx
**Singal-level analysis** Import the xx data
* **RBCS** xxx
**Visualization** Import the xx data
* **mean_spectrum** xxx---> 

### Frequently asked questions
**Q: Why RamEx?**  
**A:** Raman spectroscopy, with its fast, label-free, and non-destructive nature, is increasingly popular for capturing vibrational energy levels and metabolic differences in cells, providing qualitative and quantitative insights at single-cell or subcellular resolutions. Leveraging the extensive information provided by the complex and high-dimensional nature of Ramanome, we developed RamEx, an R package designed to adeptly manage extensive Raman datasets generated by a wide range of devices and instruments. It features: 1) a dynamic outlier detection algorithm that operates without prior knowledge or fixed criteria; 2) optimized clustering and marker identification algorithms tailored to the unique properties of high dimensional, colinear and nonlinear Raman spectra; 3 ) a unified computational framework with tools and pipelines for key Raman tasks such as cell type/species identification, clusteringphenotypic analysis, and antibiotic resistance detectionmolecular composition analysis; 4) enhanced processing of large-scale datasets through C++ optimization and GPU computing; 5) a standardized Raman dataset format with integrated metadata and evaluation metrics; and 6) a graphical user-interface (GUI) for intuitive data visualization and interaction
<!--(it's recommended to use the latest version - RamEx 2.1)  -->

<!--<img src="xxx"></br> 

<!--Please cite   
**RamEx : xxxx 

[xxxx, 2024](https://github.com/qibebt-bioinfo/RamEx)

When using RamEx for xxxx  ---> 

**Key papers**  
**IRCA**   
He Y., Huang S., Zhang P., Ji Y., Xu J., 2021. [Intra-Ramanome Correlation Analysis Unveils Metabolite Conversion Network from an Isogenic Population of Cells](https://doi.org/10.1128/mbio.01470-21). *mBio* 

**RBCS**  
Teng L., Wang X.,  Wang X.,  Gou H.,  Ren L., & Wang T., 2016. [Label-free, rapid and quantitative phenotyping of stress response in e. coli via ramanome](https://www.nature.com/articles/srep34359.pdf). *Scientific Reports* 

<!--**Other key papers**  
- IRCA:  
He Y,,Huang S,,,Zhang P,,Ji Y, Xu J,, 2021. Intra-Ramanome Correlation Analysis Unveils Metabolite Conversion Network from an Isogenic Population of Cells. mBio 12:10.1128/mbio.01470-21.
- xxxx:   
[x'x'x, 2021](https://github.com/qibebt-bioinfo/RamEx)

**R package** some useful functions:https://github.com/qibebt-bioinfo/RamEx 
**Visualisation** of ramanome-->




### Contact
Please post any questions, feedback, comments or suggestions on the [GitHub Discussion board](https://github.com/qibebt-bioinfo) (alternatively can create a GitHub issue) or email SCC 
