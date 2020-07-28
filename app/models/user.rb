class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
  
  validates :name, presence: true
  validates :self_introduction, length: { maximum: 150 } 
  mount_uploader :image, ImageUploader
  enum speciality: { 特になし: 0, 和食: 1, 洋食: 2, 中華: 3, お菓子: 4 }


  def update_without_current_password(params, *options)
    params.delete(:current_password)

    if params[:password].blank? && params[:password_confirmation].blank?
      params.delete(:password)
      params.delete(:password_confirmation)
    end

    result = update_attributes(params, *options)
    clean_up_passwords
    result
  end
end
