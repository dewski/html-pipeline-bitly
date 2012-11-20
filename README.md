# HTML::Pipeline::BitlyLinkFilter

A HTML Pipeline filter for extracting URLs and making them bit.ly links.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'html-pipeline-bitly'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install html-pipeline-bitly

## Usage

To configure this filter to exclude certain hostnames you can set which hosts you want to be excluded from the Bitly shortener:

```ruby
HTML::Pipeline::BitlyLinkFilter.allowed_hostnames = ['github.com', 'bit.ly']
```

This pipeline filter also requires Redis as a backend storage, so with that you can just pass in your global instance of your Redis connection like below or instantiate your own:

```ruby
HTML::Pipeline::BitlyLinkFilter.redis = $redis
```

By default all links will be prefixed in redis with the `bitly` namespace, if you'd like to change this you can just set it like below:

```ruby
HTML::Pipeline::BitlyLinkFilter.redis_namespace = 'hire'
```

Happy Pipelining!

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
