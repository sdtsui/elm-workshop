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



--operators
++, concat (append to list)
+, addition
-- comments
parens for precedence


-- node [list of attributes] [list of children]
--commas
