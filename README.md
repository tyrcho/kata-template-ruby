# Ruby/Test::Unit Kata Template

Project template for starting TDD Kata using Ruby and Guard::Rspec

## Usage

Clone the repository.

    $ git clone git://github.com/...

Create a "kata" gemset and `cd` into your kata directory.

    $ rvm gemset create kata
    $ cd my_awesome_kata

Install bundler if necessary.

    $ gem install bundler --no-ri --no-rdoc

Edit `Gemfile` to use the correct gems for your platform (optional).

Use bundler to install the gems.

    $ bundle


Start guard to run your tests automatically.
    
    $ bundle exec guard

Do your kata! Guard will monitor your files and run your tests automatically
whenever you make a change.
