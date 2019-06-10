class GallerySerializer < ActiveModel::Serializer
    attributes :id,
                :title,
                :subtitle,
                :description,
                :photographer,
                :filter,
                :image_file_name,
                :image_content_type,
                :image_file_size,
                :image_updated_at,
                :image_large,
                :image_mini


end
