#include QMK_KEYBOARD_H

enum custom_layers {
  _QWERTY,
  _SYMBOLS,
  _FUNCPAD,
  _ADJUST
};

#define SYMBOLS  MO(_SYMBOLS)
#define FUNCPAD  MO(_FUNCPAD)
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

#define _____________________QWERTY_L1______________________ KC_Q,    KC_W,    KC_E,    KC_R,    KC_T,    ADJUST
#define _____________________QWERTY_L2______________________ KC_A,    KC_S,    KC_D,    KC_F,    KC_G,    KC_TAB
#define _____________________QWERTY_L3______________________ KC_Z,    KC_X,    KC_C,    KC_V,    KC_B,    KC_INS
#define _____________________QWERTY_L4______________________ KC_LCTL, KC_LALT, KC_LGUI, FUNCPAD, KC_LSFT, KC_SPC

#define _____________________QWERTY_R1______________________ ADJUST,  KC_Y,    KC_U,    KC_I,    KC_O,    KC_P
#define _____________________QWERTY_R2______________________ KC_BSPC, KC_H,    KC_J,    KC_K,    KC_L,    KC_SCLN
#define _____________________QWERTY_R3______________________ KC_DEL,  KC_N,    KC_M,    KC_COMM, KC_DOT,  KC_SLSH
#define _____________________QWERTY_R4______________________ KC_ENT,  SYMBOLS, KC_ESC,  KC_RGUI, KC_RALT, KC_RCTL


#define _____________________SYMBOLS_L1_____________________ KC_BSLS, XXXXXXX, KC_LPRN, KC_RPRN, KC_GRV,  ADJUST
#define _____________________SYMBOLS_L2_____________________ KC_LBRC, KC_RBRC, KC_MINS, KC_EQL,  KC_QUOT, KC_TAB
#define _____________________SYMBOLS_L3_____________________ KC_1,    KC_2,    KC_3,    KC_4,    KC_5,    KC_INS
#define _____________________SYMBOLS_L4_____________________ KC_LCTL, KC_LALT, KC_LGUI, XXXXXXX, KC_LSFT, KC_SPC

#define _____________________SYMBOLS_R1_____________________ ADJUST,  KC_PGUP, CT_LEFT, KC_UP,   CT_RGHT, KC_HOME
#define _____________________SYMBOLS_R2_____________________ KC_BSPC, KC_PGDN, KC_LEFT, KC_DOWN, KC_RGHT, KC_END
#define _____________________SYMBOLS_R3_____________________ KC_DEL,  KC_6,    KC_7,    KC_8,    KC_9,    KC_0
#define _____________________SYMBOLS_R4_____________________ KC_ENT,  SYMBOLS, KC_ESC,  KC_RGUI, KC_RALT, KC_RCTL


#define _____________________FUNCPAD_L1_____________________ KC_PSLS, KC_KP_7, KC_KP_8, KC_KP_9, KC_PAST, ADJUST
#define _____________________FUNCPAD_L2_____________________ KC_PDOT, KC_KP_4, KC_KP_5, KC_KP_6, KC_PMNS, KC_TAB
#define _____________________FUNCPAD_L3_____________________ KC_KP_0, KC_KP_1, KC_KP_2, KC_KP_3, KC_PPLS, KC_NLCK
#define _____________________FUNCPAD_L4_____________________ KC_LCTL, KC_LALT, KC_LGUI, FUNCPAD, KC_LSFT, KC_SPC

#define _____________________FUNCPAD_R1_____________________ ADJUST,  KC_F1,   KC_F2,   KC_F3,   KC_F4,   KC_F5
#define _____________________FUNCPAD_R2_____________________ XXXXXXX, KC_F6,   KC_F7,   KC_F8,   KC_F9,   KC_F10
#define _____________________FUNCPAD_R3_____________________ FUNCPAD, KC_F11,  KC_F12,  KC_PSCR, KC_SLCK, KC_BRK
#define _____________________FUNCPAD_R4_____________________ KC_PENT, KC_RSFT, KC_TAB,  KC_RGUI, KC_RALT, KC_RCTL


#define _____________________ADJUST_L1______________________ RESET,   XXXXXXX, EEP_RST, RESET,   XXXXXXX, XXXXXXX
#define _____________________ADJUST_L2______________________ RGB_MOD, RGB_HUD, RGB_SAD, RGB_VAD, XXXXXXX, XXXXXXX
#define _____________________ADJUST_L3______________________ RGB_TOG, RGB_HUI, RGB_SAI, RGB_VAI, XXXXXXX, ADJUST
#define _____________________ADJUST_L4______________________ XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX

#define _____________________ADJUST_R1______________________ XXXXXXX, KC_WH_U, KC_BTN4, KC_MS_U, KC_BTN5, RESET
#define _____________________ADJUST_R2______________________ XXXXXXX, KC_WH_D, KC_MS_L, KC_MS_D, KC_MS_R, XXXXXXX
#define _____________________ADJUST_R3______________________ XXXXXXX, XXXXXXX, KC_VOLD, KC_MPLY, KC_VOLU, XXXXXXX
#define _____________________ADJUST_R4______________________ KC_BTN3, KC_BTN1, KC_BTN2, XXXXXXX, XXXXXXX, XXXXXXX


/*
#define ______________FUNCTIONS_R3_________________        ALGR(KC_GRV), ALGR(KC_DQUO), ALGR(KC_QUOT), ALGR(KC_6), OS_RALT
*/
