import List exposing (..)
import Graphics.Element exposing (..)

type Emotions = Happy | Sad | Angry | Scared
type Actions = Fight | Help | Cry 

{-
A type is a name for the collection of values
In this, there are two types (a.k.a data constructor), 'Emotions' and 'Actions'.
Emotions have value constructors Happy, Sad, etc.
Actions have value constructors Fight, Help, etc.
-}

personIs : Emotions -> Actions 
personIs a = case a of
    Happy -> Fight
    Sad -> Help
    otherwise -> Cry

{-
'personIs' the name of the funciton
It takes one argument 'a' which is of type Emotions 
This function uses pattern matching. It matches a 
variable to a value. 
Remember to use the otherwise keywords if you don't
cover all your cases.
-}

type ListI = Cons Int ListI | Nil
{-
ListI is a data constructor
Cons and Nil are value constructors
-}

listOfInt : List Int
listOfInt = [1,2,3,4]

listOfListInt : List (List Int)
listOfListInt = [[1,2,3],[4,5,6]]
{-
A List is a sequence of values of the same type.
listOfInt is a list of integers
listOfListInt is a list of list integers
-}
addValueToList : List Int
addValueToList = 1::[1,2]
{-
addValueToList = [1,2,3]
(::) : a-> List a -> List a
(::) takes a value and puts it into a list of the same value
-}

addListToList : List Int
addListToList = [1,2,3] ++ [4,5,6] 

{-
addListToList = [1,2,3,4,5,6]
(++) : List a -> List a -> List a
(++) takes two lists and put them together
-}

sum : List Int -> Int 
sum nums = case nums of
    (x::xs) -> x + sum xs
    [] -> 0

{-
The function sum is used for adding and entire list
of integers together. In this case, the input is a 
List of integers. The case statement checks to see if
the list is empty or not. If it is not empty, it goes
to the first case. The first value of the list is seperated
from the rest of the list. The sum function gets called again with
the input being the rest of the list. If the list is empty,
it is replaced with 0. 
-}    

type alias Name = String
type alias Birthday = Int
{-
Sometimes we want to give more discriptive names
than just String, Int etc., we can use type alias and
make it clearer
-}



