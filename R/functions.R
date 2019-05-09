#' @name revbayes
#' @title revbayes
#' @description Run revbayes
#' @param ... Arguments
#' @details Note, no interaction possible.
#' @example /examples/revbayes.R
#' @export
revbayes <- function(...) {
  arglist <- arglist_get(...)
  files_to_send <- filestosend_get(arglist = arglist)
  arglist <- arglist_parse(arglist = arglist)
  otsdr <- outsider_init(pkgnm = 'om..revbayes', cmd = 'rb', arglist = arglist,
                         files_to_send = files_to_send, wd = getwd())
  # run the command
  run(otsdr)
}
