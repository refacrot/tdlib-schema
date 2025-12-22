module TD::Types
  # Describes type of clickable area on a story media to be added.
  class InputStoryAreaType < Base
    autoload TD::Types.camelize('location'), 'tdlib/types/input_story_area_type/location'
    autoload TD::Types.camelize('found_venue'), 'tdlib/types/input_story_area_type/found_venue'
    autoload TD::Types.camelize('previous_venue'), 'tdlib/types/input_story_area_type/previous_venue'
    autoload TD::Types.camelize('suggested_reaction'), 'tdlib/types/input_story_area_type/suggested_reaction'
    autoload TD::Types.camelize('message'), 'tdlib/types/input_story_area_type/message'
    autoload TD::Types.camelize('link'), 'tdlib/types/input_story_area_type/link'
    autoload TD::Types.camelize('weather'), 'tdlib/types/input_story_area_type/weather'
    autoload TD::Types.camelize('upgraded_gift'), 'tdlib/types/input_story_area_type/upgraded_gift'
  end
end
