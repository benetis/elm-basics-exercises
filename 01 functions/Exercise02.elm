import Html
import String
upper
    name = String.toUpper name

upperLonger
    name = if String.length name > 9 then
        upper name
        else
            name

main = Html.text (upperLonger "very ldsadsdason")
