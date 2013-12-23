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
      'A' => 1192 ,
      'I' => 1066 ,
      'T' => 979 ,
      'N' => 869 ,
      'E' => 823 ,
      'S' => 787 ,
      'L' => 567 ,
      'K' => 535 ,
      'O' => 525 ,
      'U' => 507 ,
      'Ä' => 460 ,
      'M' => 331 ,
      'V' => 253 ,
      'R' => 232 ,
      'J' => 191 ,
      'H' => 183 ,
      'Y' => 179 ,
      'P' => 174 ,
      'D' => 85 ,
      'Ö' => 49 ,
      'G' => 13
    }
  end
end
