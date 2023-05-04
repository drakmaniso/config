#define MY_LAY0  TO(0)
#define MY_LAY1  TT(1)
#define MY_LAY2  TT(2)
#define MY_LAY3  TT(3)

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
        KC_ESC,  KC_Q,    KC_W,    KC_E,    KC_R,    KC_T,        KC_Y,    KC_U,    KC_I,    KC_O,    KC_P,    KC_QUOT,
        KC_TAB,  KC_A,    KC_S,    KC_D,    KC_F,    KC_G,        KC_H,    KC_J,    KC_K,    KC_L,    KC_SCLN, KC_ENT,
        KC_DEL,  KC_Z,    KC_X,    KC_C,    KC_V,    KC_B,        KC_N,    KC_M,    KC_COMM, KC_DOT,  KC_SLSH, KC_BSPC,
        MY_LAY3, MY_LGUI, MY_LALT, MY_LCTL, MY_LSFT, MY_LAY1,     KC_SPC,  MY_RSFT, MY_RCTL, MY_RALT, MY_LAY2, MY_LAY3
    ),

    [1] = LAYOUT_ortho_4x12(
        KC_ESC,  KC_ENT,  KC_7,    KC_8,    KC_9,    KC_EQL,      KC_LBRC, MY_LEFT, KC_UP,   MY_RGHT, KC_RBRC, KC_GRV,
        KC_TAB,  KC_PDOT, KC_4,    KC_5,    KC_6,    KC_MINS,     KC_HOME, KC_LEFT, KC_DOWN, KC_RGHT, KC_END,  KC_ENT,
        KC_DEL,  KC_0,    KC_1,    KC_2,    KC_3,    KC_BSLS,     KC_LPRN, KC_PGUP, KC_PGDN, KC_INS,  KC_RPRN, KC_BSPC,
        MY_LAY3, MY_LGUI,  MY_LALT, MY_LCTL, MY_LSFT, MY_LAY1,     KC_SPC,  MY_RSFT, MY_RCTL, MY_RALT, KC_CAPS, MY_LAY3
    ),

    [2] = LAYOUT_ortho_4x12(
        KC_ESC,  KC_F12,  KC_F7,   KC_F8,   KC_F9,   KC_PSCR,     KC_PSLS, KC_KP_7, KC_KP_8, KC_KP_9, KC_PMNS, KC_NUM,
        KC_TAB,  KC_F11,  KC_F4,   KC_F5,   KC_F6,   KC_SCRL,     KC_PAST, KC_KP_4, KC_KP_5, KC_KP_6, KC_PPLS, KC_PENT,
        KC_DEL,  KC_F10,  KC_F1,   KC_F2,   KC_F3,   KC_BRK,      KC_KP_0, KC_KP_1, KC_KP_2, KC_KP_3, KC_PDOT, KC_BSPC,
        MY_LAY3, MY_LGUI, MY_LALT, MY_LCTL, MY_LSFT, KC_NUM,      KC_SPC,  MY_RSFT, MY_RCTL, MY_RALT, MY_LAY2, MY_LAY3
    ),

    [3] = LAYOUT_ortho_4x12(
        QK_BOOT, XXXXXXX, RGB_M_P, RGB_M_R, RGB_M_G, RGB_TOG,     KC_WH_U, KC_BTN1, KC_MS_U, KC_BTN2, XXXXXXX, KC_BSPC,
        XXXXXXX, OS_ON,   RGB_HUI, RGB_SAI, RGB_VAI, RGB_MOD,     KC_WH_D, KC_MS_L, KC_MS_D, KC_MS_R, XXXXXXX, XXXXXXX,
        XXXXXXX, OS_OFF,  RGB_HUD, RGB_SAD, RGB_VAD, RGB_RMOD,    XXXXXXX, KC_WH_U, KC_WH_D, XXXXXXX, QK_LOCK, XXXXXXX,
        MY_LAY3, MY_LGUI, MY_LALT, MY_LCTL, MY_LSFT, MY_LAY0,     KC_BTN1, KC_BTN2, KC_BTN3, XXXXXXX, MY_LAY0, MY_LAY3
    )
};
