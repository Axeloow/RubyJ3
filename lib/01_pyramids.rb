def halfpyramidL
  puts "Salut ! Bienvenue dans la pyramide du maçon ! Combien d'étages veux-tu construire ?"
  print "> "
  etage = gets.to_i
  puts "#{etage} etages ? Let'sa gowwwwww!"
  ligne = 1

  if etage > 1 && etage < 25
    etage.times do
      ligne.times do
        print "#"
      end
      ligne = ligne+1
      puts
    end
    else
      puts "Ce n'est pas possible, je n'aurais pas assez de matériaux ! Mammamia !"
  end
end

def halfpyramidR
  puts "Salut ! Bienvenue dans la pyramide du maçon ! Combien d'étages veux-tu construire ?"
  print "> "
  etage = gets.to_i
  puts "#{etage} etages ? Let'sa gowwwwww!"
  ligne = 1
  espace = etage
  if etage > 1 && etage < 25
    etage.times do
      espace.times do
        print " "
      end
      ligne.times do
      print "#"
      end
      ligne = ligne+1
      espace = espace-1
      puts
    end
    else
      puts "Ce n'est pas possible, je n'aurais pas assez de matériaux ! Mammamia !"
  end
end

def fullpyramid
  puts "Salut ! Bienvenue dans la pyramide du maçon ! Combien d'étages veux-tu construire ?"
  print "> "
  etage = gets.to_i
  puts "#{etage} etages ? Let'sa gowwwwww!"
  ligne = 1
  espace = etage
  if etage > 1 && etage < 25
    etage.times do
      espace.times do
        print " "
      end
      ligne.times do
      print "#"
      end
      espace.times do
        print " "
      end
      ligne = ligne+2
      espace = espace-1
      puts
    end
    else
      puts "Ce n'est pas possible, je n'aurais pas assez de matériaux ! Mammamia !"
  end
end

def wtfpyramid
  puts "Salut ! Bienvenue dans la pyramide du maçon ! Combien d'étages veux-tu construire ?"
  print "> "
  etage = gets.to_i
  puts "#{etage} etages ? Let'sa gowwwwww!"

  ligne = 1
  espace = etage/2
  etage2 = etage/2
  etage3 = etage2+1
  if etage%2 == 1
    if etage > 1 && etage < 25
      etage2.times do
        print " " * espace
        print "#" * ligne
        ligne += 2
        espace -= 1
        puts
      end
      etage3.times do
        print " " * espace
        print "#" * ligne
        ligne -= 2
        espace += 1
        puts
      end
    else
      puts "Mais... Mais ce n'est pas possible, je n'aurais pas assez de matériaux ! Mammamia !"
    end
  else
    puts "Mais... ce n'est pas possible ! Comme veux-tu que je fasse une pyramide avec dessus-dessous avec ce genre de données !? Réessaie avec un nombre impair !"
  end

end

wtfpyramid

