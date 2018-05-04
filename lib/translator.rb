# require modules here
require 'yaml'
require 'pry'

def load_library (file_path)
  
  
  
  emoticon_dictionary = {}
  emoticon_dictionary["get_meaning"] = {} #get meaning keys are JP emoji and values are plain text
  emoticon_dictionary["get_emoticon"] = {} #get emoticon keys are usa emojis and keys are jp emojis
  
  
  # GET MEANING ==> { JP-EMOJI ==> PLAIN TEXT}
  # GET EMOTICON ==> { USA-EMOJI ==> JP-EMOJI}
  
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
      binding.pry
    
      emoticon_dictionary["get_emoticon"][usa] = jp
      emoticon_dictionary["get_meaning"][jp] = emoticon_text
    
     # binding.pry
    emoticon_dictionary
  end
  
  
    #binding.pry
  emoticon_file.each do |emoticon_text, emoticon_icons_array|
    #     emoticon_icons_array.each_with_index { |item, index|
    #     #binding.pry
        # if index == 0
        #   emoticon_dictionary["get_emoticon"] << emoticon_icons_array[index]
        # elsif index == 1
        #   emoticon_dictionary["get_meaning"] << emoticon_icons_array[index]
        # end
        
    # }
      
       #binding.pry
    
    
    
  end #end file each
  
  emoticon_dictionary
 # binding.pry
end #end load_library

# emoticon_text_array << emoticon_text





#EMOTICON DICTIONARY ==>

# GET MEANING ==> { JP-EMOJI ==> PLAIN TEXT}
# GET EMOTICON ==> { USA-EMOJI ==> JP-EMOJI}


def get_japanese_emoticon (file_path, emoticon)
  

  emoticon_dictionary = load_library(file_path)
  
  
  emoticon_dictionary["get_emoticon"][emoticon] ? emoticon_dictionary["get_emoticon"][emoticon] : "Sorry, that emoticon was not found"

end #end method






def get_english_meaning (file_path, emoticon)
  
  emoticon_dictionary = load_library(file_path)
  
  emoticon_dictionary["get_meaning"][emoticon] ? emoticon_dictionary["get_meaning"][emoticon] : "Sorry, that emoticon was not found"
  
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
    