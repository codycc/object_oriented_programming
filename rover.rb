class Rover
  attr_accessor :xcoord,:ycoord,:direction

  def initialize(xcoord = 0 ,ycoord = 0 ,direction = "N")
    @xcoord = xcoord
    @ycoord = ycoord
    @direction = direction
  end


  def move
    if @direction == "N"
      @ycoord += 1
    elsif @direction== "E"
      @xcoord += 1
    elsif @direction == "S"
      @ycoord -= 1
    elsif @direction =="W"
      @ycoord -=  1
    else
      "ERRROR"
    end
  end

  def turn(new_direction)
    case new_direction
    when "L"
      if @direction == "N"
        @direction= "W"
      elsif @direction == "W"
        @direction= "S"
      elsif @direction == "S"
        @direction= "E"
      elsif @direction == "E"
        @direction= "N"
      else
        puts "not a direction"

      end


    when "R"
      if @direction == "N"
        @direction="E"
      elsif @direction == "E"
        @direction="S"
      elsif @direction == "S"
        @direction="W"
      elsif @direction =="W"
        @direction="N"
      else
        puts "not a direction"
      end
    end

  end

  def position
    puts "#{xcoord} #{ycoord} #{direction}"
  end


end



def read_instruction
curi = Rover.new(0,0,"N")
sami = Rover.new(0,0,"N")
puts "Would you like to move rover curi or rover sami??"
answer = gets.chomp.downcase

  if answer == "curi"
  puts "Please input your commands \"L\" TO TURN ROVER LEFT \"R\" AND M TO MOVE ROVER FORWARD "
  rover_commands = gets.chomp.upcase
   rover_commands.each_char do |char|
     if char == "L" || char == "R"
       curi.turn(char)

     elsif char =="M"
       curi.move
     else
       puts "ERROR"
     end
   end
  curi.position


  elsif answer =="sami"
    puts "Please input your commands \"L\" TO TURN ROVER LEFT \"R\" AND M TO MOVE ROVER FORWARD "
    rover_commands = gets.chomp.upcase
     rover_commands.each_char do |char|
       if char == "L" || char == "R"
         sami.turn(char)

       elsif char =="M"
         sami.move
       else
         puts "ERROR"
       end
     end
    sami.position


end



end

read_instruction
