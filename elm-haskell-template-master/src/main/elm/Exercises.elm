-- Exercise 1: SELECTIONS IN Elm
import Html exposing(text)
main =
  text (toString (checklist(points)))
-- text (toString (checklist 12 points))
-- text (toString (foo 5))

points = [(1,2),(3,4),(5,6),(7,8)]

checklist list =
  case list of
    [] -> 0
    _ :: _ :: (z1,z2) :: _ -> z1*z2
    l -> 1

-- Exercise 2 - List based factorial
main =
 -- text (toString (checklist(points)))
 text (toString (checklist20 12 points))


fact n =
   if n == 0 then 1
   else n*(fact (n - 1))

checklist20 index list =
  if index == 0 then
    case list of
      [] -> 0
      (x1, x2) :: _ -> x1*x2
  else if list == [] then 1
  else checklist20(index-1) list

  -- Exercise 3 - Iterations in Elm
  import Html exposing (text)

main =
 text(toString (getSum 100))


f n =
  (if n % 2 == 1 then 1  else -1)*(1.0/(2.0*(toFloat n)-1.0))

getSum n=
  4*(List.sum (List.map f (List.range 1 n)))
