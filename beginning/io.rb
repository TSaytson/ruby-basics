fname = 'translations.json'

file = File.open(fname, 'w')

pt_BR = ''
en = ''
es = ''

print "Portugues: "
pt_BR = gets.chomp

print "Espanhol: "
es = gets.chomp

print "English: "
en = gets.chomp

translations = {
  'pt-BR': pt_BR,
  'en': en,
  'es': es
}

file.puts translations

file.close

file = File.open(fname, 'r')
contents = file.read
puts contents

file.readlines.each do |line|
  print line
end

Dir.mkdir('files') unless File.exists? ('files')

files_dir = Dir.open Dir.pwd + '/files'

files_dir.each do |file|
  print file + "\n"
end

Dir.rmdir('files')
File.delete('translations.json')
