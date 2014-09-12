
function tableTranspose(tableStr){
  tableStr = tableStr.replace(/\\hline/g, '')
  rows = tableStr.split("\\\\");

  var table = [];
  var maxCols = 0;
  for(var i=0; i<rows.length; i++){
    var row = rows[i].trim();
    var cols = row.split("&");
    table[i] = [];
    for(var j=0; j<cols.length; j++){
      table[i][j] = cols[j].trim();
    }
    maxCols = Math.max(maxCols,cols.length);
  }

  var tNew = "\\begin{tabular}{";
  for(var i=0; i<maxCols; i++){
    tNew += " c ";
  }
  tNew += "}\n";
  for(var i=0; i<maxCols; i++){
    for(var j=0; j<table.length; j++){
      var content = (i < table[j].length) 
        ? table[j][i] : "";
      tNew += "\t" + content;
      if(j == table.length - 1){
        tNew += "\\\\";
      } else {
        tNew += "\t&";
      }
    }
    tNew += "\n";
  }
  tNew += "\\end{tabular}";
  return tNew;
}

if(typeof module !== "undefined"){
  module.exports = tableTranspose;
}
