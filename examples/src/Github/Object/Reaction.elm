-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.Reaction exposing (content, createdAt, databaseId, id, reactable, user)

import Github.Enum.ReactionContent
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


{-| Identifies the emoji reaction.
-}
content : SelectionSet Github.Enum.ReactionContent.ReactionContent Github.Object.Reaction
content =
    Object.selectionForField "content" [] Github.Enum.ReactionContent.decoder


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Github.Scalar.DateTime Github.Object.Reaction
createdAt =
    Object.selectionForField "createdAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


{-| Identifies the primary key from the database.
-}
databaseId : SelectionSet (Maybe Int) Github.Object.Reaction
databaseId =
    Object.selectionForField "databaseId" [] (Decode.int |> Decode.nullable)


id : SelectionSet Github.Scalar.Id Github.Object.Reaction
id =
    Object.selectionForField "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| The reactable piece of content
-}
reactable : SelectionSet decodesTo Github.Interface.Reactable -> SelectionSet decodesTo Github.Object.Reaction
reactable object_ =
    Object.selectionForCompositeField "reactable" [] object_ identity


{-| Identifies the user who created this reaction.
-}
user : SelectionSet decodesTo Github.Object.User -> SelectionSet (Maybe decodesTo) Github.Object.Reaction
user object_ =
    Object.selectionForCompositeField "user" [] object_ (identity >> Decode.nullable)
