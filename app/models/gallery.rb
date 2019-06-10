class Gallery < ApplicationRecord
    has_attached_file :image, :styles => { :large => "1000x667#", :mini => "442x294#" }, :default_url => ':placeholder'
	validates_attachment :image, :content_type => { :content_type => /\Aimage\/.*\Z/ }, :size => { :in => 0..2.megabytes }, :presence => true


    def image_large
        image.url(:large)
    end

    def image_mini
        image.url(:mini)
    end

    rails_admin do
        weight (-10)
		navigation_label 'Galeria'
		list do
			items_per_page 100
			field :title
			field :subtitle
		end
		edit do
            field :title
            field :subtitle
            field :description
            field :image
            field :photographer
            field :filter
		end
      end
end
