-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.TextMatchHighlight exposing (beginIndice, endIndice, text)

import Github.InputObject
import Github.Interface
import Github.Object
import Github.Scalar
import Github.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| The indice in the fragment where the matched text begins.
-}
beginIndice : SelectionSet Int Github.Object.TextMatchHighlight
beginIndice =
    Object.selectionForField "beginIndice" [] Decode.int


{-| The indice in the fragment where the matched text ends.
-}
endIndice : SelectionSet Int Github.Object.TextMatchHighlight
endIndice =
    Object.selectionForField "endIndice" [] Decode.int


{-| The text matched.
-}
text : SelectionSet String Github.Object.TextMatchHighlight
text =
    Object.selectionForField "text" [] Decode.string
