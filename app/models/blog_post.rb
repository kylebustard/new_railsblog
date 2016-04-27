class BlogPost < ActiveRecord::Base
	has_many :comments

	validates :title, :author, :blog_entry, presence:true
	validates :title, uniqueness: true, length: { maximum:140 }
end
