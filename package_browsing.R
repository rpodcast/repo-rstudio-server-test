# simple R script to look at installed packages

library() # print list of all installed packages

.libPaths() # print directories where R packages are installed

package.matrix <- installed.packages() # character matrix of installed packages with useful info

colnames(package.matrix) # see what columns are available

package.matrix.sub <- package.matrix[, c("Package", "Version", "LibPath")]
row.names(package.matrix.sub) <- NULL  # row names are same as Package column, so we don't need it

# adding another comment