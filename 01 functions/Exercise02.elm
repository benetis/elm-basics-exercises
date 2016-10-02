import Html
import String

capitalize maxLength name =
    if String.length name > maxLength then
        String.toUpper name
    else
        name

main =
    let
        name = "super long name"
    in
        (capitalize 10 name)
            ++ ", length of name: "
            ++ toString (String.length name)
            |> Html.text
