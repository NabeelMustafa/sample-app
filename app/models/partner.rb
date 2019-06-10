class Partner < ApplicationRecord
    belongs_to :category

    validates :description,
                presence: true
    validates :description, :length => { :maximum => 100 }

    def sanitize_data
        sanitize_description
    end

    def sanitize_description
        self.description = self.description.strip unless self.description.blank?
    end

end
