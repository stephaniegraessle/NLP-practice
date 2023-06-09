-- Grammatical Framework tutorial
-- concrete syntax FoodEng
concrete FoodEng of Food = {
  lincat
    Phrase, Item, Kind, Quality = {s : Str} ;

  lin
    Is item quality = {s = item.s ++ "is" ++ quality.s} ;
    This kind = {s = "this" ++ kind.s} ;
    That kind = {s = "that" ++ kind.s} ;
    QKind quality kind = {s = quality.s ++ kind.s} ;
    --With kind1 kind2 = {s = kind1.s ++ "with" ++ kind2.s} ; -- ambiguous string
    Wine = {s = "wine"} ;
    Cheese = {s = "cheese"} ;
    Fish = {s = "fish"} ;
    Rice = {s = "rice"} ;
    Very quality = {s = "very" ++ quality.s} ;
    Fresh = {s = "fresh"} ;
    Warm = {s = "warm"} ;
    Italian = {s = "Italian"} ;
    Expensive = {s = "expensive"} ;
    Delicious = {s = "delicious"} ;
    Boring = {s = "boring"} ;
    Odd = {s = "odd"} ;
    Shitty = {s = "shitty"} ;
}
