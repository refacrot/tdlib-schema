module TD::Types
  # Contains animated stickers which must be used for dice animation rendering.
  class DiceStickers < Base
    autoload TD::Types.camelize('regular'), 'tdlib/types/dice_stickers/regular'
    autoload TD::Types.camelize('slot_machine'), 'tdlib/types/dice_stickers/slot_machine'
  end
end
