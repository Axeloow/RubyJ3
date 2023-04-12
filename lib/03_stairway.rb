def explanation
  puts "Bonjour et bienvenue dans le jeu 'Games of THP'."
  puts "Le but est de progresser au sein des 10 étages d'une tour magique, afin de détrôner le grand et méchant formateur, le génie du mal Lilian."
  puts "Voulez-vous une explication des règles ? y / n"
  print "> "
  input = ""
  while input != "n" || input != "y"
    input = gets.chomp
    puts ">Je n'ai pas compris cette réponse. Pouvez-vous être plus clair ? > y/n <"
    if input == "n"
      puts "Tant pis ! Passons à la suite !!"
      break
    elsif input == "y"
      puts "La tour magique contient 10 étages. Afin de monter d'un étage, il vous faut lancer un dé à 6 faces."
      puts "Tombez sur le chiffre 1, et vous redescendrez. Les chiffre 2, 3 et 4 ? Vous resterez à votre place. Enfin, les chiffres 5 et 6 ? Vous pourrez enfin monter."
      puts "Il vous faudra donc énormément de chance afin de pouvoir vaincre le grand méchant Lilian."
      break
    end
  end
end

def roll_dice
  return rand(6) +1
end

def analyze_dice(dice)
  puts "Vous avez obtenu le chiffre #{dice}"
  if dice == 1
    puts "Vous activez un piège et une trappe s'ouvre sous vos pieds, vous descendez !"
    return -1
  elsif dice >= 5
    puts "Vous trouvez un escalier, et montez d'un étage!"
    return +1
  else
    puts "Vous ne trouvez pas d'escaliers et restez à cet étage."
    return +0
  end
end

def show_step(number)
  puts "--Vous êtes actuellement à l'étage #{number}. La progression est lente, mais vous avancez, c'est la seule chose dont vous êtes sûr !--"
end

def win?(number)
  if number == 10
    return false
  else
    return true
  end
end

def fonikerlilian(dice)
  puts "Vous avez obtenu le chiffre #{dice}"
  if dice == 6
    puts "Vous avez vaincu Lilian et mis fin à son règne de terreur. Vous pouvez désormais retourner dans l'ignorance dans laquelle vous ne seriez jamais sorti sans lui."
  elsif dice < 6
    puts "Vous avez échoué dans votre quête de pouvoir, et le génie du mal Lilian a conservé son trône, composé à 95% d'ordinateurs de rageux, que le votre vient d'ailleurs de rejoindre."
  end
end

def play
  explanation
  etage=0
  while win?(etage)
    puts ">Tentez votre chance pour gravir un étage ! Appuyez sur la touche 'Entrée' ! "
    gets.chomp
    etage = etage + analyze_dice(roll_dice)
    show_step(etage)
  end
  puts ">Vous êtes finalement arrivé au dernier étage. Le formateur et génie du mal Lilian Muller se dresse en face de vous. Votre objectif ? Le vaincre."
  puts ">Appuyez sur la touche 'Entrée' pour lancer votre dé. 6, et c'est la victoire. En dessous, c'est une défaite écrasante qui vous fait face."
  gets.chomp
  fonikerlilian(roll_dice)
end

play
