class Ability
  include CanCan::Ability

  def initialize(user)

    user ||= User.new
    if user.role == "Centralny"
      can [:index, :show], @voivodeship
      can :all, Vote
    end
    can :manage, :all if user.role == "Centralny"

  end
end
