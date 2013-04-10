urbanite
========

Urbanite: Boston is an app that allows users to access 'hidden' cultural gems in their local environment by leveraging social media streams from local venues and cultural organizations like bands, artists, authors, chefs, etc. It's based on the idea that most major media outlets don't necessarily know or report on what bands are playing at the Middle East or what movies are at the Brattle, but those places are promoting their lineups on their own Facebook and Twitter feeds. By aggregating those feeds by category and sub-category, we can let people explore cultural events in their neighborhoods. 

Originally written by the fuzzy-narwhal team at the Boston Civic Hack Day Challenge (Including Mark Chang, Rachael Stedman, Harlan Weber, Nick Hays, Chris Marstall, and others) the app was originally written in Rails and used a scraper to access the FB feeds of a curated list of culturemakers in Boston. In the future, we would like to explore on-site modes of use, mobile web or native mobile implementations, and a way for new venues and cultural groups to make their way on to the list without explicit moderation.

Original repo can be found here https://github.com/fuzzy-narwhal

CfA Collaboration Doc: https://docs.google.com/document/d/13J4-kye8bq-Cr-rbusUTN-sNSMfPnfD8jvCw0Zi3wm4/edit?usp=sharing


Want to Collaborate?
====================

If you are interested in helping out here is how to get started:

Windows:
--------
* Install Rails:
	* Download installer and install: http://railsinstaller.org/
* Running Mongodb:
	* Download:  
		* 32 Bit: http://downloads.mongodb.org/win32/mongodb-win32-i386-2.4.1.zip
		* 64 Bit: http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2.4.1.zip
	* Running Mongodb Server:
		* Open Command Prompt (CMD): Start->Run and write: `cmd`
		* In CMD run the following command: `move C:\<path_to_mongo>\mongodb-win32-* C:\<path_to_mongo>\mongodb`
		* Create the data directory: `mkdir C:\<path_to_where_you_want_to_put_your_data>\data\db`
		* Start the server: `C:\<path_to_mongo>\mongodb\bin\mongod.exe --dbpath C:\<path_to_where_you_want_to_put_your_data>\data`
		* Leave the CMD screen open, to close simply press Ctrl+c
		* Official Mongo Instructions:  http://docs.mongodb.org/manual/tutorial/install-mongodb-on-windows/
* Installing Github:
	* Download installer and install: http://git-scm.com/downloads
	* Run Git Bash and perform initial configuration:  https://help.github.com/articles/set-up-git#platform-windows
	* Create a local copy of urbanite:
		* In Git Bash run the following command: `git clone git://github.com/codeforboston/urbanite.git`
* Create a Sites directory, in cmd: `mkdir C;\Sites`
* In the Command Prompt with Ruby and Rails (Start->Search:Ruby) run the following command to install all dependencies: `bundle install`
	* Now start the server: `rails server`

Mac OSX:
--------
* Install Ruby:
	* It would be a good idea to install Ruby through
          [rvm](https://rvm.io/rvm/install/) but that is not necessary. rvm will
          isntall Ruby 2.0.0 (at the time of this writing). More resources on
          how to install Ruby can be found
          [here](http://www.ruby-lang.org/en/downloads/)
* Install Mongodb:
        * The easiest way to install Mongodb is through
          [homebrew](http://mxcl.github.io/homebrew/). Once brew is installed,
          installing mongodb is as easy as: `brew install mongodb`
	* Running Mongodb Server:
		* After the install, brew will show some instructions on how to
                  run Mongodb; the easiest way is to just type `mongod` in a
                  terminal window.
		* Optionally, you can create a data directory and start the
                  server by using: `mongod --dbpath \<path_to_where_you_want_to_put_your_data>\data`
		* Leave the terminal screen open, to close simply press Ctrl+c
		* Official Mongo [Installation Instructions](http://docs.mongodb.org/manual/tutorial/install-mongodb-on-os-x/)
* Getting the sources:
	* Create a Fork of the project, and clone it to your local mac 
        * run `bundle install`
	* Now start the server: `rails server`
	* Navigate to http://localhost:3000 


Troubleshooting:
----------------
**Rails Server does not start up:**  Make sure mongodb is running
**My Gemfile.lock is different from the one in the repo:** (Open to discussion). Advice is that Gemfile.lock should be in the repo
(http://stackoverflow.com/questions/4151495/should-gemfile-lock-be-included-in-gitignore),
but it seems that different platforms treat the gem differently, so your file
might differ from the one in the repository. Unless you have added something
valuable to the Gem file itself, it's probably better not to commit this file?

Working on the project:
-----------------------
* In the Github Urbanite Page go to the Issues section and grab and issue you want to try and tackle! Feel free to comment and ask for help on any issues, or create new issues if you notice anything wrong.
