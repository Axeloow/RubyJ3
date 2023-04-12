def signupacc
  puts "Sur quel compte voulez-vous créer votre mot de passe ? Insérez-un nom de compte"
  print "> "
  account=gets.chomp
  puts "Bonjour #{account}."
  return account
end

def signupmdp
  puts  "Veuillez créer votre mot de passe."
  print "> "
  mdp = gets.chomp
  mdps = ""
  while mdp != mdps
    puts "Veuillez confirmer votre mot de passe."
    print "> "
    mdps = gets.chomp
    if mdp != mdps
      puts "Les mots de passe ne sont pas identiques !"
    else
      break
    end
  end
  puts "Votre mot de passe a été confirmé. Merci de votre confiance."
  return mdp
end

def login
  account = signupacc
  mdp = signupmdp
  accounts=""
  while account != accounts
    puts "Bonjour. Sur quel compte souhaitez-vous vous connecter ?"
    print "> "
    accounts = gets.chomp
    if account != accounts
      puts "Désolé, ce compte n'existe pas. Veuillez réessayer."
    else
      break
    end
  end
  mdps = ""
  while mdp != mdps
    puts "Veuillez saisir votre mot de passe."
    print "> "
    mdps = gets.chomp
    if mdps != mdp
      puts "Le mot de passe est incorrect. Veuillez réessayer."
    else
      puts "Bienvenue #{account}."
      break
    end
  end
end

def welcome
  puts "_________________________"
  puts "|                       |"
  puts "|                       |"
  puts "|                       |"
  puts "|                       |"
  puts "|                       |"
  puts "|                       |"
  puts "|                       |"
  puts "|       ur   mom        |"
  puts "|                       |"
  puts "|                       |"
  puts "|                       |"
  puts "|         <3            |"
  puts "|                       |"
  puts "|                       |"
  puts "|                       |"
  puts "|                       |"
  puts "|                       |"
  puts "|                       |"
  puts "|_______________________|"
end

def perform
  login
  welcome
end

perform


