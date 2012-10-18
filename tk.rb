#!/Users/molz/.rvm/rubies/ruby-1.9.3-p125/bin/ruby

require 'tk' 

    root = TkRoot.new { title "Ex1" } 
    TkLabel.new(root) {
    text 'Hello, World!' 
    pack { padx 150 ; pady 150; side 'left' }
    } 
    
    Tk.mainloop

