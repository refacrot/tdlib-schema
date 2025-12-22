module TD::Types
  # Represents result of checking whether a name can be used for a new sticker set.
  class CheckStickerSetNameResult < Base
    autoload TD::Types.camelize('ok'), 'tdlib/types/check_sticker_set_name_result/ok'
    autoload TD::Types.camelize('name_invalid'), 'tdlib/types/check_sticker_set_name_result/name_invalid'
    autoload TD::Types.camelize('name_occupied'), 'tdlib/types/check_sticker_set_name_result/name_occupied'
  end
end
