class KindEvent < ApplicationRecord

    has_many :budgets

    validates :description,
                presence: true
    validates :description, :length => { :maximum => 100 }

    def sanitize_data
        sanitize_description
    end

    def sanitize_description
        self.description = self.description.strip unless self.description.blank?
    end

    rails_admin do
        list do
            field :description
        end
        edit do
            field :description
        end
    end

end
