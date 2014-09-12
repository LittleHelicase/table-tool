
var tableTranspose = require("./transpose.js");

var tableStr = "\n\
\\hline \n\
a & b & c & d & e\\\\ \n\
\\hline \n\
f & g & h & i & j \\\\ \n\
k & l & m & n & o \\\\"

console.log(tableTranspose(tableStr));
