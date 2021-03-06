# PrologixGpibUsb

Uses the Prologix GPIB-USB controller to talk to a GPIB device.

[Device details here...](http://prologix.biz/gpib-usb-controller.html)

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

## Playing in Console

Open irb inside the gem folder

    bin/console

With the Prologix GPIB/USB connected

    irb(main):002:0> device = Gpib.new
    => #<GpibController:0x00007ff73f08afa0>

    irb(main):003:0> device.open_connection
    => true

    irb(main):004:0> device.version
    => "Prologix GPIB-USB Controller version 6.101\r\n"

    irb(main):005:0> device.set_operation_mode :controller
    => 10

    irb(main):006:0> device.set_auto :listen
    => 10

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/prologix_gpib_usb.
