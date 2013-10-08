# TargetScan context score for all of the predicted sites (including conserved and nonconserved sites) downloaded from TargetScan 6 website (http://www.targetscan.org/cgi-bin/targetscan/data_download.cgi?db=vert_61)

get_TargetScanHuman_contextScore <- function(datapath=system.file("extdata/TargetScanHuman_contextScore.RData", package = "TargetScoreData")) {
  
  targetScanCS <- NULL
  
  load(datapath)
  
  targetScanCS
}

# TargetScan PCT for all of the predicted sites (including conserved and nonconserved sites) downloaded from TargetScan 6 website (http://www.targetscan.org/cgi-bin/targetscan/data_download.cgi?db=vert_61)
get_TargetScanHuman_PCT <- function(datapath=system.file("extdata/TargetScanHuman_PCT.RData", package = "TargetScoreData")) {
  
  targetScanPCT <- NULL
  
  load(datapath)
  
  targetScanPCT  
}

# Get validated targets of human miRNA obtained from mirTarBase v3.5
get_validated_targets <- function(datapath=system.file("extdata/hsa_MTI.xls", package = "TargetScoreData")) {
      
  read.xls(datapath, check.names=F)    
}

# Get miRNA family information obtained TargetScanHuman 6
get_miRNA_family_info <- function(datapath=system.file("extdata/miR_Family_Info.txt", package = "TargetScoreData")) {
  
  read.delim(datapath, check.names=F)
}

# Pre-calculated targetScores for 112 miRNAs using logFC and sequence scores from TargetScan context score and PCT from the RData files above.
get_precomputed_targetScores <- function(datapath=system.file("extdata/targetScores.RData", package = "TargetScoreData")) {
  
  targetScoreMatrix <- NULL
  
  load(datapath)
  
  targetScoreMatrix  
}


# We combined all of the logFC data columns into a single N x M matrix for all of the N = 19177 RefSeq mRNAs (NM_*  obtained from UCSC) and M = 286 datasets. Missing data (logFC) for some genes across studies were imputed using \code{impute} from \code{impute.knn}.
get_precomputed_logFC <- function(datapath=system.file("extdata/logFC.RData", package = "TargetScoreData")) {
			
	logFC <- NULL
	
	load(datapath)
	
	logFC
}



# log fold-changes (logFC) from each study organized in a list with each item corresponding to a miRNA. Notably, some miRNAs (e.g., hsa-miR-1) appear more than once in the list corresponding to different studies.
get_miRNA_transfection_data <- function(datapath=system.file("extdata/miRNA_transfection_data.RData", package = "TargetScoreData")) {
  
  transfection_data <- NULL
  
  transfection_series_id <- NULL
  
  load(datapath)
  
  list(transfection_data=transfection_data, transfection_series_id=transfection_series_id)
}


