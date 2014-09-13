
module.exports = {
  formatConfidence: (tableStr) ->
    pTable = this.parse tableStr
    pTable.rows * pTable.cols
  parse: (tableStr) ->
    tableStr = tableStr.replace /\\hline/g, ''
    rows = tableStr.split "\\\\"

    table = [];
    maxCols = 0;
    for i from 0 til rows.length
      row = rows[i].trim!
      cols = row.split "&"
      table[i] = [];
      for j from 0 til cols.length
        table[i][j] = cols[j].trim!
      maxCols = Math.max maxCols,cols.length
    
    {
      content: table
      rows: rows.length
      cols: maxCols
    }
}
