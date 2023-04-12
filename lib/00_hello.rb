#On commence par définir la méthode qui dira bonjour
def hello(firstname)
  puts "Bonjour #{firstname} !"
end

def askfirstname
  puts "Quel est ton prénom ?"
  print "> "
  firstname=gets.chomp
  return firstname
end

def perform
  firstname = askfirstname
  hello(firstname)
end

perform