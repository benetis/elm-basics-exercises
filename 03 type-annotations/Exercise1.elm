import Html

cart =
    [ { name = "Lemon", qty = 1, freeQty = 0 }
    , { name = "Apple", qty = 5, freeQty = 0 }
    , { name = "Pear", qty = 10, freeQty = 0 }
    ]

cartWithFree minQty freeQty item =
    if item.freeQty == 0 then
        { item | freeQty = item.qty // minQty * freeQty }
    else
        item

main =
    List.map ((cartWithFree 10 3) >> (cartWithFree 5 1)) cart
    |> toString
    |> Html.text
