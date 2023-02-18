class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, Recipe, public: true
    # Define abilities for the user here. For example:
    return unless user.present?

    can :manage, Food, user: user
    can :manage, Recipe, user: user
    can :manage, Recipefood, user: user
    can :read, :all
  end
end
