class Listing < ActiveRecord::Base
has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "200x" }, :default_url => "default.jpg"
validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
