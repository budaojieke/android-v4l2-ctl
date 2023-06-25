APP_PLATFORM := android-30
APP_ABI := arm64-v8a
APP_STL := c++_static

ENABLE_ADDRESS_SANITIZER := no

ifeq ($(ENABLE_ADDRESS_SANITIZER), yes)
  APP_STL     := c++_shared
  APP_CFLAGS  := -fsanitize=hwaddress -fno-omit-frame-pointer
  APP_LDFLAGS := -fsanitize=hwaddress
endif
