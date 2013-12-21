# coding: utf-8

class BoggleGame < ActiveRecord::Base
  
  
  def generate_letters
    self.letters = Array.new(16) { 
      generate_random_letter 
    }.join
    
  end
  
  def generate_random_letter
    Random.new_seed
    letter_position = (10000*rand).floor
    ind = cumsum(letter_frequencies.values).index { |val| val > letter_position }
    letter_frequencies.keys[ind]
  end
  
  def cumsum(arr)
    sum = 0
    arr.map { |e| sum += e }
  end
  
  def letter_frequencies
    # Letter frequencies, unit = 1/10000
    # Source www.cs.tut.fi/~korpela/kielikello/kirjtil.html
    {
      'a' => 1192 ,
      'i' => 1066 ,
      't' => 979 ,
      'n' => 869 ,
      'e' => 823 ,
      's' => 787 ,
      'l' => 567 ,
      'k' => 535 ,
      'o' => 525 ,
      'u' => 507 ,
      'ä' => 460 ,
      'm' => 331 ,
      'v' => 253 ,
      'r' => 232 ,
      'j' => 191 ,
      'h' => 183 ,
      'y' => 179 ,
      'p' => 174 ,
      'd' => 85 ,
      'ö' => 49 ,
      'g' => 13
    }
  end
end
