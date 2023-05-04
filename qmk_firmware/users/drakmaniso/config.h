#pragma once

#define MOUSEKEY_DELAY 0
#define MOUSEKEY_INTERVAL 8
#define MOUSEKEY_MAX_SPEED 1
#define MOUSEKEY_TIME_TO_MAX 96
#define MOUSEKEY_WHEEL_DELAY 0
#define MOUSEKEY_WHEEL_MAX_SPEED 1
#define MOUSEKEY_WHEEL_TIME_TO_MAX 0

#ifdef ONESHOT_TAP_TOGGLE
    #undef ONESHOT_TAP_TOGGLE
#endif
#define ONESHOT_TIMEOUT 250

#define TAPPING_TOGGLE 3


//#define MK_3_SPEED
//#define MK_MOMENTARY_ACCEL // comment this out for tap-to-select acceleration
// cursor speeds:
//#define MK_C_OFFSET_SLOW     8 // pixels
//#define MK_C_INTERVAL_SLOW 16 // milliseconds
//#define MK_C_OFFSET_MED      1
//#define MK_C_INTERVAL_MED   25
//#define MK_C_OFFSET_FAST    4
//#define MK_C_INTERVAL_FAST  16
//// scroll wheel speeds:
//#define MK_W_OFFSET_SLOW     1 // wheel clicks
//#define MK_W_INTERVAL_SLOW 400 // milliseconds
//#define MK_W_OFFSET_MED      1
//#define MK_W_INTERVAL_MED  200
//#define MK_W_OFFSET_FAST     1
//#define MK_W_INTERVAL_FAST 100
