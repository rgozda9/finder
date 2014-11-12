class Customer < ActiveRecord::Base
	belongs_to :province
	validates :full_name, :notes, :presence => true
	validates :email, :uniqueness => true, allow_blank: true
	validates :phone, length: { is: 12 }
	validates :image, format: { with: /[.](JPG|jpg|jpeg|png)/, message: "Image file must end with .JPG, .jpg, .jpeg or .png" }
end
