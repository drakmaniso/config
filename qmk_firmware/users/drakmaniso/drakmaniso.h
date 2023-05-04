#include QMK_KEYBOARD_H

enum custom_layers {
  _QWERTY,
  _LAYER_A,
  _LAYER_B,
  _ADJUST
};

//#define SP_LAYA  LT(_LAYER_A, KC_SPC)
//#define SP_SHFT  MT(MOD_RSFT, KC_SPC)

#define LAYER_A  MO(_LAYER_A)
#define LAYER_B  MO(_LAYER_B)
#define ADJUST   MO(_ADJUST)

#define CT_LEFT LCTL(KC_LEFT)
#define CT_RGHT LCTL(KC_RGHT)

#define ALT_ESC LALT(KC_ESC)

#define MY_LSFT KC_LSFT
#define MY_RSFT KC_RSFT
#define MY_LCTL KC_LCTL
#define MY_RCTL KC_RCTL
#define MY_LALT KC_LALT
#define MY_RALT KC_RALT
#define MY_LGUI KC_LGUI
#define MY_RGUI KC_RGUI

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

#define QWERTY_1     KC_Q,    KC_W,    KC_E,    KC_R,    KC_T,    KC_ESC,      ADJUST,  KC_Y,    KC_U,    KC_I,    KC_O,    KC_P
#define QWERTY_2     KC_A,    KC_S,    KC_D,    KC_F,    KC_G,    KC_ENT,      KC_BSPC, KC_H,    KC_J,    KC_K,    KC_L,    KC_SCLN
#define QWERTY_3     KC_Z,    KC_X,    KC_C,    KC_V,    KC_B,    KC_DEL,      KC_TAB,  KC_N,    KC_M,    KC_COMM, KC_DOT,  KC_SLSH
#define QWERTY_4     MY_LGUI, LAYER_B, MY_LSFT, MY_LALT, MY_LCTL, LAYER_A,     KC_SPC,  MY_RSFT, MY_RALT, MY_RCTL, LAYER_B, MY_RGUI

#define LAYER_A_1    KC_GRV,  KC_7,    KC_8,    KC_9,    KC_EQL,  KC_ESC,      ADJUST,  KC_LBRC, CT_LEFT, KC_UP,   CT_RGHT, KC_RBRC
#define LAYER_A_2    KC_QUOT, KC_4,    KC_5,    KC_6,    KC_MINS, KC_ENT,      KC_BSPC, KC_HOME, KC_LEFT, KC_DOWN, KC_RGHT, KC_END
#define LAYER_A_3    KC_0,    KC_1,    KC_2,    KC_3,    KC_BSLS, KC_DEL,      KC_TAB,  KC_LPRN, KC_PGUP, KC_PGDN, KC_INS,  KC_RPRN
#define LAYER_A_4    MY_LGUI, KC_DOT,  MY_LSFT, MY_LALT, MY_LCTL, LAYER_A,     KC_SPC,  MY_RSFT, MY_RALT, MY_RCTL, XXXXXXX, MY_RGUI

#define LAYER_B_1    KC_BRK,  KC_F7,   KC_F8,   KC_F9,   KC_F10,  KC_ESC,      ADJUST,  KC_PSLS, KC_KP_7, KC_KP_8, KC_KP_9, KC_PMNS
#define LAYER_B_2    KC_SLCK, KC_F4,   KC_F5,   KC_F6,   KC_F11,  KC_PENT,     KC_BSPC, KC_PAST, KC_KP_4, KC_KP_5, KC_KP_6, KC_PPLS
#define LAYER_B_3    KC_PSCR, KC_F1,   KC_F2,   KC_F3,   KC_F11,  KC_DEL,      KC_TAB,  KC_KP_0, KC_KP_1, KC_KP_2, KC_KP_3, KC_PDOT
#define LAYER_B_4    MY_LGUI, LAYER_B, MY_LSFT, MY_LALT, MY_LCTL, XXXXXXX,     KC_SPC,  MY_RSFT, MY_RALT, MY_RCTL, LAYER_B, MY_RGUI

#define ADJUST_1     RESET,   XXXXXXX, XXXXXXX, RGB_MOD, RGB_TOG, XXXXXXX,     ADJUST,  KC_WH_U, KC_BTN1, KC_MS_U, KC_BTN2, RESET
#define ADJUST_2     XXXXXXX, RGB_HUI, RGB_SAI, RGB_VAI, XXXXXXX, XXXXXXX,     XXXXXXX, KC_WH_D, KC_MS_L, KC_MS_D, KC_MS_R, XXXXXXX
#define ADJUST_3     XXXXXXX, RGB_HUD, RGB_SAD, RGB_VAD, XXXXXXX, XXXXXXX,     XXXXXXX, XXXXXXX, KC_WH_U, KC_WH_D, XXXXXXX, KC_LOCK
#define ADJUST_4     MY_LGUI, LAYER_B, MY_LSFT, MY_RALT, MY_RCTL, LAYER_A,     KC_BTN1, KC_BTN2, KC_BTN3, XXXXXXX, XXXXXXX, XXXXXXX


// keymap.c

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
[_QWERTY] = LAYOUT_ortho_4x12_wrapper(
   QWERTY_1, \
   QWERTY_2, \
   QWERTY_3, \
   QWERTY_4  \
),

[_LAYER_A] = LAYOUT_ortho_4x12_wrapper( \
   LAYER_A_1, \
   LAYER_A_2, \
   LAYER_A_3, \
   LAYER_A_4  \
),

[_LAYER_B] = LAYOUT_ortho_4x12_wrapper( \
   LAYER_B_1, \
   LAYER_B_2, \
   LAYER_B_3, \
   LAYER_B_4  \
),

[_ADJUST] = LAYOUT_ortho_4x12_wrapper( \
   ADJUST_1, \
   ADJUST_2, \
   ADJUST_3, \
   ADJUST_4  \
),

};

//uint32_t layer_state_set_user(uint32_t state) {
//  return update_tri_layer_state(state, _LAYER_A, _LAYER_B, _ADJUST);
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
