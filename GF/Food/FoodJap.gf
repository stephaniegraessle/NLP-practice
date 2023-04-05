-- Japanese concrete syntax for Food
concrete FoodJap of Food = {
  lincat
    Phrase, Item, Kind, Quality = {s : Str} ;

  lin
    Is item quality = {s = item.s ++ "は" ++ quality.s ++ "です"} ;
    This kind = {s = "この" ++ kind.s} ;
    That kind = {s = "その" ++ kind.s} ;
    QKind quality kind = {s = quality.s ++ kind.s} ;
    --With kind1 kind2 = {s = kind1.s ++ "with" ++ kind2.s} ; -- ambiguous string
    Wine = {s = "ワイン"} ;
    Cheese = {s = "チーズ"} ;
    Fish = {s = "魚"} ;
    Very quality = {s = "とても" ++ quality.s} ;
    Fresh = {s = "新鮮"} ;
    Warm = {s = "温かい"} ;
    Italian = {s = "イタリアの"} ;
    Expensive = {s = "高い"} ;
    Delicious = {s = "美味しい"} ;
    Boring = {s = "つまらない"} ;
}
