# require modules here
require 'yaml'
require 'pry'

def load_library (file_path)
  
  
  
  emoticon_dictionary = {}
  emoticon_dictionary["get_meaning"] = {}
  emoticon_dictionary["get_emoticon"] = {}
  
  emoticon_file = YAML.load_file(file_path)

  
  emoticon_file.each do |emoticon_text, emoticon_icons_array|
    
    # emoticon_icon_array.each_with_index { |item, index|
    #   if index == 0
    #       usa = item
    #   elsif index == 1
    #       jp = item
    #   end
    # }
    
      usa, jp = emoticon_icons_array
    
      emoticon_dictionary["get_meaning"][usa] = jp
      emoticon_dictionary["get_meaning"][jp] = emoticon_text
    
     # binding.pry
    emoticon_dictionary
  end
  
  
    #binding.pry
  emoticon_file.each do |emoticon_text, emoticon_icons_array|
    #     emoticon_icons_array.each_with_index { |item, index|
    #     #binding.pry
        if index == 0
          emoticon_dictionary["get_emoticon"] << emoticon_icons_array[index]
        elsif index == 1
          emoticon_dictionary["get_meaning"] << emoticon_icons_array[index]
        end
        
    # }
      
       #binding.pry
    
    
    
  end #end file each
  
  emoticon_dictionary
 # binding.pry
end #end load_library




# emoticon_text_array << emoticon_text



def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end











  
  # emoticon_file.each do |emoticon_text, emoticon_icon_array|
  #   emoticon_text_array << emoticon_text
    
    # emoticon_icon_array.each_with_index { |item, index|
    
    #     if index == 0
    #       emoticon_us << emoticon_icon_array[index]
    #     elsif index == 1
    #       emoticon_jp << emoticon_icon_array[index]
    #     end
    # }
    