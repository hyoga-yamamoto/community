class Post < ApplicationRecord

  validates :title, :place, :content, :image, presence: true
  belongs_to :user
  def self.search(search)   
    if search  
      where(['place LIKE ?', "%#{search}%"])   
    else  
      all
    end  
  end  
end
