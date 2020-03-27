class UserProfile < ApplicationRecord
    belongs_to :user
    validate :one_shop_per_user
    validates_uniqueness_of :user_id

    def one_shop_per_user
        if user.user_profile && user.user_profile != self
          errors.add(:user, "already has a shop")
        end
     end

end
