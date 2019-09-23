#include QMK_KEYBOARD_H

enum custom_layers {
  _QWERTY,
  _NUMBERS,
  _SYMBOLS,
  _NUM_PAD,
  _ADJUST
};

#define NUMBERS  MO(_NUMBERS)
#define SYMBOLS  MO(_SYMBOLS)
#define NUM_PAD  MO(_NUM_PAD)
#define ADJUST   MO(_ADJUST)

#define S_TAB    LSFT(KC_TAB)

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

#define _____________________QWERTY_L1______________________ KC_Q,    KC_W,    KC_E,    KC_R,    KC_T,    KC_DEL
#define _____________________QWERTY_L2______________________ KC_A,    KC_S,    KC_D,    KC_F,    KC_G,    KC_ESC
#define _____________________QWERTY_L3______________________ KC_Z,    KC_X,    KC_C,    KC_V,    KC_B,    KC_GRV
#define _____________________QWERTY_L4______________________ KC_LCTL, KC_LALT, ADJUST,  KC_LGUI, KC_LSFT, SYMBOLS

#define _____________________QWERTY_R1______________________ KC_BSPC, KC_Y,    KC_U,    KC_I,    KC_O,    KC_P
#define _____________________QWERTY_R2______________________ KC_ENT,  KC_H,    KC_J,    KC_K,    KC_L,    KC_SCLN
#define _____________________QWERTY_R3______________________ KC_QUOT, KC_N,    KC_M,    KC_COMM, KC_DOT,  KC_SLSH
#define _____________________QWERTY_R4______________________ KC_SPC,  NUMBERS, KC_RGUI, KC_APP,  KC_RALT, KC_RCTL


#define _____________________NUMBERS_L1_____________________ KC_1,    KC_2,    KC_3,    KC_4,    KC_5,    KC_DEL
#define _____________________NUMBERS_L2_____________________ KC_UNDS, KC_MINS, KC_PLUS, KC_EQL,  KC_PIPE, KC_ESC 
#define _____________________NUMBERS_L3_____________________ KC_LBRC, KC_RBRC, KC_LCBR, KC_RCBR, KC_BSLS, XXXXXXX
#define _____________________NUMBERS_L4_____________________ KC_LCTL, KC_LALT, KC_APP,  KC_LGUI, KC_LSFT, XXXXXXX

#define _____________________NUMBERS_R1_____________________ KC_BSPC, KC_6,    KC_7,    KC_8,    KC_9,    KC_0
#define _____________________NUMBERS_R2_____________________ KC_ENT,  KC_LEFT, KC_DOWN, KC_UP,   KC_RGHT, KC_HOME
#define _____________________NUMBERS_R3_____________________ KC_INS,  S_TAB,   KC_PGDN, KC_PGUP, KC_TAB,  KC_END
#define _____________________NUMBERS_R4_____________________ KC_SPC,  NUMBERS, KC_RGUI, ADJUST,  KC_RALT, KC_RCTL


#define _____________________SYMBOLS_L1_____________________ KC_EXLM, KC_AT,   KC_HASH, KC_DLR,  KC_PERC, KC_DEL
#define _____________________SYMBOLS_L2_____________________ KC_F1,   KC_F2,   KC_F3,   KC_F4,   KC_F5,   KC_F6
#define _____________________SYMBOLS_L3_____________________ KC_F7,   KC_F8,   KC_F9,   KC_F10,  KC_F11,  KC_F12
#define _____________________SYMBOLS_L4_____________________ KC_LCTL, KC_LALT, ADJUST,  KC_LGUI, KC_LSFT, SYMBOLS
                                          
#define _____________________SYMBOLS_R1_____________________ KC_BSPC, KC_CIRC, KC_AMPR, KC_ASTR, KC_LPRN, KC_RPRN
#define _____________________SYMBOLS_R2_____________________ KC_PSCR, KC_MS_L, KC_MS_D, KC_MS_U, KC_MS_R, KC_SLCK
#define _____________________SYMBOLS_R3_____________________ KC_BTN3, KC_BTN4, KC_WH_D, KC_WH_U, KC_BTN5, KC_BRK 
#define _____________________SYMBOLS_R4_____________________ KC_BTN1, KC_RSFT, KC_BTN2, KC_APP,  KC_RALT, KC_RCTL


#define _____________________NUM_PAD_L1_____________________ KC_PMNS, KC_KP_7, KC_KP_8, KC_KP_9, KC_PPLS, KC_DEL
#define _____________________NUM_PAD_L2_____________________ KC_PSLS, KC_KP_4, KC_KP_5, KC_KP_6, KC_PAST, KC_ESC
#define _____________________NUM_PAD_L3_____________________ KC_KP_0, KC_KP_1, KC_KP_2, KC_KP_3, KC_PDOT, KC_ENT
#define _____________________NUM_PAD_L4_____________________ KC_LCTL, KC_LALT, NUM_PAD, KC_LGUI, KC_LSFT, KC_NLCK
                                          
#define _____________________NUM_PAD_R1_____________________ KC_BSPC, KC_PMNS, KC_KP_7, KC_KP_8, KC_KP_9, KC_PPLS
#define _____________________NUM_PAD_R2_____________________ KC_ENT,  KC_PSLS, KC_KP_4, KC_KP_5, KC_KP_6, KC_PAST
#define _____________________NUM_PAD_R3_____________________ KC_CAPS, KC_KP_0, KC_KP_1, KC_KP_2, KC_KP_3, KC_PDOT
#define _____________________NUM_PAD_R4_____________________ KC_SPC,  KC_RSFT, KC_RGUI, KC_APP,  KC_RALT, KC_RCTL
                                          
                                          
#define _____________________ADJUST_L1______________________ RESET,   XXXXXXX, EEP_RST, RESET,   XXXXXXX, XXXXXXX
#define _____________________ADJUST_L2______________________ XXXXXXX, KC_VOLD, KC_VOLU, XXXXXXX, XXXXXXX, XXXXXXX
#define _____________________ADJUST_L3______________________ RGB_TOG, RGB_HUI, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX
#define _____________________ADJUST_L4______________________ XXXXXXX, XXXXXXX, ADJUST,  XXXXXXX, XXXXXXX, XXXXXXX
                                          
#define _____________________ADJUST_R1______________________ XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, RESET
#define _____________________ADJUST_R2______________________ XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX
#define _____________________ADJUST_R3______________________ XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX
#define _____________________ADJUST_R4______________________ XXXXXXX, XXXXXXX, XXXXXXX, ADJUST,  XXXXXXX, XXXXXXX


/*
#define ______________FUNCTIONS_R3_________________        ALGR(KC_GRV), ALGR(KC_DQUO), ALGR(KC_QUOT), ALGR(KC_6), OS_RALT
*/
