class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :micropost    #,class_name: 'User'  #class_nameでMicropostというClassを参照しないようにしている
  
  validates :user_id, presence: true
  validates :micropost_id, presence: true
end
