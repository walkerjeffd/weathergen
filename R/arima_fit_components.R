#' Fit ARIMA Models to Wavelet Components
#'
#' @param components 2-d numeric array of wavelet components generated by wavelet_components()
#' @export
#' @examples
#' arima_fit_components(cbind("COMPONENT"=sin(1:50) + rnorm(50) + 10, "NOISE"=rnorm(50)))
arima_fit_components <- function(components) {
  apply(components, 2, forecast::auto.arima, max.p=2, max.q=2,
                                             max.P=0, max.Q=0,
                                             stationary=TRUE)
}
