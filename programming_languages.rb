require 'pry'

def reformat_languages(languages)
  a_hash={}
  languages.each do |styles,keys_1|
    keys_1.each do |langs,keys_2|
      keys_2.each do |types,keys_3|
          a_hash[langs] = { type: keys_3, style: styles }
      end
    end
  end
  a_hash
end