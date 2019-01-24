module TerminalLink
  class Link
    attr_accessor :text, :url

    def initialize(url=nil, text=nil)
      @text = text
      @url = url
    end

    def print
      # template = "echo -e '\e]8;;http://example.com\e\\This is a link\e]8;;\e\\'"
      default_link = "https://gist.github.com/egmontkob/eb114294efbcd5adb1944c9f3cb5feda"
      if url && !text
        system("echo", "\e]8;;#{@url}\e\\#{@url}\e]8;;\e\\")
      elsif url && text
        system("echo", "\e]8;;#{@url}\e\\#{@text}\e]8;;\e\\")
      elsif !url && !text
        system("echo", "\e]8;;#{default_link}\e\\Hyperlinks in terminal emulators\e]8;;\e\\")
        #`echo -e '\e]8;;#{default_link}}\e\\"Hyperlinks in terminal emulators\e]8;;\e\\'`
      end
    end
  end
end
