module Schema.MenuItem exposing (..)

import GraphqElm.Argument as Argument exposing (Argument)
import GraphqElm.Field as Field exposing (Field, FieldDecoder, TypeLocked(TypeLocked))
import GraphqElm.Object as Object exposing (Object)


type Kind
    = Kind


menuItem : (a -> constructor) -> Object (a -> constructor) Kind
menuItem constructor =
    Object.object constructor


id : TypeLocked (FieldDecoder String) Kind
id =
    Field.string "id"
        |> TypeLocked


name : TypeLocked (FieldDecoder String) Kind
name =
    Field.string "name"
        |> TypeLocked


contains : String -> Argument
contains =
    Argument.string "contains"


idArg : String -> Argument
idArg =
    Argument.string "id"
