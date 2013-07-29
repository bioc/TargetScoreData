\name{get_miRNA_transfection_data}
\alias{get_miRNA_transfection_data}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
get_miRNA_transfection_data
}
\arguments{
  \item{datapath}{data path
}
}
\description{
Get log fold-changes (logFC) from each study organized in a list with each item corresponding to a miRNA. Notably, some miRNAs (e.g., hsa-miR-1) appear more than once in the list corresponding to different studies.
}
\usage{
get_miRNA_transfection_data(datapath = system.file("extdata/miRNA_transfection_data.RData", package = "TargetScoreData"))
}
