--Opening Questions

  - Not "how much JS do you get"?
  - What patterns can JS take from ?
    - Can we compare Elm to Redux? 

___________________________________
___________________________________
___________________________________


Elm Architeture:
    - Model, View Update,
    - Effects and Tasks ....



      ---- > Side effects /= tasks.
          Tasks vs Side Effects...

            Main Difference between tasks and side effects:
                Side Effect:  has effects, AND return value
                "Managed Effects", TASKS: ONLY return value :: value can describe how you do a thing --- 
                  --- > 

___________________________________
___________________________________
___________________________________


3 ways: 
  Elm.worker
    --Translating iterop with JS -> dispatches an action
    Signal.map setApiKey githubApiKey
  Elm.embed

___________________________________
___________________________________
___________________________________

List, Task, Signal

> List.map
<function> : (a -> b) -> List a -> List b
> Task.map
<function> : (a -> b) -> Task.Task c a -> Task.Task c b
> Signal.map
<function: map> : (a -> b) -> Signal.Signal a -> Signal.Signal b
>


___________________________________
___________________________________
  "Not FP thing, more of a type system thing"
    - type system prevents errors ("list is paramaterized")
    - using containers is how lists are paramaterized? 
      - Containers guarantee those operations always succeed:
          Guaranteed by type paramater.

___________________________________
___________________________________
___________________________________
Q: Containers: easy to think of as lists/arrays
  - 

Maybe.map
"Maybe is a container that has 0 or 1 things in it."






--Main : 


  elm.main vs elm.fullscreen. 
      - put the elm app into a div, etc. 



___________________________________
___________________________________
___________________________________


Pipelining example: 
  [1,2,3] 
    |> List.map (\num -> num * 2) --last arg [2, 4, 6]
    |> List.map (\num -> num > 2) -- last arg [4,6]
    |> List.map negate -- last arg [-4, -6]
    |> List.reverse -- [-6, -4]
    |> Set.fromList
    |> Set.toList
    |> List.map toString
    |> List.map (\str -> li [] [text str])
    |> ul []

Dictionary Example: 
  JS { } is between Dict and Record
    . access : Record. Not possible with dict 
    Dict: different key types (not just string), any type of value (but must be consistent)


  nums = 
    [0, 1, 2, 3, 4, 5, 6]
      |> List.map (\num -> (num, toString (num * 2) ))
      |> Dict.fromList
      -- case 1 
      |> Dict.get 6 -- returns maybe. Just, 6's value in this case
      -- case 2  
      |> Dict.get 99 -- returns nothing
      -- case 3 
      |> Dict.get "ads" -- type error


      other methods:
        Dict.insert 101 "dalmations"

        Build: 
          empty
          singlton : one key value pair


          foo : Dict comprable (Dict comparable' someOtherValue)
          "all of the children in an entire dict have to have the same type of value"

___________________________________
___________________________________
  stylistic:
    val
     |> op1
     |> op2
     |> op3

    vs
    --composing (glue a small number of operations together)
    op1
      >> op2
      >> op3
      >> op4 


    List.filter (.isVisible >> not) 
    List.filter (not >> .isVisible)
    |> pipline operator <|    -- val | op
    >> composition operator <<    -- >> first