
import Graphics.Collage exposing (..)
import Graphics.Element exposing (show)

type PersonState = Stranger | Acquaintance | Friend | Enemies |
    BFF | LongLostSibiling | Nemesis | Frenemy | RichFriend Int | Enemy

learnNames x = case x of 
    Stranger -> Acquaintance
    everthingElse -> everthingElse

bubbleGumOnChair x = case x of
    Stranger -> Enemies
    Friend ->  Frenemy
    Acquaintance -> Enemy
    Enemy -> Nemesis
    BFF -> BFF
    otherwise -> x

positiveDNATest x = LongLostSibiling

winTheLottery: PersonState -> PersonState
winTheLottery x = Friend

apologize x = case x of
    Enemy -> Frenemy
    Frenemy -> Friend
    otherwise -> x

main = show (positiveDNATest Nemesis)

type Maybe a = Nothing | Just a