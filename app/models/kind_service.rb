class KindService < ApplicationRecord

    rails_admin do
        list do
            field :description
        end
        edit do
            field :description
        end
    end

end
