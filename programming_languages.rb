require 'pry'

def reformat_languages(languages)
  a_hash={}
  b_hash={}
  languages.each do |styles,keys_1|
    keys_1.each do |langs,keys_2|
      keys_2.each do |types,keys_3|
        a_hash[langs] = { type: keys_3, :style << styles }
        binding.pry
      end
    end
  end
  a_hash
end


def reformat_languages(languages)
  new_hash = {}
   languages.each do |style, data|
    description.each do |lang, type|
      if new_hash.has_key?(lang)
        new_hash[lang][:style] << style
      else
        new_hash[lang] = type
        new_hash[lang][:style] = [style]
      end
    end
    new_hash
  end
