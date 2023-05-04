#define MY_LAY1  TT(1)
#define MY_LAY2  TT(2)
#define MY_LAY3  MO(3)

#define MY_TLY1  TG(1)
#define MY_TLY2  TG(2)

#define MY_LEFT LCTL(KC_LEFT)
#define MY_RGHT LCTL(KC_RGHT)

#define MY_LSFT OSM(MOD_LSFT)
#define MY_RSFT OSM(MOD_RSFT)
#define MY_LCTL OSM(MOD_LCTL)
#define MY_RCTL OSM(MOD_RCTL)
#define MY_LALT OSM(MOD_LALT)
#define MY_RALT OSM(MOD_RALT)
#define MY_LGUI KC_LGUI
#define MY_RGUI KC_RGUI

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
    [0] = LAYOUT_ortho_4x12(
        KC_Q,    KC_W,    KC_E,    KC_R,    KC_T,    KC_ESC,      MY_LAY3, KC_Y,    KC_U,    KC_I,    KC_O,    KC_P   ,
        KC_A,    KC_S,    KC_D,    KC_F,    KC_G,    KC_ENT,      KC_BSPC, KC_H,    KC_J,    KC_K,    KC_L,    KC_SCLN,
        KC_Z,    KC_X,    KC_C,    KC_V,    KC_B,    KC_DEL,      KC_TAB,  KC_N,    KC_M,    KC_COMM, KC_DOT,  KC_SLSH,
        MY_LGUI, MY_LAY2, MY_LALT, MY_LCTL, MY_LSFT, MY_LAY1,     KC_SPC,  MY_RSFT, MY_RCTL, MY_RALT, MY_LAY2, MY_RGUI
    ),

    [1] = LAYOUT_ortho_4x12(
        KC_GRV,  KC_7,    KC_8,    KC_9,    KC_EQL,  KC_ESC,      MY_LAY3, KC_LBRC, MY_LEFT, KC_UP,   MY_RGHT, KC_RBRC,
        KC_QUOT, KC_4,    KC_5,    KC_6,    KC_MINS, KC_ENT,      KC_BSPC, KC_HOME, KC_LEFT, KC_DOWN, KC_RGHT, KC_END ,
        KC_0,    KC_1,    KC_2,    KC_3,    KC_BSLS, KC_DEL,      KC_TAB,  KC_LPRN, KC_PGUP, KC_PGDN, KC_INS,  KC_RPRN,
        MY_LGUI, KC_DOT,  MY_LALT, MY_LCTL, MY_LSFT, MY_LAY1,     KC_SPC,  MY_RSFT, MY_RCTL, MY_RALT, KC_APP,  MY_RGUI
    ),

    [2] = LAYOUT_ortho_4x12(
        KC_BRK,  KC_F7,   KC_F8,   KC_F9,   KC_F10,  KC_NUM,      MY_LAY3, KC_PSLS, KC_KP_7, KC_KP_8, KC_KP_9, KC_PMNS,
        KC_SCRL, KC_F4,   KC_F5,   KC_F6,   KC_F11,  KC_PENT,     KC_BSPC, KC_PAST, KC_KP_4, KC_KP_5, KC_KP_6, KC_PPLS,
        KC_PSCR, KC_F1,   KC_F2,   KC_F3,   KC_F11,  KC_DEL,      KC_TAB,  KC_KP_0, KC_KP_1, KC_KP_2, KC_KP_3, KC_PDOT,
        MY_LGUI, MY_LAY2, MY_LALT, MY_LCTL, MY_LSFT, KC_CAPS,     KC_SPC,  MY_RSFT, MY_RCTL, MY_RALT, MY_LAY2, MY_RGUI
    ),

    [3] = LAYOUT_ortho_4x12(
        QK_BOOT, RGB_M_P, RGB_M_R, RGB_M_G, RGB_TOG, XXXXXXX,     MY_LAY3, KC_WH_U, KC_BTN1, KC_MS_U, KC_BTN2, XXXXXXX,
        OS_ON,   RGB_HUI, RGB_SAI, RGB_VAI, RGB_MOD, XXXXXXX,     XXXXXXX, KC_WH_D, KC_MS_L, KC_MS_D, KC_MS_R, XXXXXXX,
        OS_OFF,  RGB_HUD, RGB_SAD, RGB_VAD, RGB_RMOD,XXXXXXX,     XXXXXXX, XXXXXXX, KC_WH_U, KC_WH_D, XXXXXXX, QK_LOCK,
        MY_LGUI, MY_TLY2, MY_LALT, MY_LCTL, MY_LSFT, MY_TLY1,     KC_BTN1, KC_BTN2, KC_BTN3, XXXXXXX, XXXXXXX, XXXXXXX
    )
};
