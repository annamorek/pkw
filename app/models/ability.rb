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
      cannot :create, User
      cannot :destroy, :all
    elsif user.role == "Okręgowy"
      can :show, User, :id => user.id
      can [:index, :show], District, :user_id => user.id
      can :update, District, :user_id => user.id
      can [:index, :show], Vote #, :commitee_id => user.id #, :commitee_id => commitee.id źle?! index niby wyrzucić, bo do wszystkich show/edit
      can [:index, :show], Commitee
      cannot :destroy, :all
      cannot :create, User
      cannot :manage, Voivodeship
    end
  end
end
