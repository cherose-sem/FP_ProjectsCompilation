class Recursion {

  /**
    * A normal recursive function
    * Notice that the recursive call is _not_ last in the function
    */
  def normalRecursive(i: Int): Int = {
    if (i <= 0) {
      return i
    } else {
      val result = normalRecursive(i - 1)
      return result
    }
  }

  /**
    * A tail-recursive function
    * Notice that the recursive call is the last in the function
    */
  final def tailRecursive(i: Int): Int = {
    if (i <= 0) {
      return i
    } else {
      return tailRecursive(i - 1)
    }
  }

  def main(args: Array[String]): Unit = {
    // A call to the normal
    normalRecursive(10)

    tailRecursive(10)
  }

}
