
module.exports = (table) ->
  tNew = "\\begin{tabular}{"
  for i from 0 til table.cols
    tNew += " c "
  tNew += "}\n"

  for j from 0 til table.rows
    for i from 0 til table.cols
      content = if (i < table.content[j].length) then table.content[j][i]  else ""
      tNew += "\t" + content
      if i == table.cols-1 and j != table.rows-1
        tNew += "\\\\"
      else if i != table.cols - 1
        tNew += "\t&"
        
    tNew += "\n"

  tNew += "\\end{tabular}"
