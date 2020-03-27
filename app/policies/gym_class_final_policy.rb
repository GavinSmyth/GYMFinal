class GymClassFinalPolicy < ApplicationPolicy
    attr_reader :user, :gym_class_final  
    def initialize(user, gym_class_final)
      @user = user
      @gym_class_final = gym_class_final
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