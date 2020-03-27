class GymClassFinal < ApplicationRecord
    belongs_to :personal_trainer, foreign_key: "personal_trainer_id"

end
