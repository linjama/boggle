# coding: utf-8

class BoggleGame < ActiveRecord::Base
  
  def generate_letters
    Random.new_seed
    dices = self.boggle_dices.shuffle
    self.letters = Array.new(16) { |ind| 
      dices[ind].shuffle[0]
    }.join
  end
  
  def boggle_dices
    # Define Boggle dices
    # Source http://fi.wikipedia.org/wiki/Boggle
    [ 
      ['V', 'L', 'L', 'L', 'E', 'V'],
      ['O', 'I', 'T', 'T', 'A', 'A'],
      ['A', 'L', 'N', 'A', 'S', 'T'],
      ['A', 'N', 'P', 'F', 'S', 'K'],
      ['A', 'P', 'H', 'S', 'K', 'O'],
      ['D', 'E', 'S', 'R', 'I', 'L'],
      ['E', 'I', 'E', 'N', 'U', 'S'],
      ['H', 'I', 'K', 'N', 'M', 'U'],
      ['A', 'G', 'A', 'Ä', 'L', 'Ä'],
      ['C', 'I', 'O', 'T', 'M', 'U'],
      ['A', 'J', 'T', 'O', 'T', 'O'],
      ['E', 'I', 'T', 'O', 'S', 'S'],
      ['E', 'L', 'Y', 'T', 'T', 'R'],
      ['A', 'K', 'I', 'T', 'M', 'V'],
      ['A', 'I', 'L', 'K', 'V', 'Y'],
      ['A', 'L', 'R', 'N', 'N', 'U']
    ]   
    
  end
end
