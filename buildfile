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

#Chrome debug apk via android studio.
import org.chromium.base.Log;
Log.i("jagdish", ">>>> showShieldsMenu");

#include "base/logging.h"
LOG(INFO) << "jagdish = "<<__FUNCTION__;

build/android/gradle/generate_gradle.py --output-directory out/Default --target //chrome/android:chrome_public_apk
out/Default/bin/chrome_public_apk run --wait-for-java-debugger

src/out/Default/bin/chrome_public_apk run
