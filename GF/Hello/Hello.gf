-- Grammatical Framework tutorial
-- a "Hello World" grammar
abstract Hello = { -- abstract syntax, module header 'Hello'

	flags startcat = Greeting; -- set default start category for parsing and generation

	cat Greeting ; Recipient ; -- category declarations

	fun -- function declaration
		Hello : Recipient -> Greeting ; -- greet a 'Recipient'
		World, Mum, Friends : Recipient ; -- 'Recipient' can be any of three
}
