import Html
import String
import List

wordCount =
    String.words >> List.length

main =
    toString(wordCount "just a fox jumping over a lazy dog")
    |> Html.text
