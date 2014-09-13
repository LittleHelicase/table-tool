
module.exports = (table) ->
  tNew = ""
  for j from 0 til table.rows
    for i from 0 til table.cols
      content = if (i < table.content[j].length) then table.content[j][i]  else ""
      tNew += content
      if i != table.cols-1
        tNew += ", "
        
    tNew += "\n"
  
  return tNew
