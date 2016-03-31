import Color exposing (..)
import Graphics.Collage exposing (..)
import Graphics.Element exposing (..)
import Time exposing (..)

main =
  Signal.map heartBeat (every millisecond)


heartBeat t = collage 300 300 [heart |> rotate (cos(t/1000))]


heart = group [move (0,0) (filled red (ngon 4 50))
              , move (20,20) (filled red (circle 36))
              , move (-20,20) (filled red (circle 36))]
