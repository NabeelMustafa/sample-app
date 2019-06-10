class BudgetSerializer < ActiveModel::Serializer
  attributes :id,
                :customer_kind,
                :name,
                :email,
                :phone,
                :date_event,
                :invited_number,
                :description
end
