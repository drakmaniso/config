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

#define _____________________QWERTY_L1______________________ KC_ESC,  KC_Q,    KC_W,    KC_E,    KC_R,    KC_T   
#define _____________________QWERTY_L2______________________ KC_TAB,  KC_A,    KC_S,    KC_D,    KC_F,    KC_G    
#define _____________________QWERTY_L3______________________ KC_LSFT, KC_Z,    KC_X,    KC_C,    KC_V,    KC_B    
#define _____________________QWERTY_L4______________________ ADJUST,  KC_LCTL, KC_LALT, NUM_PAD, NUMBERS, KC_SPC

#define _____________________QWERTY_R1______________________ KC_Y,    KC_U,    KC_I,    KC_O,    KC_P,    KC_BSPC 
#define _____________________QWERTY_R2______________________ KC_H,    KC_J,    KC_K,    KC_L,    KC_SCLN, KC_ENT  
#define _____________________QWERTY_R3______________________ KC_N,    KC_M,    KC_COMM, KC_DOT,  KC_SLSH, KC_RGUI 
#define _____________________QWERTY_R4______________________ XXXXXXX, KC_RSFT, SYMBOLS, KC_RALT, KC_RCTL, ADJUST

              
#define _____________________NUMBERS_L1_____________________ KC_ESC,  KC_INS,  KC_HOME, KC_PGUP, KC_PGDN, KC_END 
#define _____________________NUMBERS_L2_____________________ KC_TAB,  KC_1,    KC_2,    KC_3,    KC_4,    KC_5    
#define _____________________NUMBERS_L3_____________________ KC_LSFT, KC_LBRC, KC_RBRC, KC_GRV,  KC_QUOT, XXXXXXX 
#define _____________________NUMBERS_L4_____________________ ADJUST,  KC_LCTL, KC_LALT, NUM_PAD, NUMBERS, KC_SPC 

#define _____________________NUMBERS_R1_____________________ KC_LEFT, KC_DOWN, KC_UP,   KC_RGHT, KC_DEL,  KC_BSPC 
#define _____________________NUMBERS_R2_____________________ KC_6,    KC_7,    KC_8,    KC_9,    KC_0,    KC_ENT  
#define _____________________NUMBERS_R3_____________________ XXXXXXX, KC_MINS, KC_EQL,  KC_DOT,  KC_BSLS, KC_RGUI 
#define _____________________NUMBERS_R4_____________________ XXXXXXX, KC_RSFT, SYMBOLS, KC_RALT, KC_RCTL, ADJUST 


#define _____________________SYMBOLS_L1_____________________ XXXXXXX, KC_WH_U, KC_MS_U, KC_WH_D, XXXXXXX, KC_ESC
#define _____________________SYMBOLS_L2_____________________ KC_F11,  KC_MS_L, KC_MS_D, KC_MS_R, KC_F12,  KC_TAB
#define _____________________SYMBOLS_L3_____________________ KC_F1,   KC_F2,   KC_F3,   KC_F4,   KC_F5,   XXXXXXX
#define _____________________SYMBOLS_L4_____________________ KC_LCTL, KC_LALT, ADJUST,  XXXXXXX, KC_LSFT, SYMBOLS
                                          
#define _____________________SYMBOLS_R1_____________________ KC_BSPC, KC_HOME, KC_PGDN, KC_PGUP, KC_END,  KC_INS
#define _____________________SYMBOLS_R2_____________________ KC_ENT,  KC_LEFT, KC_DOWN, KC_UP,   KC_RGHT, KC_DEL
#define _____________________SYMBOLS_R3_____________________ KC_BTN3, KC_F6,   KC_F7,   KC_F8,   KC_F9,   KC_F10
#define _____________________SYMBOLS_R4_____________________ KC_BTN1, KC_RSFT, KC_BTN2, ADJUST,  KC_RALT, KC_RCTL


#define _____________________NUM_PAD_L1_____________________ KC_PMNS, KC_KP_7, KC_KP_8, KC_KP_9, KC_PPLS, KC_NLCK
#define _____________________NUM_PAD_L2_____________________ KC_PSLS, KC_KP_4, KC_KP_5, KC_KP_6, KC_PAST, KC_PENT
#define _____________________NUM_PAD_L3_____________________ KC_KP_0, KC_KP_1, KC_KP_2, KC_KP_3, KC_PDOT, ADJUST
#define _____________________NUM_PAD_L4_____________________ KC_LCTL, KC_LALT, XXXXXXX, NUM_PAD, KC_LSFT, KC_SPC
                                          
#define _____________________NUM_PAD_R1_____________________ KC_BSPC, KC_PMNS, KC_KP_7, KC_KP_8, KC_KP_9, KC_PPLS
#define _____________________NUM_PAD_R2_____________________ KC_ENT,  KC_PSLS, KC_KP_4, KC_KP_5, KC_KP_6, KC_PAST
#define _____________________NUM_PAD_R3_____________________ ADJUST,  KC_KP_0, KC_KP_1, KC_KP_2, KC_KP_3, KC_PDOT
#define _____________________NUM_PAD_R4_____________________ KC_SPC,  KC_RSFT, KC_RGUI, XXXXXXX, KC_RALT, KC_RCTL
                                          
                                          
#define _____________________ADJUST_L1______________________ RESET,   KC_VOLD, EEP_RST, RESET,   KC_VOLU, XXXXXXX
#define _____________________ADJUST_L2______________________ XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX
#define _____________________ADJUST_L3______________________ RGB_TOG, RGB_HUI, XXXXXXX, XXXXXXX, XXXXXXX, ADJUST
#define _____________________ADJUST_L4______________________ XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX
                                          
#define _____________________ADJUST_R1______________________ KC_MSTP, KC_MRWD, KC_BRID, KC_BRIU, KC_MFFD, RESET
#define _____________________ADJUST_R2______________________ XXXXXXX, KC_MPRV, KC_VOLD, KC_VOLU, KC_MNXT, XXXXXXX
#define _____________________ADJUST_R3______________________ XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX
#define _____________________ADJUST_R4______________________ KC_MPLY, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX


/*
#define ______________FUNCTIONS_R3_________________        ALGR(KC_GRV), ALGR(KC_DQUO), ALGR(KC_QUOT), ALGR(KC_6), OS_RALT
*/
