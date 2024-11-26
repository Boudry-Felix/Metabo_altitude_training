# Informations ------------------------------------------------------------
# Title: Functions.R
# Author: Félix Boudry
# Contact: <felix.boudry@univ-perp.fr>
# License: GPLv3
# Description: Functions used for this project

## External functions ---------------------------------------------------------
.replace.by.lod <- function(x) {
  # MetaboAnalyst: https://github.com/xia-lab/MetaboAnalystR/blob/d2272aa77cfd292f07c00d6baecc59880c4b3ed1/R/general_misc_utils.R#L8C1-L23C2
  lod <- min(x[x > 0], na.rm = T) / 5
  x[x == 0 | is.na(x)] <- lod
  return(x)
}

ReplaceMissingByLoD <- function(int.mat) {
  # MetaboAnalyst: https://github.com/xia-lab/MetaboAnalystR/blob/d2272aa77cfd292f07c00d6baecc59880c4b3ed1/R/general_misc_utils.R#L8C1-L23C2
  int.mat <- as.matrix(int.mat)
  rowNms <- rownames(int.mat)
  colNms <- colnames(int.mat)
  int.mat <- apply(int.mat, 2, .replace.by.lod)
  rownames(int.mat) <- rowNms
  colnames(int.mat) <- colNms
  return(as.data.frame(int.mat))
}
