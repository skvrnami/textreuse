#' textreuse: Detect Text Reuse and Document Similarity
#'
#' This R package provides a set of functions for measuring similarity among
#' documents and detecting passages which have been reused. It implements
#' shingled n-gram, skip n-gram, and other tokenizers; similarity/dissimilarity
#' functions; pairwise comparisons; minhash and locality sensitive hashing
#' algorithms, and a version of the Smith-Waterman local alignment algorithm
#' suitable for natural language.
#'
#' The best place to begin with this package in the introductory vignette.
#'
#' \code{vignette("introduction", package = "textreuse")}
#'
#' After reading that vignette, the "pairwise" and "minhash" vignettes introduce
#' specific paths for working with the package.
#'
#' \code{vignette("pairwise", package = "textreuse")}
#'
#' \code{vignette("minhash", package = "textreuse")}
#'
#' Another good place to beign with the package is the documentation for loading
#' documents (\code{\link{TextReuseTextDocument}} and
#' \code{\link{TextReuseCorpus}}), for \link{tokenizers},
#' \link[=similarity-functions]{similarity functions}, and
#' \link[=lsh]{locality-sensitive hashing}.
#'
#' @references The sample data provided in the \code{extdata/legal} directory is
#'   taken from a
#'   \href{http://lincolnmullen.com/blog/corpus-of-american-tract-society-publications/}{corpus
#'    of American Tract Society publications} from the nineteen-century,
#'   gathered from the \href{https://archive.org/}{Internet Archive}.
#'
#'   The sample data provided in the \code{extdata/legal} directory, are taken
#'   from the following nineteenth-century codes of civil procedure from
#'   California and New York.
#'
#'   \emph{Final Report of the Commissioners on Practice and Pleadings}, in 2
#'   \emph{Documents of the Assembly of New York}, 73rd Sess., No. 16, (1850):
#'   243-250, sections 597-613.
#'   \href{http://books.google.com/books?id=9HEbAQAAIAAJ&pg=PA243#v=onepage&q&f=false}{Google
#'    Books}.
#'
#'   \emph{An Act To Regulate Proceedings in Civil Cases}, 1851 \emph{California
#'   Laws} 51, 51-53 sections 4-17; 101, sections 313-316.
#'   \href{http://books.google.com/books?id=4PHEAAAAIAAJ&pg=PA51#v=onepage&q&f=false}{Google
#'    Books}.
#'
#' @name textreuse
#' @aliases textreuse-package
#' @docType package
#' @useDynLib textreuse
#' @importFrom Rcpp sourceCpp
#' @import RcppProgress
#' @import stringr
#' @import assertthat
NULL

if (getRversion() >= "2.15.1") {
 utils::globalVariables(c("doc.x", "doc.y", "up", "dn", "a", "b"))
}
