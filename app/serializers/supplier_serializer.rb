class SupplierSerializer < ActiveModel::Serializer
  attributes :id,
                :name,
                :resume

  belongs_to :category
end

