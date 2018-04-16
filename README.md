# Rails-Quick Script
Just a script I wrote for myself during my boot-camp course. It adds a number of reguarly-used gems to a rails project, and saves me copying a heap of the same code over and over.

## ** **For New Projects Only! This Script Will Overwrite Important Rails Files** **

**This script isn't really for public use, it's mostly for my own use.** It will overwrite files, and is **not** for use with new/established Rails projects! It's a quick, dirty, installation script. If you find it helpful, have at it.

This script simply overwrites your newly initialized project's Gemfile, adding the following gems:

- Devise
- Bootstrap 4
- Jquery (For bootstrap)
- Rspec
- Factory_bot
- Shoulda_matchers
- Faker
- Hirb

It also copies over important configuration files, runs Rails Rspec:Install, and Rails Devise:Install.

## Installation

** **Again, I cannot stress this enough: This script is not for existing rails projects, it will over-write files!** **

If that's all good, and you're starting fresh:

Start with a ```rails new```:

```bash 
rails new project_name --skip-bundle --skip-test
```
...to start with a nice clean install.

Next, ```cd``` into the project directory and clone the repo into the root:

```bash
~project_name/ $ git clone git@github.com:oheydrew/rails-quick-script.git
```

**Have a quick look at the main script**, ```rails-quick.sh```, to check it's what you'd really like to do. If you're happy, go ahead and run it with:

```bash
~project_name/ $ ./rails-quick.sh
```

(You may have to set the permissions of the file to executable with)

```ruby
chmod +x rails-quick.sh
```

The script should take care of the rest!