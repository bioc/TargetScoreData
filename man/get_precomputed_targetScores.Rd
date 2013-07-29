\name{get_precomputed_targetScores}
\alias{get_precomputed_targetScores}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
get_precomputed_targetScores
}
\arguments{
  \item{datapath}{data path
}
}
\description{
Pre-calculated targetScores for 112 miRNAs using logFC and sequence scores from TargetScan context score and PCT from the RData files above.
}
\usage{
get_precomputed_targetScores(datapath = system.file("extdata/targetScores.RData", package = "TargetScoreData"))
}
