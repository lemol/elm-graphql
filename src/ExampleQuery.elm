module ExampleQuery exposing (query)


query : number
query =
    123



-- import GraphqElm.Field exposing (Field)
-- import Schema.Human as Human
-- myQuery : Field
-- myQuery =
--     Human.human
--         [ Human.id "1000" ]
--         [ Human.name ]
-- type alias Human =
--     { name : String
--     }
--
--
-- type Field a
--     = Field a
--
--
-- query : a -> Field d
-- query constructor =
--     Debug.crash ""
--
--
-- with : Field a -> Field b
-- with aQuery =
--     Debug.crash ""
--
--
-- alternate : Field a
-- alternate =
--     query Human
--         |> with
