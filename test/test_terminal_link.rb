require_relative '../lib/terminal_link.rb'

link = TerminalLink::Link.new
puts "When not given a url or text"
puts "  prints a link to the example link by default"
link.print
puts ''

puts "When given just a url"
puts "  prints a link where the text is also the url"
link.url = 'https://google.com'
link.print
puts ''

puts "When given a url and text"
puts "  prints a hyperlink with text that links to the given url"
link.text = 'Google'
link.print
puts ''

puts "When given just text"
puts "  it does not print"
link.url = nil
link.print
puts ''

puts "Can be initialized with just a url"
link = TerminalLink::Link.new('https://google.com')
link.print
puts ''

puts "Can be initialized with just text (does not print)"
link = TerminalLink::Link.new(nil, 'Google')
link.print
puts ''

puts "Can be initialized with both"
link = TerminalLink::Link.new('https://google.com', 'Google')
link.print
puts ''

#system("echo", "\e]8;;http://example.com\e\\This is a link\e]8;;\e\\")
