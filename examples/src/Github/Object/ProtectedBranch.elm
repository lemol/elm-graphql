-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.ProtectedBranch exposing (PushAllowancesOptionalArguments, ReviewDismissalAllowancesOptionalArguments, creator, hasDismissableStaleReviews, hasRequiredReviews, hasRequiredStatusChecks, hasRestrictedPushes, hasRestrictedReviewDismissals, hasStrictRequiredStatusChecks, id, isAdminEnforced, name, pushAllowances, repository, requiredStatusCheckContexts, reviewDismissalAllowances)

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


{-| The actor who created this protected branch.
-}
creator : SelectionSet decodesTo Github.Interface.Actor -> SelectionSet (Maybe decodesTo) Github.Object.ProtectedBranch
creator object_ =
    Object.selectionForCompositeField "creator" [] object_ (identity >> Decode.nullable)


{-| Will new commits pushed to this branch dismiss pull request review approvals.
-}
hasDismissableStaleReviews : SelectionSet Bool Github.Object.ProtectedBranch
hasDismissableStaleReviews =
    Object.selectionForField "hasDismissableStaleReviews" [] Decode.bool


{-| Are reviews required to update this branch.
-}
hasRequiredReviews : SelectionSet Bool Github.Object.ProtectedBranch
hasRequiredReviews =
    Object.selectionForField "hasRequiredReviews" [] Decode.bool


{-| Are status checks required to update this branch.
-}
hasRequiredStatusChecks : SelectionSet Bool Github.Object.ProtectedBranch
hasRequiredStatusChecks =
    Object.selectionForField "hasRequiredStatusChecks" [] Decode.bool


{-| Is pushing to this branch restricted.
-}
hasRestrictedPushes : SelectionSet Bool Github.Object.ProtectedBranch
hasRestrictedPushes =
    Object.selectionForField "hasRestrictedPushes" [] Decode.bool


{-| Is dismissal of pull request reviews restricted.
-}
hasRestrictedReviewDismissals : SelectionSet Bool Github.Object.ProtectedBranch
hasRestrictedReviewDismissals =
    Object.selectionForField "hasRestrictedReviewDismissals" [] Decode.bool


{-| Are branches required to be up to date before merging.
-}
hasStrictRequiredStatusChecks : SelectionSet Bool Github.Object.ProtectedBranch
hasStrictRequiredStatusChecks =
    Object.selectionForField "hasStrictRequiredStatusChecks" [] Decode.bool


id : SelectionSet Github.Scalar.Id Github.Object.ProtectedBranch
id =
    Object.selectionForField "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| Can admins overwrite branch protection.
-}
isAdminEnforced : SelectionSet Bool Github.Object.ProtectedBranch
isAdminEnforced =
    Object.selectionForField "isAdminEnforced" [] Decode.bool


{-| Identifies the name of the protected branch.
-}
name : SelectionSet String Github.Object.ProtectedBranch
name =
    Object.selectionForField "name" [] Decode.string


type alias PushAllowancesOptionalArguments =
    { first : OptionalArgument Int
    , after : OptionalArgument String
    , last : OptionalArgument Int
    , before : OptionalArgument String
    }


{-| A list push allowances for this protected branch.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
pushAllowances : (PushAllowancesOptionalArguments -> PushAllowancesOptionalArguments) -> SelectionSet decodesTo Github.Object.PushAllowanceConnection -> SelectionSet decodesTo Github.Object.ProtectedBranch
pushAllowances fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "pushAllowances" optionalArgs object_ identity


{-| The repository associated with this protected branch.
-}
repository : SelectionSet decodesTo Github.Object.Repository -> SelectionSet decodesTo Github.Object.ProtectedBranch
repository object_ =
    Object.selectionForCompositeField "repository" [] object_ identity


{-| List of required status check contexts that must pass for commits to be accepted to this branch.
-}
requiredStatusCheckContexts : SelectionSet (Maybe (List (Maybe String))) Github.Object.ProtectedBranch
requiredStatusCheckContexts =
    Object.selectionForField "requiredStatusCheckContexts" [] (Decode.string |> Decode.nullable |> Decode.list |> Decode.nullable)


type alias ReviewDismissalAllowancesOptionalArguments =
    { first : OptionalArgument Int
    , after : OptionalArgument String
    , last : OptionalArgument Int
    , before : OptionalArgument String
    }


{-| A list review dismissal allowances for this protected branch.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
reviewDismissalAllowances : (ReviewDismissalAllowancesOptionalArguments -> ReviewDismissalAllowancesOptionalArguments) -> SelectionSet decodesTo Github.Object.ReviewDismissalAllowanceConnection -> SelectionSet decodesTo Github.Object.ProtectedBranch
reviewDismissalAllowances fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "reviewDismissalAllowances" optionalArgs object_ identity
