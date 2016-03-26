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

