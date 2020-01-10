require "yaml"

def load_library (file_path)
  library = YAML.load_file(file_path)
  new_hash = {:get_meaning => {}, :get_emoticon =>{}}
  library.each_key do |meaning|
    english_emoticon = library[meaning][0]
    japanese_emoticon = library[meaning][1]
    new_hash[:get_meaning][japanese_emoticon] = meaning
    new_hash[:get_emoticon][english_emoticon] = japanese_emoticon
  end
  return new_hash(file_path, emoticon)
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end