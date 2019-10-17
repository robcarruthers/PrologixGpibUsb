# PrologixGpibUsb

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/prologix_gpib_usb`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

Uses the Prologix GPIB-USB controller to talk to a GPIB device.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'prologix_gpib_usb'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install prologix_gpib_usb

## Usage

TODO: Write usage instructions here

Open irb inside the gem folder

    bin/console

With the Prologix connected

    irb(main):002:0> device = Gpib.new
    => #<GpibController:0x00007ff73f08afa0>

    irb(main):003:0> device.open_connection
    Connection made successfully.
    => nil

    irb(main):004:0> device.version
    => "Prologix GPIB-USB Controller version 6.101\r\n"

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/prologix_gpib_usb.
