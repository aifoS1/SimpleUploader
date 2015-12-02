class Photo < ActiveRecord::Base
  has_attached_file :image,
                  styles: { 
                    thumb: '120x120', 
                    large: '300x400' 
                    },

  validates_attachment :image,
                      content_type: { 
                      content_type: 
                      ["image/jpeg", "image/gif", "image/png"] 
                    }

end
