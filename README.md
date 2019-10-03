# Be In The Know (BKnow)

## Description
Many people are not aware of situations where they could make a difference. This might be because they do not have social media accounts or the time to keep on top of current events. *In The Know* makes it easy for users to not only be aware of important events, but to also become part of the change the world needs.

It is an interactive application that allows users to get the word out of important causes, catastrophes, or achievements. It allows users to contribute.

## Built With

* [Ruby](https://www.ruby-lang.org/en/) - version 2.6.3
* [Rails](https://guides.rubyonrails.org/) - version 5.2.3
* [ActiveRecord](https://guides.rubyonrails.org/active_record_basics.html)


## Current Authors

* **Mohammad Adeel**
* **Simcha Greenbaum**
* **Wendy Calderon**
* **Danielle Alba**
* **Sarah Paz**
* **Dylan Clements**



## Plans
See dev_log file add to it !

## Installation & Usage

### Before you can test or use this application, you must:

(1) Install Ruby: https://www.ruby-lang.org/en/documentation/installation/ <br />
(2) Install Ruby on Rails: https://guides.rubyonrails.org/getting_started.html <br />
(3) Install PostGres: https://www.tutorialspoint.com/postgresql/postgresql_environment.htm <br />

### Next:

(1) Fork this repository to your account <br />
(2) Open your terminal or command prompt and clone this repository to a directory of your choice <br />
(3) Open the cloned repo's directory in your favorite editor (e.g. Atom, Visual Studio Code, Sublime, Brackets) <br />
(4) In the Terminal or Command Prompt, navigate to the 'BeInTheKnow_backend' directory <br />
(5) Next, type 'bundle install'. This should install all of the required gems <br />
(6) Create a '.env' file in your root directory and paste the following into it:

```
POSTGRES_USERNAME= replace-with-your-postgres-username-here-in-quotes
POSTGRES_PASSWORD= replace-with-your-postgres-password-here-in-quotes
POSTGRES_HOST='localhost'
POSTGRES_DB='BeInTheKnow_backend'
POSTGRES_TEST='BeInTheKnow_backend_test'
POSTGRES_DEVELOPMENT='BeInTheKnow_backend_development'
POSTGRES_PRODUCTION='BeInTheKnow_backend_production'
```

Note: Remember to replace the username & password with whatever you use to log into your postgres database.<br />
<br />
(7) Don't forget Run `rake db:create` <br />
(8) Run `rake db:migrate` to run the migrations <br />
(9) Type `rails s -p 3001` into the terminal to launch the server <br />
(10) Open your browser and navigate to 'http://localhost:3001' (press ctrl-C or control-C while in the terminal to exit.)<br />

### Running the tests
To run the tests type  `rspec` in your terminal.

## Contributing

### To contribute: <br />
<br />

**If you have NOT followed the instructions to fork, clone, and set up the repository on your machine:**

(1) Follow the instructions in the *Usage & Instructions* section if you have not already done so <br />
(2) Continue to *(3)* once you have forked the repo, cloned it, and gotten the repo working on your machine <br />


**If you HAVE followed the instructions to fork, clone, and set up the repository on your machine:**

(3) make sure you are in the **master** branch when you start<br />
```
  git checkout master
```
<br />

(4) backup work you want to keep & update your forked repo<br />

(5) **To update your forked & cloned repo type:**


 ```

 # all names, including the remote name and branch, are case-sensitive


 # if you have not already done so, add a named remote to the source repo
 git remote add upstream https://github.com/CodeToJoyForever/BeInTheKnow_backend.git


 # get the info from the source repo
 git fetch upstream


 # merge the info to your master
 git merge upstream/master


 # push & update your forked repo
 git push origin master


 # ** This will update your clone and fork **


 ```


(6) figure out what it is you want to add or edit <br />
(7) create a **new branch** for it on your cloned repo <br />
(8) (preferebly) add tests for the functionality that you want to add <br />
(9) make your additions or changes <br />
(10) test that the code is clean <br />
(11) run the tests to make sure the changes didn't break anything <br />
(12) stage the additions/changes (using **add**) <br />
(13) commit the additions/changes with a proper commit message <br />
(14) push it up to your repository (the **new branch**) ```git push origin branch-name``` <br />
(15) create a new pull request and include a brief description of & reason for the change <br />
(16) wait to see if your pull request gets accepted :) <br />

## Reporting Issues

You may report bugs & issues on GitHub at https://github.com/CodeToJoyForever/BeInTheKnow_backend/issues

## Code of Conduct

Everyone interacting in BeInTheKnow's codebases, issue trackers, chat rooms, and mailing lists is expected to follow the [code of conduct](https://github.com/CodeToJoyForever/BeInTheKnow_backend/blob/master/CODE_OF_CONDUCT.md).

## License
Not yet open source.
