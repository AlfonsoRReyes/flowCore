# This file was generated by Rcpp::compileAttributes
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

biexponential_transform <- function(input, A, B, C, D, F, W, tol, maxIt) {
    .Call('flowCore_biexponential_transform', PACKAGE = 'flowCore', input, A, B, C, D, F, W, tol, maxIt)
}

convertRawBytes <- function(bytes, isInt, colSize, ncol, isBigEndian) {
    .Call('flowCore_convertRawBytes', PACKAGE = 'flowCore', bytes, isInt, colSize, ncol, isBigEndian)
}

fcsTextParse <- function(txt, emptyValue) {
    .Call('flowCore_fcsTextParse', PACKAGE = 'flowCore', txt, emptyValue)
}

hyperlog_transform <- function(input, T, W, M, A, isInverse) {
    .Call('flowCore_hyperlog_transform', PACKAGE = 'flowCore', input, T, W, M, A, isInverse)
}

inPolygon <- function(data, vertices) {
    .Call('flowCore_inPolygon', PACKAGE = 'flowCore', data, vertices)
}

inPolytope <- function(data, A, b) {
    .Call('flowCore_inPolytope', PACKAGE = 'flowCore', data, A, b)
}

logicle_transform <- function(input, T, W, M, A, isInverse) {
    .Call('flowCore_logicle_transform', PACKAGE = 'flowCore', input, T, W, M, A, isInverse)
}

sortBytes <- function(bytes, byte_order) {
    .Call('flowCore_sortBytes', PACKAGE = 'flowCore', bytes, byte_order)
}

uint2double <- function(input, isBigEndian) {
    .Call('flowCore_uint2double', PACKAGE = 'flowCore', input, isBigEndian)
}

