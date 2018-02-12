#require_relative 'ass'

# song = Song.new 'Name', 'Ispolnitel', 777
# puts song.to_s

# puts 'Hello!)'
# 1.upto(10) { |i| print i }
# puts ""

# require 'tk'

# Tk.mainloop

require 'Qt'

WIDTH = 250
HEIGHT = 150
WinChatTitle = 'Geek Chat'

class QtAppChat < Qt::Widget

    def initialize
        super
        setWindowTitle WinChatTitle
        setToolTip "This is Qt::Widget"
        
        resize WIDTH, HEIGHT
        #move 300, 300
        center
        show
    end

    def center
        qtdw = Qt::DesktopWidget.new

        x = (qtdw.width - WIDTH) / 2
        y = (qtdw.height - HEIGHT) / 2
        
        move x, y
    end
end

app = Qt::Application.new ARGV
QtAppChat.new
app.exec

