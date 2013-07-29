\name{get_precomputed_logFC}
\alias{get_precomputed_logFC}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
get_precomputed_logFC
}
\arguments{
  \item{datapath}{data path
}
}
\description{
We combined all of the logFC data columns into a single N x M matrix for all of the N = 19177 RefSeq mRNAs (NM_*  obtained from UCSC) and M = 286 datasets. Missing data (logFC) for some genes across studies were imputed using \code{impute} from \code{impute.knn}.
}
\usage{
get_precomputed_logFC(datapath = system.file("extdata/logFC.imputed.RData", package = "TargetScoreData"))
}
