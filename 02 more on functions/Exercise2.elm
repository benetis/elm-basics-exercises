import Html
import String

firstLetter string =
    String.left 1 string

(~=) a b =
    firstLetter a == firstLetter b

main =
    toString("A Test" ~= "Aha")
    |> Html.text
