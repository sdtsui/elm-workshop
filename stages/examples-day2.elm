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


Piping: 
  [1,2,3] 
    |> List.map (\num -> num * 2) --last arg [2, 4, 6]
    |> List.map (\num -> num > 2) -- last arg [4,6]
    |> List.map negate -- last arg [-4, -6]
    |> List.reverse -- [-6, -4]
