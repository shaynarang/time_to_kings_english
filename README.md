# Time to King's English

## The Application
This Ruby Command Line Application is the result of a code exercise with the objective of converting a colon-separated time to the King's English. For example, 11:11 to Eleven Minutes Past Eleven or 12:30 to Half Past Twelve.

## Features
- An interface (via the command line) to enter time values and receive the King's English values.

## Technologies Used
- Ruby
- Rake
- Humanize
- Rspec
- Rubocop

## Set Up
- Clone the repository
- Navigate to the directory

## Install Dependencies
```
bundle
```

## Run Program (from the Command Line)
```
rake run
```

## Rubocop
```
rake lint
```

## Rspec
```
rake spec
```

## Language and Framework Versions

ruby 3.0.2

The preferred method of installing ruby is with rbenv [https://github.com/rbenv/rbenv](https://github.com/rbenv/rbenv).
Follow the installation instructions on the project's Github.com README. You should be prompted to install the correct
version of ruby when you're in the root of the project, but it would be advisable to go ahead and install the version
of ruby necessary.

```
rbenv install 3.0.2
```

bundler 2.2.22

The first gem you're going to need is bundler, which is used for managing packages used in the project. In order to
install bundler, run:

```
gem install bundler
```

Follow this up by using bundler to install dependencies:

```
bundle install
```

## Author
- Akshay Narang <https://github.com/shaynarang>
