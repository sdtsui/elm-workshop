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

