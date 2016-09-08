#' <Add Title>
#'
#' <Add Description>
#'
#' @import htmlwidgets
#' @param fill a CSS colour specification
#' @param w a CSS style width or percentage (e.g. "100px", "60%") for the rectangle
#' @param h a CSS style height. Defaults to w
#' @param width a CSS container width
#' @param height a CSS container height
#' @param elementId. May be necessary for multiple elements on page?
#' @export
rectangleWidget <- function(fill, w, h = NULL, width = NULL, height = NULL, elementId = NULL) {

  # forward options using x
  x = list(
    fill = fill,
    w = w,  # rectangle width (CSS style px or % in string)
    h = if (is.null(h) || is.na(h)) w else h   # rectangle height (like w. If null, use w)
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'rectangleWidget',
    x,
    width = width,
    height = height,
    package = 'rectanglewidget',
    elementId = elementId
  )
}

#' Shiny bindings for rectangleWidget
#'
#' Output and render functions for using rectangleWidget within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId output variable to read from
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#' @param expr An expression that generates a rectangleWidget
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#'
#' @name rectangleWidget-shiny
#'
#' @export
rectangleWidgetOutput <- function(outputId, width = '100%', height = 200){
  htmlwidgets::shinyWidgetOutput(outputId, 'rectangleWidget', width, height, package = 'rectanglewidget')
}

#' @rdname rectangleWidget-shiny
#' @export
renderRectangleWidget <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, rectangleWidgetOutput, env, quoted = TRUE)
}
