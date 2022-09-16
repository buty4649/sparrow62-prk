kbd = Keyboard.new

LROW1 = 0
LROW2 = 1
LROW3 = 2
LROW4 = 3
LROW5 = 4

LCOL1 = 5
LCOL2 = 6
LCOL3 = 7
LCOL4 = 8
LCOL5 = 9
LCOL6 = 10
LCOL7 = 11

kbd.init_matrix_pins(
  [
    [[LROW1, LCOL1], [LROW2, LCOL1], [LROW1, LCOL2], [LROW1, LCOL3], [LROW1, LCOL4], [LROW1, LCOL5], [LROW1, LCOL6], nil],
    [nil,            [LROW3, LCOL1], [LROW2, LCOL2], [LROW2, LCOL3], [LROW2, LCOL4], [LROW2, LCOL5], [LROW2, LCOL6], [LROW2, LCOL7]],
    [nil,            [LROW4, LCOL1], [LROW3, LCOL2], [LROW3, LCOL3], [LROW3, LCOL4], [LROW3, LCOL5], [LROW3, LCOL6], [LROW3, LCOL7]],
    [nil,            [LROW5, LCOL1], [LROW4, LCOL2], [LROW4, LCOL3], [LROW4, LCOL4], [LROW4, LCOL5], [LROW4, LCOL6], [LROW4, LCOL7]],
    [nil,            nil,            nil,            nil,            [LROW5, LCOL4], [LROW5, LCOL5], [LROW5, LCOL6], [LROW5, LCOL7]],
  ]
)

kbd.add_layer :default, %i[
  KC_ESC   KC_GRAVE   KC_1   KC_2   KC_3    KC_4    KC_5
           KC_TAB     KC_Q   KC_W   KC_E    KC_R    KC_T    KC_6
           KC_CAPS    KC_A   KC_S   KC_D    KC_F    KC_G    KC_LBRC
           KC_LSFT    KC_Z   KC_X   KC_C    KC_V    KC_B    KC_RBRC
                                    KC_LCTL KC_LGUI KC_LALT KC_SPC
]

kbd.start!
