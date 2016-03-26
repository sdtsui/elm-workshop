--repl
> addOne num = num + 1
<function> : number -> number
> List.map addOne [2, 5 ,9]
[3,6,10] : List number
> List.map (\num -> num + 1) [2, 5, 9]
[3,6,10] : List number
> List.map (\num -> num * 1) [2, 5, 9]
[2,5,9] : List number


--funcs
List.length shelfNames
-- order of declarations don't matter


--operators
++, concat (append to list)
+, addition
-- comments
parens for precedence


-- node [list of attributes] [list of children]
-- leading commas

-- currying related to hindley milner


-- elm live:
  -- rebuild and refresh on save
  -- automatically formats for you


-- type alias
  "More concide "
-- type annotation 

-- compiling things...
  elm make Main.elm --warn --output /dev/null


--using let
  let 
    --declarations
  in 
    --expression to evaluate
  --* 1/2 exceptions for which whitespace mattters, indentation not aligned
  -- only 3 scoping rules:
    -- top level declarations
    -- function arguments
    -- local scoping through let
    -- later: case expressions




-- views are rebuilt : does behind-the-scenes diffing

-- record update syntax : 
    { model | numShelves = model.numShelves + }

-- boilerplate: Signals / Addresses, don't worry about them ::: 
  Signal: value that changes over time (HTML in this case)
    - read only
  Address: points to a signal
    - write only
    --"changes in elm are all done through return values"

-- paramaterized type:
  List, signal, address
  -- no mixed list, can't get errors when iterating


{-
-- Union type :  ways to use
  simplest: enumeration of values. i.e. Bool = True | False ---- all unionType values have to be capitalized.
    --- useful in StartApp:
        - compiler checks if all types are used
        - self documenting, for new developers
        - asks for when they're out of sync...
           *** Idea: Checking all action types. *** 
________________________


-}
List.head [1,2,3]

type Maybe =
    Nothing | Just value

Elm is very explicit about corner cases (null, undefined). 
  - "It's because all of Elm's APIs are defined such that instead of crashing when you don't catch it, it will tell you."
  "In our 6 months of using Elm at work, we have not had a single runtime exception make it through to production."
  maybe: container that holds 0 values (nothing)
  or one value (Just)

--Type paramaters, a
> List.head
<function> : List a -> Maybe.Maybe a
   -- only rule is they have to be consistent (i.e. the same type)
> List.head [1,2,3]
Just 1 : Maybe.Maybe number
  --- ### There are 3 exceptions to this
    {-
      1. Number (can be decomposed into float and int)
        > ceiling
        <function: ceil> : Float -> Int
        > floor
        <function: floor> : Float -> Int
      2. Appendable: combine: either strings, lists, arrays. 
        Main differemnce: 
          - list: linked list, generally more efficient for operations in elm ... 
            ```
            import Array
            Array.formList [1,2,3]
            Array.get 2 (Array.fromList [1,2,3])
            ```
          - array: array, allows you to access things by positions
      3. Comparable: sets, dictionary 
    }


-- decoders: 
http://package.elm-lang.org/packages/elm-lang/core/3.0.0/Json-Decode

import 
nameAndAge : Decoder (String,Int)
nameAndAge =
    object2 (,)
      ("name" := string)
      ("age" := int)

      just/nothing
      ok/error

-}


---------------------
  ---------------------
    ---------------------

decoder : Decoder SearchResult
success: OK searchResult
error: Err String
-- types : like searchResult, can be thought of as convenience constructors / functions.

------------------------------------------
  ---------------------
    ---------------------


--All operators are functions in Elm.
    5 + 6 ,  -- infix style
    (+) 5 6
    (:=) --- need  to import decoder
      <function> : String -> Json.Decode.Decoder a -> Json.Decode.Decoder a
    "Better idea not to define operators..."

_________