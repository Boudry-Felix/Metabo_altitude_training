# Informations ------------------------------------------------------------
# Title: Functions.R
# Author: Félix Boudry
# Contact: <felix.boudry@univ-perp.fr>
# License: GPLv3
# Description: Functions used for this project

# Libraries ---------------------------------------------------------------
require(magrittr)


# Notebook fromat ---------------------------------------------------------
get_knit_param <- function(input) {
  output <- parse(text = input) %>%
    eval()
  return(output)
}
