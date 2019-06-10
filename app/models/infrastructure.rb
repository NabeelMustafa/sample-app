class Infrastructure < ApplicationRecord

    scope :total_differential,  -> { count }

    validates :title,
                :subtitle,
                presence: true
    validates :title, :length => { :maximum => 25 }
    validates :subtitle, :length => { :maximum => 170 }

    validates_uniqueness_of :title

    validate :block_if_larger_six_differentials

    def sanitize_data
        sanitize_title
        sanitize_subtitle
    end

    def sanitize_title
        self.title = self.title.strip unless self.title.blank?
    end

    def sanitize_subtitle
        self.subtitle = self.subtitle.strip unless self.subtitle.blank?
    end


    def block_if_larger_six_differentials

      total_differential = Infrastructure.total_differential
      if total_differential == 6
          errors.add :differential, 'Limite máximo de 6 diferenciais já estão cadastrados.'
      end

  end



end
