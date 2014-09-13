
parser = require "./parser/parser.ls"
printer = require "./printer/printer.ls"

module.exports = {
  best: (tableStr) ->
    parser-list = keys parser
    best-parser = maximum-by (-> parser[it].formatConfidence tableStr), parser-list
  
  parse: (tableStr, parse-format) ->
    if parse-format == "automatic"
      parse-format = this.best tableStr
    parser[parse-format].parse tableStr
    
  print: (table, print-format) ->
    printer[print-format] table
}
