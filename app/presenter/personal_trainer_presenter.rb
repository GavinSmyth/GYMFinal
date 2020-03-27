class PersonalTrainerPresenter
    def initialize(personal_trainer)
        @personal_trainer = personal_trainer

    end
    def full_name
        "#{@personal_trainer.firstName} #{@personal_trainer.secondName}"
    end
end