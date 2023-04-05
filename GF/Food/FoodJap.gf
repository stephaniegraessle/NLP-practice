-- Japanese concrete syntax for Food
concrete FoodJap of Food = {
  lincat
    Phrase, Item, Kind, Quality = {s : Str} ;

  lin
    Is item quality = {s = item.s ++ "は" ++ quality.s ++ "です"} ;
    This kind = {s = "この" ++ kind.s} ;
    That kind = {s = "その" ++ kind.s} ;
    QKind quality kind = {s = quality.s ++ kind.s} ;
    Wine = {s = "ワイン"} ;
    Cheese = {s = "チーズ"} ;
    Fish = {s = "魚"} ;
    Rice = {s = "ご飯"} ;
    Very quality = {s = "とても" ++ quality.s} ;
    Fresh = {s = "新鮮"} ;
    Warm = {s = "温かい"} ;
    Italian = {s = "イタリアの"} ;
    Expensive = {s = "高い"} ;
    Delicious = {s = "美味しい"} ;
    Boring = {s = "つまらない"} ;
    Odd = {s = "変"} ;
    Shitty = {s = "くそ"} ;
}
