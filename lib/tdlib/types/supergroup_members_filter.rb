module TD::Types
  # Specifies the kind of chat members to return in getSupergroupMembers.
  class SupergroupMembersFilter < Base
    autoload TD::Types.camelize('recent'), 'tdlib/types/supergroup_members_filter/recent'
    autoload TD::Types.camelize('contacts'), 'tdlib/types/supergroup_members_filter/contacts'
    autoload TD::Types.camelize('administrators'), 'tdlib/types/supergroup_members_filter/administrators'
    autoload TD::Types.camelize('search'), 'tdlib/types/supergroup_members_filter/search'
    autoload TD::Types.camelize('restricted'), 'tdlib/types/supergroup_members_filter/restricted'
    autoload TD::Types.camelize('banned'), 'tdlib/types/supergroup_members_filter/banned'
    autoload TD::Types.camelize('mention'), 'tdlib/types/supergroup_members_filter/mention'
    autoload TD::Types.camelize('bots'), 'tdlib/types/supergroup_members_filter/bots'
  end
end
