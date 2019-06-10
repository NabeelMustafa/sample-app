class Supplier < ApplicationRecord
  belongs_to :category
    rails_admin do
		list do
			items_per_page 100
			field :name
			field :resume
            field :category do
                searchable :description
                pretty_value do
                    value.try(:description)
                end
            end
		end
		edit do
	        field :category_id, :enum do
                enum do
                    Category.all.collect {|p| [p.description, p.id]}
                end
            end
            field :name
            field :resume
	    end
    end


end
