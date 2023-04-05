-- Finnish concrete syntax for Food
concrete FoodFin of Food = {
  lincat
    Phrase, Item, Kind, Quality = {s : Str} ;

  lin
    Is item quality = {s = item.s ++ "on" ++ quality.s} ;
    This kind = {s = "tämä" ++ kind.s} ;
    That kind = {s = "se" ++ kind.s} ;
    QKind quality kind = {s = quality.s ++ kind.s} ;
    Wine = {s = "viini"} ;
    Cheese = {s = "juusto"} ;
    Fish = {s = "kala"} ;
    Rice = {s = "riisi"} ;
    Very quality = {s = "todella" ++ quality.s} ;
    Fresh = {s = "tuore"} ;
    Warm = {s = "lämmin"} ;
    Italian = {s = "italialainen"} ;
    Expensive = {s = "kallis"} ;
    Delicious = {s = "herkullinen"} ;
    Boring = {s = "tylsä"} ;
    Odd = {s = "vinha"} ;
    Shitty = {s = "paskaa"} ;
}