# terminal_links

`terminal_links` is a simple Ruby gem meant to abstract the ANSI characters required to print hyperlinks in supported terminals. It's a wrapper that makes printing hyperlinks easy!

This was inspired by the [gist](https://gist.github.com/egmontkob/eb114294efbcd5adb1944c9f3cb5feda) written by @egmontkob.

## Installation & Usage

To install:

```
gem install terminal_links
```

Import and use:

```
require 'terminal_links'

...

link = TerminalLinks::Link.new('https://github.com', 'GitHub')
link.print 
# prints "GitHub", which you can ctrl/cmd + click on to follow

# ...can be instantiated without text...
link = TerminalLinks::Link.new('https://github.com')
link.print
# prints "https://github.com"

# ...or without either, which will default to the gist above...
link = TerminalLinks::Link.new
link.print
# prints gist link

# ...and can be instantiated with just text, but won't print.
link = TerminalLinks::Link.new(nil, 'GitHub')
link.print
# nothing happens
```

