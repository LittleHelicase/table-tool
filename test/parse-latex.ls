
global <<< require \prelude-ls
require! chai
chai.should!

LatexParser = require "../src/parser/latex.ls"


describe "Parsing Latex Table", !->
  tableStr = '\\hline
          a & b & c & d & e\\\\
          \\hline
          f & g & h & i & j \\\\
          k & l & m & n & o \\\\'

  table = LatexParser.parse tableStr

  describe "parsing table data", (...) !->
    it "should read the correct number of lines and rows", !->
      table.rows.should.equal 4
      table.cols.should.equal 5

    it "should read the correct data", !->
      table.content[1][1].should.equal "g"
      table.content[2][4].should.equal "o"
