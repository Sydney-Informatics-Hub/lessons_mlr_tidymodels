if (getRversion() < 3.6){
  stop("You need R >= 3.6 to attend the workshop. Please update R!")
}

list_of_pkgs <- c(
  "AmesHousing",
  "tidyverse",
  "tidymodels",
  "doParallel",
  "vip",
  "ggcorrplot",
  "naniar",
  "parallelly",
  "GGally",
  "mlbench",
  "usemodels",
  "qs",
  "ranger")

au_repo <- "https://mirror.aarnet.edu.au/pub/CRAN/"

#install installr and rtools if windows
if (.Platform$OS.type == "windows"){
  install.packages(c("installr"), repos = au_repo)
  installr::install.Rtools(choose_version = F,
                           check = T,
                           GUI = T)
  win_only <- c("installr")
} else {
  win_only <- c()
}

# run the following line of code to install the packages you currently do not have
new_pkgs <- list_of_pkgs[!(list_of_pkgs %in% installed.packages()[,"Package"])]
if(length(new_pkgs)) install.packages(new_pkgs,repos = au_repo)

# install helper function to plot metrics
list_of_pkgs <- c(list_of_pkgs,
                  win_only)

#check everything is installed and write out an error message if it ain't.
missing_pkg <- list_of_pkgs[!(list_of_pkgs %in% installed.packages()[,"Package"])]
if(length(missing_pkg)) {
  print("=======================================================")
  print("Packages which didn't install properly:")
  print(missing_pkg)
  print("Try to install them again or ask a helper for assistance.")
  print("=======================================================")
} else {
  print("=======================================================")
  print("All packages installed properly! :)")
  print("=======================================================")
}
