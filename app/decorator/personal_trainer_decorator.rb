class PersonalTrainerDecorator < BaseDecorator
    def full_name
        "#{firstName} #{sencondName} "
    end
end