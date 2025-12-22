module TD::Types
  # Describes type of clickable area on a story media.
  class StoryAreaType < Base
    autoload TD::Types.camelize('location'), 'tdlib/types/story_area_type/location'
    autoload TD::Types.camelize('venue'), 'tdlib/types/story_area_type/venue'
    autoload TD::Types.camelize('suggested_reaction'), 'tdlib/types/story_area_type/suggested_reaction'
    autoload TD::Types.camelize('message'), 'tdlib/types/story_area_type/message'
    autoload TD::Types.camelize('link'), 'tdlib/types/story_area_type/link'
    autoload TD::Types.camelize('weather'), 'tdlib/types/story_area_type/weather'
    autoload TD::Types.camelize('upgraded_gift'), 'tdlib/types/story_area_type/upgraded_gift'
  end
end
