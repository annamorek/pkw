class Ability
  include CanCan::Ability
  def initialize(user)

    if user ||= User.new
      cannot :manage, [Vote, District, Voivodeship, Commitee]
      can :create, User
    end
    if user.role == "Centralny"
      can [:show], Voivodeship, :id => user.id
      can [:index, :show], District#, :voivodeship_id => voivodeship.id
      can [:index, :show], Vote
      can [:index, :show, :update], Commitee
      cannot :create, User
      cannot :destroy, :all
    elsif user.role == "Okręgowy"
      can :show, User, :id => user.id
      can [:index, :show], District, :user_id => user.id
      can [:edit, :update], District, :user_id => user.id
      can :edit, @district, :user_id => user.id
      can [:show, :update, :edit, :index], Vote
      can [:index, :update, :show], Commitee
      cannot :edit, Commitee
      can :show, @commitee
      cannot :destroy, :all
      cannot :create, [User, District, Commitee]
      cannot :manage, Voivodeship
    end
  end
end
