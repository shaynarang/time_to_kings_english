# Time to King's English

## The Application
This Ruby Command Line Application converts colon-separated time strings to the King's English.

Examples:
- 1:00 = One O' Clock
- 2:15 = Quarter Past Two
- 3:30 = Half Past Three
- 4:45 = Quarter Till Five
- 11:11 = Eleven Past Eleven
- 12:53 = Seven Till One

## Features
- An interface (via the command line) to enter time values and receive the King's English values.

## Technologies Used
- Ruby
- Rake
- Humanize
- Rspec
- Rubocop

## Files of Interest
- lib/converter.rb contains the conversion logic

## Set Up
- Clone the repository
- Navigate to the directory

## Install Dependencies
```
bundle
```

## Run Program
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
