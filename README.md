# NBNavigator

程序启动，注册url与类的关系

   	Navigator.validScheme = "myapp"
    
    Navigator.register("hello", Hello.self)
    Navigator.register("world", World.self)
    
可以被导航器打开的类，实现NBNavigatable协议。协议里的唯一方法是被打开时要做的事，在这里你可以做任何事情，任何事情，不仅仅是页面跳转，需要的参数都可以在NBURL里取到

	extension Hello : NBNavigatable {
    	static func opened(_ url: NBURL) -> Any? {
        	//...
    	}
	}
    
最后，用导航器来打开吧

   	let url = NBURL("myapp://hello?title=xxx")
    Navigator.open(url)
    
怎么样，是不是炒鸡方便啊