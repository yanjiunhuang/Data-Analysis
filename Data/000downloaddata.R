data <- read.csv(file.choose(), header = T, sep=",")
if (!dir.exists("data"))  dir.create("data")
download.file("https://datadryad.org/stash/downloads/file_stream/91293","data/GroupAssignmentData.xls")

