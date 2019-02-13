#' @name revbayes
#' @title revbayes
#' @description Run revbayes
#' @param ... Arguments
#' @details Note, no interaction possible.
#' @example /examples/example.R
#' @export
revbayes <- function(...) {
  arglist <- outsider:::.arglist_get(...)
  files_to_send <- outsider::.filestosend_get(arglist = arglist)
  arglist <- outsider::.arglist_parse(arglist = arglist)
  otsdr <- outsider::.outsider_init(repo = 'dombennett/om..revbayes',
                                    cmd = 'rb', arglist = arglist,
                                    files_to_send = files_to_send, wd = getwd())
  # run the command
  outsider::.run(otsdr)
}
