#chromium Development
export DEPOT_TOOLS="/home/jagdish/depot_tools"
export ANDROID_SDK="/home/jagdish/Android/Sdk"
PATH="$PATH:$DEPOT_TOOLS:$ANDROID_SDK"

function chrome_build {
gn gen out/Default --args='target_os = "android" cc_wrapper = "ccache" is_java_debug = true is_debug = false proprietary_codecs = true ffmpeg_branding = "Chrome"';
autoninja -C out/Default chrome_public_apk;
}

# Chrome apk Download
https://commondatastorage.googleapis.com/chromium-browser-snapshots/index.html?prefix=Android/
