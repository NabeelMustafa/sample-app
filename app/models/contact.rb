class Contact < ApplicationRecord
    validates :name,
                :email,
                :length => { maximum: 100 },
                presence: true

    def sanitize_data
        sanitize_name
        sanitize_email
    end

    def sanitize_name
        self.name = self.name.strip unless self.name.blank?
    end

    def sanitize_email
        self.mail = self.email.strip unless self.email.blank?
    end

end
