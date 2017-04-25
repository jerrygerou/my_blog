class Post < ApplicationRecord
	validates_presence_of :title, :body
	has_attached_file :image, styles: {med: "100x100",}
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
