#include QMK_KEYBOARD_H

enum custom_layers {
  _QWERTY,
  _SYMBOLS,
  _NUMPAD,
  _FUNCS,
  _ADJUST
};

#define SYMBOLS  MO(_SYMBOLS)
#define FUNCS    MO(_FUNCS)
#define NUMPAD   MO(_NUMPAD)
#define ADJUST   MO(_ADJUST)

#define CT_LEFT LCTL(KC_LEFT)
#define CT_RGHT LCTL(KC_RGHT)

/*
Since our quirky block definitions are basically a list of comma separated
arguments, we need a wrapper in order for these definitions to be
expanded before being used as arguments to the LAYOUT_xxx macro.
*/
#if (!defined(LAYOUT) && defined(KEYMAP))
#define LAYOUT KEYMAP
#endif

#define KEYMAP_wrapper(...)                  LAYOUT(__VA_ARGS__)
#define LAYOUT_wrapper(...)                  LAYOUT(__VA_ARGS__)
#define LAYOUT_ortho_4x12_wrapper(...)       LAYOUT_ortho_4x12(__VA_ARGS__)

/*
Blocks for each of the four major keyboard layouts
Organized so we can quickly adapt and modify all of them
at once, rather than for each keyboard, one at a time.
And this allows for much cleaner blocks in the keymaps.
For instance Tap/Hold for Control on all of the layouts
NOTE: These are all the same length.  If you do a search/replace
  then you need to add/remove underscores to keep the
  lengths consistent.
*/

#define QWERTY_1     KC_Q,    KC_W,    KC_E,    KC_R,    KC_T,    KC_ESC,      KC_DEL,  KC_Y,    KC_U,    KC_I,    KC_O,    KC_P
#define QWERTY_2     KC_A,    KC_S,    KC_D,    KC_F,    KC_G,    KC_TAB,      KC_BSPC, KC_H,    KC_J,    KC_K,    KC_L,    KC_SCLN
#define QWERTY_3     KC_Z,    KC_X,    KC_C,    KC_V,    KC_B,    ADJUST,      ADJUST,  KC_N,    KC_M,    KC_COMM, KC_DOT,  KC_SLSH
#define QWERTY_4     KC_LSFT, KC_LCTL, KC_LALT, KC_LGUI, FUNCS,   KC_SPC,      KC_ENT,  SYMBOLS, NUMPAD,  KC_RALT, KC_RCTL, KC_RSFT

#define FUNCS_1      KC_TILD, KC_LCBR, KC_DQUO, KC_RCBR, KC_PIPE, KC_ESC,      KC_DEL,  KC_PGUP, CT_LEFT, KC_UP,   CT_RGHT, KC_HOME
#define FUNCS_2      KC_GRV,  KC_LPRN, KC_QUOT, KC_RPRN, KC_BSLS, KC_TAB,      KC_BSPC, KC_PGDN, KC_LEFT, KC_DOWN, KC_RGHT, KC_END
#define FUNCS_3      XXXXXXX, KC_LBRC, XXXXXXX, KC_RBRC, XXXXXXX, ADJUST,      ADJUST,  KC_UNDS, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX
#define FUNCS_4      KC_LSFT, KC_LCTL, KC_LALT, KC_LGUI, XXXXXXX, KC_SPC,      KC_ENT,  FUNCS,   XXXXXXX,  KC_RALT, KC_RCTL, KC_RSFT

#define SYMBOLS_1    KC_EXLM, KC_AT,   KC_HASH, KC_DLR,  KC_PERC, KC_ESC,      KC_DEL,  KC_CIRC, KC_AMPR, KC_ASTR, KC_LPRN, KC_RPRN
#define SYMBOLS_2    KC_1,    KC_2,    KC_3,    KC_4,    KC_5,    KC_TAB,      KC_BSPC, KC_6,    KC_7,    KC_8,    KC_9,    KC_0
#define SYMBOLS_3    XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, ADJUST,      ADJUST,  KC_MINS, KC_PLUS, KC_COMM, KC_DOT,  KC_EQL
#define SYMBOLS_4    KC_LSFT, KC_LCTL, KC_LALT, KC_LGUI, XXXXXXX, KC_SPC,      KC_ENT,  SYMBOLS, XXXXXXX, KC_RALT, KC_RCTL, KC_RSFT

#define NUMPAD_1     KC_F1,   KC_F2,   KC_F3,   KC_F4,   KC_PSCR, KC_ESC,      KC_DEL,  KC_HOME, CT_LEFT, KC_UP,   CT_RGHT, KC_END 
#define NUMPAD_2     KC_F5,   KC_F6,   KC_F7,   KC_F8,   KC_SLCK, KC_TAB,      KC_BSPC, KC_MINS, KC_LEFT, KC_DOWN, KC_RGHT, KC_EQL 
#define NUMPAD_3     KC_F9,   KC_F10,  KC_F11,  KC_F12,  KC_BRK,  ADJUST,      ADJUST,  KC_PDOT, KC_KP_1, KC_KP_2, KC_KP_3, KC_PPLS
#define NUMPAD_4     KC_LSFT, KC_LCTL, KC_LALT, KC_LGUI, FUNCS,   KC_SPC,      KC_PENT, KC_NLCK, NUMPAD,  KC_RALT, KC_RCTL, KC_RSFT

#define ADJUST_1     RESET,   XXXXXXX, EEP_RST, RESET,   XXXXXXX, ADJUST,      ADJUST,  KC_WH_U, KC_BTN4, KC_MS_U, KC_BTN5, RESET
#define ADJUST_2     RGB_MOD, RGB_HUD, RGB_SAD, RGB_VAD, XXXXXXX, XXXXXXX,     XXXXXXX, KC_WH_D, KC_MS_L, KC_MS_D, KC_MS_R, XXXXXXX
#define ADJUST_3     RGB_TOG, RGB_HUI, RGB_SAI, RGB_VAI, XXXXXXX, ADJUST,      ADJUST,  XXXXXXX, KC_VOLD, KC_MPLY, KC_VOLU, XXXXXXX
#define ADJUST_4     XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX,     KC_BTN3, KC_BTN1, KC_BTN2, XXXXXXX, XXXXXXX, XXXXXXX


// keymap.c

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
[_QWERTY] = LAYOUT_ortho_4x12_wrapper(
   QWERTY_1, \
   QWERTY_2, \
   QWERTY_3, \
   QWERTY_4  \
),

[_SYMBOLS] = LAYOUT_ortho_4x12_wrapper( \
   SYMBOLS_1, \
   SYMBOLS_2, \
   SYMBOLS_3, \
   SYMBOLS_4  \
),

[_FUNCS] = LAYOUT_ortho_4x12_wrapper( \
   FUNCS_1, \
   FUNCS_2, \
   FUNCS_3, \
   FUNCS_4  \
),

[_NUMPAD] = LAYOUT_ortho_4x12_wrapper( \
   NUMPAD_1, \
   NUMPAD_2, \
   NUMPAD_3, \
   NUMPAD_4  \
),

[_ADJUST] = LAYOUT_ortho_4x12_wrapper( \
   ADJUST_1, \
   ADJUST_2, \
   ADJUST_3, \
   ADJUST_4  \
),

};

//uint32_t layer_state_set_user(uint32_t state) {
//  return update_tri_layer_state(state, _SYMBOLS, _FUNCS, _ADJUST);
//}

/*
bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    //case QWERTY:
      //if (record->event.pressed) {
        //set_single_persistent_default_layer(_QWERTY);
      //}
      //return false;
    case KC_LSFT:
      if (record->event.pressed) {
        if (get_mods() & MOD_BIT(KC_RSFT)) {
		  register_code(KC_CAPSLOCK);
		  unregister_code(KC_CAPSLOCK);
		  return false;
      	} else if (IS_HOST_LED_ON(USB_LED_CAPS_LOCK)) {
		  register_code(KC_CAPSLOCK);
		  unregister_code(KC_CAPSLOCK);
	    }
      }
      return true;
    case KC_RSFT:
      if (record->event.pressed) {
        if (get_mods() & MOD_BIT(KC_LSFT)) {
		  register_code(KC_CAPSLOCK);
		  unregister_code(KC_CAPSLOCK);
		  return false;
      	} else if (IS_HOST_LED_ON(USB_LED_CAPS_LOCK)) {
		  register_code(KC_CAPSLOCK);
		  unregister_code(KC_CAPSLOCK);
	    }
      }
      return true;
  }
  return true;
}
*/

