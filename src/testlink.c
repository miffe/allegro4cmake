#include "allegro.h"

int main() {
    allegro_init();
    set_gfx_mode(GFX_AUTODETECT, 320, 240, 0, 0);
    allegro_exit();
    return 0;
}