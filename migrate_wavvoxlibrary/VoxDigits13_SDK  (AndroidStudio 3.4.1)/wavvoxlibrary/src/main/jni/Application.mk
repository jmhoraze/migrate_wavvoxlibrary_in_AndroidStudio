# was defined for both, ARMv5TE (MIPS) and ARMv7-A machine code.
# updated to include ARMv8; removed ARMv5.
#
# jm*20190521,20190531


APP_ABI := arm64-v8a
APP_ABI += armeabi-v7a


# APP_BUILD_SCRIPT       // default:  jni/Android.mk


# APP_MANIFEST           // default:  $(APP_PROJECT_PATH)/AndroiddManifest.xml


# APP_MODULES            // default:  $(call import-module)

APP_MODULES :=  wavvox-decoder

