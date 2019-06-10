class Budget < ApplicationRecord
    belongs_to :kind_event

    validates :customer_kind,
                :length => { :maximum => 1 },
                presence: true

    validates :name,
                :email,
                :length => { :maximum => 100 },
                presence: true
    validates :phone,
                :length => { :maximum => 20 },
                presence: true

    #validates :invited_number,
    #            numericality: { only_integer: true }
    rails_admin do
		list do
			items_per_page 100
			field :name
			field :email
            field :kind_event do
                searchable :description
                pretty_value do
                    value.try(:description)
                end
            end
            field :created_at
		end
		edit do
	        field :kind_event_id, :enum do
                enum do
                    KindEvent.all.collect {|p| [p.description, p.id]}
                end
            end
            field :customer_kind do
                html_attributes do
                    {:size => 20}
                end
            end
            field :name
            field :email
            field :phone
	        field :date_event do
                strftime_format "%d/%m/%Y"
            end
            field :invited_number
            field :description
            field :customer_santander
	    end
    end

    private

    def sanitize_data
        sanitize_name
        sanitize_email
    end

    def sanitize_name
        self.name = self.name.strip unless self.name.blank?
    end

    def sanitize_email
        self.email = self.email.strip unless self.email.blank?
    end


end
