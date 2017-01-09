class Image < ActiveRecord::Base
  belongs_to :user
  mount_uploader :picture, PictureUploader

  # validate :picture_size


  def creator?(current_user)
    return false unless current_user
    
  end

  private
  def picture_size
    if picture.size > 5.megabytes

     errors.add(:picture, "should be less than 5mb")
     
     end 
    
  end
end
