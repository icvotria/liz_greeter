def hello
  puts "-----------------------------------------".center(100)
  puts "| Hello, Liz! Hope you had a nice meal! |".center(100)
  puts "-----------------------------------------".center(100)
end

def food_list
  puts ""
  puts "----------------------------------------------------------------------------------------------------"
  puts ""
  puts "Things I have consumed:-".center(100)
  puts "- I had some sesame flavoured noodles with some soy sauce and a bit of chilli oil"
  puts "- I had a packet of salt and vinegar Hula Hoops"
  puts "- I had a little bit of cheddar cheese with a teeny bit of picalilly"
  puts "- I had some pinot noir, which I chose because you had two of them, and because it was a screw top"
  puts ""
  puts "----------------------------------------------------------------------------------------------------"
  puts ""
end

def tv_list
  puts ""
  puts "----------------------------------------------------------------------------------------------------"
  puts ""
  puts "Things I have watched:-".center(100)
  puts "- I watched the rest of Pointless"
  puts "- I watched Richard Osman's House of Games"
  puts "- I watched Sunday's episode of Dr Who"
  puts "- I watched an episode of Castle where the murder victim is Santa"
  puts "- I watched an episode with Castle's ex-wife and now I'm watching it again cos I was concentrating on this and missed it all"
  puts ""
  puts "----------------------------------------------------------------------------------------------------"
  puts ""
end

def productivity
  puts ""
  puts "----------------------------------------------------------------------------------------------------"
  puts ""
  puts "  ___      I have     ___  
 (o o)    not been   (o o) 
(  V  ) productive  (  V  )
--m-m-----------------m-m--"
  puts ""
  puts "----------------------------------------------------------------------------------------------------"
  puts ""
end

def garfield
  puts ""
  puts "----------------------------------------------------------------------------------------------------"
  puts ""
  puts "                                #####
                  #######      #**#!!###
                 #**#!!!!##   #****#!!!!#
                #****###!!!#  #*****#!!!!#
                #*******#!!!# #******#!!!!#
                #*********#!###!*!*!*#!!!!!#          
                #!*!*!*!*!*!#!##########!!!!#        
                ###########!##!!!!!!!!!!#!!!#         
             ###!!!!!!!!!!!#!!!!!!!!!!!!!#!!!####      
           ##!#!!!!!!!!!!!#!!!!!!!!!!!!!!!#!!!!!!!#
         ##!!#!!!!!!!!!!!#!!!!!!!!!!!######!!!!!!!*#
        ##!!#!!!!!!!!!!!!#!!!!#######     #!!!!!!***#
       #!!!###################*****       #...!!*****#
      #!!!.#       ***** #     ***        #....*******#
     #*....#        ***   #              #.......*****#
    #**.....##          *****          ##........!!****#
    #!........##       *******#########......#...!!!!!*#
   #!...........#######.*****...............#.#..!!!!**#
  #*.....##.............#..#...............#...#.!!****#
  #*....#.#............#....#............##......!*****#
  #*.......##.......###......###........#.......!!!****#
  #*.........#######......!!....########.......!!!!!***#
   #!!!.................!!!!!!!!.............!!!*******#
    #!!!!............!!!!!!!!!!!!!!!!!!!!!!!!!!!******#
     #*******!!!!!!!!!!!!!!!!!!!!!!!!!!!!***!!!!*****#
      #******!!!!!!!!!!!!!!!!!!!!!!!!!********!!****#
       ##*****!!!!!!!!!!!!!!!!!!!!!#*************###
         ##****!!!!!!!!!!!!!!!!!!!!!###******####
           ####!!!!!!!!!!!!!!!!!!!!!!!!######!#
               #!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!*#
               #!!!!!!!!!!!!!!!!!!!!!!!!!!!!!***##
              #!!!!!!!!!!!!!!!!!!!!!!!!!!!!!******#
             #!!!!!!!!!!!!!!!!!!!!!!!!!!!!!*******#
            #!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!*****#
           #!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!**#
          #!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!##
         #!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!*##
        #!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!***#
        #!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!####!!!!!!****##
       #!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!###****##!!!!******##
       #!!!!!!!!!!!!!!!!!!!!!!!!!!!!!##**!!*****#!!!********#
       #!!!!!!!!#!!!!!!!!!!!#!!!!!!!#***!!!!***!!!!**********#
      #!!!!!!!!!!#!!!!!!!!!#!!!!!!!#****!!!!!*!!!!!!!!!!*****#
      #!!!!!!!!!!!#!!!!!!!#!!!!!!!#*!!***!!!!!!!!!!!!!!!!!***#
      #!!!!!!!!!!!!#!!!!!!#!!!!!!#*!!!!!*!!!!!!!!!!!!!!!*****#
      #!!!!!!!!!!!!#!!!!!!#!!!!!#***!!!!!!!!!!!!!!!!!********#
     #!!!!!!!!!!!!!#!!!!!!#!!!!!#****!!!!!!!!!!!!!!**********#
     #!!!!!!!!!!!!!#!!!!!!#!!!!!#*****!!!!!!!!!!!!!!*********#
     #!!!!!!!!!!!!!#!!!!!!#!!!!!#***!!!!!!!!!!!!!!!!!********##
    ##!!!!!!!!!!!!!#!!!!!!#!!!!!#*!!!!!!!!!!!!!!!!!!!!!*****#!*##
   #!#!!!!!!!!######!!!!!!#!!!!!#**!!!!!!!!!!#########!!!!*#!!**##
  #!#!#!!!!!!#!!!!!!!!!!!!#!!!!!#***!!!!!####******!!!#######!!**#
 #!#!!##!!!!#!!!!!!!!!!!############*!!!#********!!!!!!!!!!!!!!!**#
 #!#!!#!#!!#!!!#!!!!!!!#!!!!!!!!!!!!!!!#***********!!!!!!!!!!!!!!!#
 #!#!!!#!#!#!!#!!!!!!!#!!!!#!!!!#!!!!!#**********!!!!!!!!!!!!!!!**#
 #!!#!!!#!##!!#!!!!!!#!!!!#!!!!#!!!!!!#************!!!!!!!!!!****#
  ######### ##########!!!!#!!!!#!!!!!!#**********!!!!!!!!!!!!***#
                      #################************!!!!!!!!!!**#
                                      #**********!!!!!#########
                                       ###############

------------------------------------------------"
  puts ""
  puts "----------------------------------------------------------------------------------------------------"
  puts ""
end

def pig_latin
  puts ""
  puts "----------------------------------------------------------------------------------------------------"
  puts ""
  puts "What would you like to translate?"
  string = gets.chomp
  array = string.split(" ")
  new_array = []
  array.each do |word|
    if word.length == 1
      new_array.push(word)
    elsif word[0] == "/aeiou/"
      new_array.push("#{word}-ay")
    elsif word[1].downcase == "h"
      new_word = word[2..-1]
      new_array.push("#{new_word}-#{word[0..1]}ay")
    else
      new_word = word[1..-1]
      new_array.push("#{new_word}-#{word[0]}ay")
    end
  end
  puts new_array.join(" ")
  puts ""
  puts "----------------------------------------------------------------------------------------------------"
  puts ""
end

def mini_maze
  puts ""
  puts "----------------------------------------------------------------------------------------------------"
  puts ""
  puts "Hi! Welcome to the Mini-Maze! You can go left, right or forwards."
  alive = true
  count = 0
  while alive == true && count != 2 do
    puts "Which way would you like to go?"
    direction = gets.chomp
    if direction.downcase == "left"
      puts "You were eaten by a vicious werewolf! You're dead, sorry :("
      alive = false
    elsif direction.downcase == "right"
      puts "A goblin bonked you on the head and you died :("
      alive = false
    elsif direction.downcase == "forwards"
      puts "Good choice, you are still alive."
      count += 1
    else
      puts "You can only go left, right or forwards."
    end
  end
  if count == 2
    puts "You have successfully navigated the Mini-Maze, good work!"
  end
  puts ""
  puts "----------------------------------------------------------------------------------------------------"
  puts ""
end

def jaws_quote
  quotes = ["You're gonna need a bigger boat",
  "You know the thing about a shark, he's got lifeless eyes, black eyes, like a doll's eyes.\nWhen he comes at ya, don't seem to be livin'...\ntill he bites ya.\nOh, and then those black eyes roll over white, and then, ah, then you hear that terrible high-pitched screamin',\nthe ocean turns red, and despite all the poundin' and the hollerin', they all come in and they rip you to pieces",
  "Here's to swimmin' with bow-legged women",
  "Come up, fish. Come to Quint", "You have city hands, Mr. Hooper. You been countin' money all your life",
  "Ten thousand dollars for me, by myself. For that, you get the head, the tail, the whole damned thing",
  "Back home, we get a taxidermy man, he's gonna have a heart attack when he sees what I brung him",
  "It's a carcaradon carcharias. It's a Great White", "Do you want a pretzel?", "I don't need this working class hero crap!",
  "He ate the light :( ", "They caught A shark. Not THE shark", 
  "I'm pleased and happy to repeat the news that we have, in fact, caught and killed a large predator that supposedly injured some bathers.\nBut, as you see, it's a beautiful day, the beaches are open and people are having a wonderful time. Amity, as you know, means ‘friendship'.",
  "Not like going down the pond chasing' bluegills and tommycods. This shark, swallow you whole",
  "Well it proves one thing, Mr. Hooper. It proves that you wealthy college boys don't have the education enough to admit when you're wrong",
  "Stop playin' with yourself, Hooper", "Very first light, Chief, sharks come cruisin'"]
  puts ""
  puts "----------------------------------------------------------------------------------------------------"
  puts ""
  puts quotes[rand(16)]
  puts ""
  puts "----------------------------------------------------------------------------------------------------"
  puts ""
end

def interactive_menu
  loop do
    puts "Pick a number!"
    puts "1. Greeting"
    puts "2. What have I eaten while you were out?"
    puts "3. What have I watched while you were out?"
    puts "4. Find out how productive I have been while you were out!"
    puts "5. Garfield"
    puts "6. Pig Latin translator"
    puts "7. Terrible, short, boring maze game"
    puts "8. Random quote from Jaws"
    puts "9. Exit"
    selection = gets.chomp
    case selection
    when "1"
      hello
    when "2"
      food_list
    when "3"
      tv_list
    when "4"
      productivity
    when "5"
      garfield
    when "6"
      pig_latin
    when "7"
      mini_maze
    when "8"
      jaws_quote
    when "9"
      quit
    else
      puts "I don't know what '#{selection}' means, please try again"
    end
  end  
end

interactive_menu