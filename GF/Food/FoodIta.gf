-- Italian concrete syntax for Food
-- just replace English words with their dictionary equivalents

    concrete FoodIta of Food = {
  
      lincat
        Phrase, Item, Kind, Quality = {s : Str} ;
  
      lin
        Is item quality = {s = item.s ++ "è" ++ quality.s} ;
        This kind = {s = "questo" ++ kind.s} ;
        That kind = {s = "quel" ++ kind.s} ;
        -- rule changed order from English:
        -- QKind quality kind = {s = quality.s ++ kind.s} ;
        -- (e.g., 'vino Italiano' instead of 'Italian wine')
        QKind quality kind = {s = kind.s ++ quality.s} ;
        Wine = {s = "vino"} ;
        Cheese = {s = "formaggio"} ;
        Fish = {s = "pesce"} ;
        Very quality = {s = "molto" ++ quality.s} ;
        Fresh = {s = "fresco"} ;
        Warm = {s = "caldo"} ;
        Italian = {s = "italiano"} ;
        Expensive = {s = "caro"} ;
        Delicious = {s = "delizioso"} ;
        Boring = {s = "noioso"} ;
    }
