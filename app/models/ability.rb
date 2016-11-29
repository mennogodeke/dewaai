class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:

    user ||= User.new # guest user (not logged in)
    if user.admin_role?
      can :manage, :all
      can :access, :rails_admin       # only allow admin users to access Rails Admin
      can :dashboard
    end
    if user.user_role?
      can :read, :all
      can :manage, Entry
    end
    if user.user_role == nil && user.admin_role == nil
      can :read, :all
    end
  end
end
