puts "Criando Gêneros..."
%w[Cabala Judaísmo Talmud Mística Filosofia].each do |nome|
  Genero.find_or_create_by(name: nome)
end
puts "Criando Editoras..."
%w[Sefer Maayanot Artscroll Feldheim].each do |nome|
  Editora.find_or_create_by(name: nome)
end

puts "Criando Autores..."
%w[Rashi "Isaac Luria" "Baal Shem Tov"].each do |nome|
  Author.find_or_create_by(name: nome)
end
