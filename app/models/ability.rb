class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the user here. For example:

    return unless user.present?

    if user.admin?
      can :manage, :all
    else
      can :read, Recipe, public: true
      can :create, [Food, Recpe], user_id: user.id
      can :destroy, [Food, Recipe], user_id: user.id
    end
  end
end
