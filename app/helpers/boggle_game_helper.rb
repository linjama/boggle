module BoggleGameHelper
  
  def letter_rotation 
    [0, 90, 180, 270].shuffle[0].to_s+'deg'
  end
  
end
