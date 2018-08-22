-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Union.CollectionItemContent exposing (..)

import Github.InputObject
import Github.Interface
import Github.Object
import Github.Scalar
import Github.Union
import Graphql.Field as Field exposing (Field)
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.OptionalArgument exposing (OptionalArgument(Absent))
import Graphql.SelectionSet exposing (FragmentSelectionSet(FragmentSelectionSet), SelectionSet(SelectionSet))
import Json.Decode as Decode


selection : (Maybe typeSpecific -> constructor) -> List (FragmentSelectionSet typeSpecific Github.Union.CollectionItemContent) -> SelectionSet constructor Github.Union.CollectionItemContent
selection constructor typeSpecificDecoders =
    Object.unionSelection typeSpecificDecoders constructor


onRepository : SelectionSet decodesTo Github.Object.Repository -> FragmentSelectionSet decodesTo Github.Union.CollectionItemContent
onRepository (SelectionSet fields decoder) =
    FragmentSelectionSet "Repository" fields decoder


onOrganization : SelectionSet decodesTo Github.Object.Organization -> FragmentSelectionSet decodesTo Github.Union.CollectionItemContent
onOrganization (SelectionSet fields decoder) =
    FragmentSelectionSet "Organization" fields decoder


onUser : SelectionSet decodesTo Github.Object.User -> FragmentSelectionSet decodesTo Github.Union.CollectionItemContent
onUser (SelectionSet fields decoder) =
    FragmentSelectionSet "User" fields decoder