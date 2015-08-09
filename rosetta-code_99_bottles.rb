# 99 Bottles of Beer
# http://rosettacode.org/wiki/99_Bottles_of_Beer

# In this puzzle, write code to print out the entire "99 bottles of beer on the
# wall" song.
# For those who do not know the song, the lyrics follow this form:

def beersong(bottles)
  bottles.downto(1) do
    puts "#{bottles} bottle#{bottles > 1 ? "s" : "" } of beer on the wall"
    puts "#{bottles} bottle#{bottles > 1 ? "s" : "" } of beer"
    puts "Take 1 down and pass it around"
    bottles -= 1
    if bottles < 1
      puts "You're out of booze."
    else
      puts "#{bottles} bottle#{bottles > 1 ? "s" : "" } of beer on the wall"
    end
    puts
  end
end

beersong(99)
