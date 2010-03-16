### Personal Base Rails w/Authlogic & Cucumber ###
* * *

All Setup for [Authlogic](http://github.com/binarylogic/authlogic/) is done via the guide at Asciicasts here => [http://asciicasts.com/episodes/160-authlogic](http://asciicasts.com/episodes/160-authlogic)
All Setup for [Cucumber](http://github.com/aslakhellesoy/cucumber) is done via the steps provided by the repo on github ([here](http://github.com/aslakhellesoy/cucumber))

* Has Minimal styling in *public/stylesheets/style.css*
* Current root is set to *user_sessions/new (login form)*. You should change this in *config/routes.rb* once you have 
	created another controller
* Tests added in Cucumber for logging in/out and registering. They can be found in features/. Basic usage to run the tests: "cucumber features/" (sans quotes)
* Unit tests added for User model in test/unit. These can be run by "rake test". ([Or read the documentation](http://guides.rubyonrails.org/testing.html))