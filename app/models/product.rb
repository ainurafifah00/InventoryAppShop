class Product < ActiveRecord::Base
  
  mount_uploader :product_image, ProductImageUploader
  
  
  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("name like ?", "%#{search}%") 
  end
end
