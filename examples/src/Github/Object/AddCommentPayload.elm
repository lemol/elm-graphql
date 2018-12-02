-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.AddCommentPayload exposing (clientMutationId, commentEdge, subject, timelineEdge)

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


{-| A unique identifier for the client performing the mutation.
-}
clientMutationId : SelectionSet (Maybe String) Github.Object.AddCommentPayload
clientMutationId =
    Object.selectionForField "clientMutationId" [] (Decode.string |> Decode.nullable)


{-| The edge from the subject's comment connection.
-}
commentEdge : SelectionSet decodesTo Github.Object.IssueCommentEdge -> SelectionSet decodesTo Github.Object.AddCommentPayload
commentEdge object_ =
    Object.selectionForCompositeField "commentEdge" [] object_ identity


{-| The subject
-}
subject : SelectionSet decodesTo Github.Interface.Node -> SelectionSet decodesTo Github.Object.AddCommentPayload
subject object_ =
    Object.selectionForCompositeField "subject" [] object_ identity


{-| The edge from the subject's timeline connection.
-}
timelineEdge : SelectionSet decodesTo Github.Object.IssueTimelineItemEdge -> SelectionSet decodesTo Github.Object.AddCommentPayload
timelineEdge object_ =
    Object.selectionForCompositeField "timelineEdge" [] object_ identity
