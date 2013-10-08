\name{TargetScoreData-package}
\alias{TargetScoreData-package}
\alias{TargetScoreData}
\docType{package}
\title{
Processed human microRNA perturbation data from GEO, and sequence information from TargetScan, and targetScore from TargetScore
}
\description{
To automate the pipeline of calculating targetScore using \code{\link[TargetScore]{targetScore}}, we compiled, processed and generated miRNA-overexpression fold-changes from 84 Gene Expression Omnibus (GEO) series corresponding to 6 platforms, 77 human cells or tissues, and 113 distinct miRNAs. To our knowledge, this is by far the largest miRNA-pertubation data compendium. Accompanied with the data, we also included in this package the sequence feature scores from TargetScanHuman 6.1 including the context+ score and the probabilities of conserved targeting for each miRNA-mRNA interaction. Thus, the user can use these static sequence-based scores together with user-supplied tissue/cell-specific fold-change due to miRNA overexpression to predict miRNA targets using \code{\link[TargetScore]{targetScore}}.
}
\details{
\tabular{ll}{
Package: \tab TargetScoreData\cr
Type: \tab Package\cr
Version: \tab 0.99.4\cr
Date: \tab 2013-07-13\cr
License: \tab GPL-2\cr
}
	\code{get_TargetScanHuman_contextScore}: TargetScan context score for all of the predicted sites (including conserved and nonconserved sites) downloaded from TargetScan 6 website (http://www.targetscan.org/cgi-bin/targetscan/data_download.cgi?db=vert_61)
	
	\code{get_TargetScanHuman_PCT}: TargetScan PCT for all of the predicted sites (including conserved and nonconserved sites) downloaded from TargetScan 6 website (http://www.targetscan.org/cgi-bin/targetscan/data_download.cgi?db=vert_61)
		 
	
	\code{get_miRNA_family_info}: Get miRNA family information obtained TargetScanHuman 6
	
	\code{get_precomputed_targetScores}: Pre-calculated targetScores for 112 miRNAs using logFC and sequence scores from TargetScan context score and PCT from the RData files above.
	
	\code{get_precomputed_logFC}: We combined all of the logFC data columns into a single N x M matrix for all of the N = 19177 RefSeq mRNAs (NM_*  obtained from UCSC) and M = 286 datasets. Missing data (logFC) for some genes across studies were imputed using \code{impute} from \code{impute.knn}.
	
	\code{get_miRNA_transfection_data}: Get log fold-changes (logFC) from each study organized in a list with each item corresponding to a miRNA. Notably, some miRNAs (e.g., hsa-miR-1) appear more than once in the list corresponding to different studies.
	
	\code{get_validated_targets}: Get validated targets of human miRNA obtained from mirTarBase v3.5
}
\author{
Yue Li

Maintainer: Yue Li <yueli@cs.toronto.edu>
}
\references{
	miRTarBase: a database curates experimentally validated microRNA-target interactions. (2011). miRTarBase: a database curates experimentally validated microRNA-target interactions., 39(Database issue), D163-9. doi:10.1093/nar/gkq1107
	
	Friedman, R. C., Farh, K. K.-H., Burge, C. B., & Bartel, D. P. (2009). Most mammalian mRNAs are conserved targets of microRNAs. Genome Research, 19(1), 92-105. doi:10.1101/gr.082701.108
	
	Garcia, D. M., Baek, D., Shin, C., Bell, G. W., Grimson, A., & Bartel, D. P. (2011). Weak seed-pairing stability and high target-site abundance decrease the proficiency of lsy-6 and other microRNAs. Nature structural & molecular biology, 18(10), 1139-1146. doi:10.1038/nsmb.2115
	
	Please follow the GEO series number to find the references for each microRNA-transfection dataset.
}
\keyword{ data package }

\seealso{	
	\code{\link{get_TargetScanHuman_contextScore}},
	\code{\link{get_TargetScanHuman_PCT}},
	\code{\link{get_validated_targets}},
	\code{\link{get_miRNA_family_info}},
	\code{\link{get_precomputed_targetScores}},
	\code{\link{get_precomputed_logFC}},
	\code{\link{get_miRNA_transfection_data}}
}

\examples{
ls("package:TargetScoreData")
}
