class PersonalTrainerPolicy < ApplicationPolicy
    attr_reader :user, :personal_trainer  
    def initialize(user, personal_trainer)
      @user = user
      @personal_trainer = personal_trainer
    end
  
    def create?
      user.admin?
    end

    def update?
      user.admin?
    end

    def destroy?
      user.admin?
    end

    
  
    
  end