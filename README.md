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
* In the Github Urbanite Page go to the Issues section and grab and issue you want to try and tackle! Feel free to comment and ask for help on any issues, or create new issues if you notice anything wrong.

		
