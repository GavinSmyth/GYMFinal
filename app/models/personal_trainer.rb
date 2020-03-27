class PersonalTrainer < ApplicationRecord
    has_many :gym_class_final
    has_many :pt_client

end
