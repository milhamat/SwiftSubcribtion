struct TimesTable {
   let multiplier: Int
   subscript(index: Int) -> Int {
      return multiplier * index
   }
}
let threeTimesTable = TimesTable(multiplier: 3)
print(threeTimesTable[5])

struct Matrix {
  let rows: Int, columns: Int
  var grid: [Double]
  init(rows: Int, columns: Int) {
     self.rows = rows
     self.columns = columns
     grid = Array(repeating: 0.0, count: rows * columns)
  }
  subscript(row: Int, column: Int) -> Double {
     get {
        return grid[(row * columns) + column]
     }
     set {
        grid[(row * columns) + column] = newValue
     }
  }
}

var m = Matrix(rows: 2, columns: 2)
m[0, 0] = 1.1
m[0, 1] = 2.1
print(m[0, 0])
