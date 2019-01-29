require 'pry'

def reformat_languages(languages)
  a_hash = { }
  languages.each do |styles,keys_1|
    keys_1.each do |langs,keys_2|
      keys_2.each do |types,keys_3|
        a_hash[langs] = { type: keys_3 }
        if a_hash[langs][:style].key? == true
          a_hash[langs][:style] << styles
        else
          a_hash[langs][:style] = styles
        end
        binding.pry
      end
    end
  end
  a_hash
end

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, lang|
    language.each do |name, type|
      if new_hash[name]
        new_hash[name][:style] << style
      else
        new_hash[name] = {style: [style], type: type[:type] }
      end
    end 
  end
  new_hash
end	end