-- Grammatical Framework tutorial
abstract Food = { -- abstract syntax for module header Food

  flags startcat = Phrase ; -- start category is Phrase

  cat -- category declarations
    -- Phrase can be build by assigning a Quality to an Item (e.g., 'this cheese is Italian')
    Phrase ; Item ; Kind ; Quality ;

  fun -- function declaration
    -- Item built from a Kind by prefixing 'this' or 'that' (e.g., 'this wine')
    Is : Item -> Quality -> Phrase ;
    This, That : Kind -> Item;

    -- Kind either atomic (e.g., 'cheese' or formed quantifying given Kind with a Quality (e.g., 'Italian cheese')
    QKind : Quality -> Kind -> Kind ;
    Wine, Cheese, Fish : Kind ; 

    -- string is ambiguous if it parses to more than one tree (e.g., 'fish with cheese with wine' parses to both 'With (With Fish Cheese) Wine' and 'With Fish (With Cheese) Wine')
    --With : Kind -> Kind -> Kind ;

    -- Quality either atomic (e.g., 'Italian') or built by modifying given Quality with the word 'very' (e.g., 'very warm')
    Very : Quality -> Quality ;
    Fresh, Warm, Italian, Expensive, Delicious, Boring : Quality;
}

-- Example Phrase:
-- Is (This (QKind Delicious (QKind Italian Wine))) (Very (Very Expensive))
-- this delicious Italian wine is very very expensive
