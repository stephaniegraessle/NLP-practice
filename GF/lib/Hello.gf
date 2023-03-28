-- a "Hello World" grammar
abstract Hello = { -- 'Hello' = module header

	flags startcat = Greeting;

	cat Greeting ; Recipient ;

	fun
		Hello : Recipient -> Greeting ;
		World, Mum, Friends : Recipient ;
}
