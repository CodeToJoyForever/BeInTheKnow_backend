# Be In The Know (BKnow)

## Background


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

- Create Tests
- Create models
- Create Tables
- Create Controllers

## Installation & Usage

##### Before you can test or use this application, you must:

(1) Install Ruby: https://www.ruby-lang.org/en/documentation/installation/ <br />
(2) Install Ruby on Rails: https://guides.rubyonrails.org/getting_started.html <br />
(3) Install PostGres: https://www.tutorialspoint.com/postgresql/postgresql_environment.htm <br />

##### Next:

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

Note: Remember to replace the username & password with whatever you use to log into your postgres database.

(7) Run rake db:migrate to run the migrations <br />
(8) Type ' rails s -p 3001' into the terminal to launch the server <br />
(9) Open your browser and navigate to 'http://localhost:3001' (press ctrl-C or control-C while in the terminal to exit.)<br />

## Contributing

##### To contribute:
(1) follow the instructions in the Usage section if you have not already done so <br />
(2) continue once you have forked to repo, cloned it, and gotten the repo working on your machine <br />
(3) figure out what it is you want to add or edit <br />
(4) create a **new branch** for it <br />
(5) make your additions or changes <br />
(6) test that the code is clean <br />
(7) test to make sure the changes didn't break anything <br />
(8) stage the additions/changes (using **add**) <br />
(9) commit the additions/changes with a proper commit message <br />
(8) push it up to your repository (the **new branch**) <br />
(9) create a new pull request and include a brief description of & reason for the change <br />
(10) wait to see what happens :) <br />

## Reporting Issues

You may report bugs & issues on GitHub at https://github.com/CodeToJoyForever/BeInTheKnow_backend/issues

## Code of Conduct

Everyone interacting in the SaladBowl project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/CodeToJoyForever/BeInTheKnow_backend/blob/master/CODE_OF_CONDUCT.md).

## License
Not yet open source.
