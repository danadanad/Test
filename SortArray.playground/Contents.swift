func sortArray(array1:[Int], array2:[Int]) -> [Int] {
  var temp = 0
  
  var array = array1 + array2
  array = Array(Set(array))
  
  for i in 0..<array.count {
    for j in i+1..<array.count {
      if array[i] > array[j] {
        temp = array[i]
        array[i] = array[j]
        array[j] = temp
      }
    }
  }
  
  return array
}
  

sortArray([1,5,3], array2: [2,4,3])
