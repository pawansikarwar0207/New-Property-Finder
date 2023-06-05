class Post < ApplicationRecord

   scope :active, -> { where(active: true) }
   scope :latest, -> { order created_at: :desc }

end
