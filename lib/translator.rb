require "yaml"

def load_library (file_path)
  library = YAML.load_file(file_path)
  new_hash = {:get_meaning => {}, :get_emoticon =>{}}
  library.each_key do |meaning|
    puts library[meaning][1]
    puts "cool"
    puts new_hash
    new_hash[:get_meaning][meaning] = []
    new_hash[:get_meaning][meaning].push(library[meaning][1])
    #new_hash[:get_emoticon] >> library[meaning]
  end
  return new_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end