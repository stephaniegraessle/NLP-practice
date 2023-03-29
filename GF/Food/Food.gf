-- Grammatical Framework tutorial
abstract Food = { -- abstract syntax for module header Food

  flags startcat = Phrase ; -- start category is Phrase

  cat -- category declarations
    Phrase ; Item ; Kind ; Quality ; -- Phrase can be build by assigning a Quality to an Item (e.g., 'this cheese is Italian')

  fun -- function declaration
    Is : Item -> Quality -> Phrase ; -- Item built from a Kind by prefixing 'this' or 'that' (e.g., 'this wine')
    This, That : Kind -> Item;
    QKind : Quality -> Kind -> Kind ;
    Wine, Cheese, Fish : Kind ; -- Kind either atomic (e.g., 'cheese' or formed quantifying given Kind with a Quality (e.g., 'Italian cheese')
    Very : Quality -> Quality ;
   Fresh, Warm, Italian, Expensive, Delicious, Boring : Quality; -- Quality either atomic (e.g., 'Italian') or built by modifying given Quality with the word 'very' (e.g., 'very warm')
}

-- Example Phrase:
-- Is (This (QKind Delicious (QKind Italian Wine))) (Very (Very Expensive))
-- this delicious Italian wine is very very expensive
