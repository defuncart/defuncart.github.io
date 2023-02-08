'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "flutter.js": "1cfe996e845b3a8a33f57607e8b09ee4",
"index.html": "17c5a278edacc665acb070688aee9ab9",
"/": "17c5a278edacc665acb070688aee9ab9",
"main.dart.js": "f5bfd32a3cf435d51a7672ec26caa690",
"manifest.json": "ab5ab203e41637d4304603d3f9ca3138",
"favicon.png": "9bb73db5eb2386d23d050a7879606343",
"icons/Icon-512.png": "acb2c6b414260fafead15b2fdc06a76c",
"icons/Icon-maskable-512.png": "acb2c6b414260fafead15b2fdc06a76c",
"icons/Icon-maskable-192.png": "58868a6924db0f4e9acd7ff729d4d097",
"icons/Icon-192.png": "58868a6924db0f4e9acd7ff729d4d097",
"assets/FontManifest.json": "466157b1c69e78f1a8afadf1d26b1601",
"assets/NOTICES": "bf027e35f665b4e120d703b4754adc0c",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/assets/fonts/open_sans/OpenSans-Regular.ttf": "3ed9575dcc488c3e3a5bd66620bdf5a4",
"assets/assets/fonts/open_sans/OpenSans-Italic.ttf": "f6238deb7f40a7a03134c11fb63ad387",
"assets/assets/fonts/open_sans/OpenSans-Bold.ttf": "1025a6e0fb0fa86f17f57cc82a6b9756",
"assets/assets/common/icons/dart.png": "43f3208852a87ffe9dc91fe02141bc95",
"assets/assets/common/social_links/twitter.png": "ecda6ad38a3936267348ae809c61688e",
"assets/assets/common/social_links/resume.png": "e44bcf379620d7353649bb1ab8a56a24",
"assets/assets/common/social_links/email.png": "257c501bb82df17bb0adb0f0d55b3962",
"assets/assets/common/social_links/github.png": "438c17272c5f0e9f4a6da34d3e4bc5bd",
"assets/assets/common/social_links/linkedin.png": "51b379af972a1e10473bbfa00e6fc32e",
"assets/assets/music/gray_dawn/fureinenimaginarenfilm.jpg": "af47c8b300ed2e0cb8e93177524338cd",
"assets/assets/music/gray_dawn/zabitytebetsejakdihatyvodoju.jpg": "97310aae9e255d18fa15ab1f6f9f9b3b",
"assets/assets/music/gray_dawn/thelightofday.jpg": "03acb307e168195d729ddf1b5a608094",
"assets/assets/music/gray_dawn/dieneumayer.jpg": "1f1eed29b128a6ba6d980bd1c7d056cc",
"assets/assets/music/gray_dawn/czternascieczeciamoll.jpg": "77e66400d6d5931361704aceaeb02389",
"assets/assets/music/gray_dawn/batkivshchyna.jpg": "9f1f7dde0318fe344824bb38a2b99046",
"assets/assets/music/gray_dawn/vavilon.jpg": "88eadd0d6285fb48fd28c3f3d3ab0c0b",
"assets/assets/music/gray_dawn/thedarkofnight.jpg": "9e05617c953de096b9d518b4243951c2",
"assets/assets/music/gray_dawn/pi.jpg": "492e900ec2cd5f8011a59c6fdb70939e",
"assets/assets/music/strawberry_complexity/thisispopmusic.jpg": "87f87ed999fe014ee4e2ae38f5ee4fdf",
"assets/assets/apps/common/get_on_google_play_logo.png": "cbdbf922ea48147e858774a637969ae4",
"assets/assets/apps/common/download_app_store_logo.png": "487bf7fb0b42dc3711a9fd41fd76f97e",
"assets/assets/apps/shogiproverbs/icon.png": "fb90d8bc2ef076fa641b7a344bdd644e",
"assets/assets/apps/caogacaoga/icon.png": "427772326d8d007d69f92da336f36c82",
"assets/assets/apps/derdiedas/icon.png": "a7af35305442f9dd9caef475de3c7223",
"assets/assets/apps/derdiedas/derdiedas.gif": "6f5858a829c4828c84e17aedbe033725",
"assets/assets/home/logo.png": "f8e6ca73cc6ad3ea204f8650dc643df1",
"assets/assets/home/profile.png": "8fd3da7af8aad1dd2c1479760e3b8b91",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_SansSerif-Bold.ttf": "ad0a28f28f736cf4c121bcb0e719b88a",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Caligraphic-Regular.ttf": "7ec92adfa4fe03eb8e9bfb60813df1fa",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Fraktur-Regular.ttf": "dede6f2c7dad4402fa205644391b3a94",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_SansSerif-Italic.ttf": "d89b80e7bdd57d238eeaa80ed9a1013a",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Math-Italic.ttf": "a7732ecb5840a15be39e1eda377bc21d",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Size3-Regular.ttf": "e87212c26bb86c21eb028aba2ac53ec3",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Main-Bold.ttf": "9eef86c1f9efa78ab93d41a0551948f7",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Typewriter-Regular.ttf": "87f56927f1ba726ce0591955c8b3b42d",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Main-Italic.ttf": "ac3b1882325add4f148f05db8cafd401",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Script-Regular.ttf": "55d2dcd4778875a53ff09320a85a5296",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Size4-Regular.ttf": "85554307b465da7eb785fd3ce52ad282",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Main-Regular.ttf": "5a5766c715ee765aa1398997643f1589",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Size2-Regular.ttf": "959972785387fe35f7d47dbfb0385bc4",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Fraktur-Bold.ttf": "46b41c4de7a936d099575185a94855c4",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Size1-Regular.ttf": "1e6a3368d660edc3a2fbbe72edfeaa85",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Math-BoldItalic.ttf": "946a26954ab7fbd7ea78df07795a6cbc",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_SansSerif-Regular.ttf": "b5f967ed9e4933f1c3165a12fe3436df",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_AMS-Regular.ttf": "657a5353a553777e270827bd1630e467",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Main-BoldItalic.ttf": "e3c361ea8d1c215805439ce0941a1c8d",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Caligraphic-Bold.ttf": "a9c8e437146ef63fcd6fae7cf65ca859",
"assets/packages/wakelock_web/assets/no_sleep.js": "7748a45cd593f33280669b29c2c8919a",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/material_design_icons_flutter/lib/fonts/materialdesignicons-webfont.ttf": "dd74f11e425603c7adb66100f161b2a5",
"assets/packages/journal/assets/photography/2020-09-11.png": "836cc64ef124aa1013973a95d3b4fab8",
"assets/packages/journal/assets/photography/2020-06-01.png": "37e21d662a6765ecd260ad7e424fa6bb",
"assets/packages/journal/assets/photography/2021-02-06.png": "01a387dbedd56e3e5f3e24a5d1e1f85a",
"assets/packages/journal/assets/photography/2020-08-18.png": "e868c0498f0ff2b46206edb1322e9494",
"assets/packages/journal/assets/photography/2021-02-09.png": "682fe24128169a4fbba360ca1821469f",
"assets/packages/journal/assets/photography/2021-10-02.png": "9e6c0b0de55666e4ef4603a2b3714f35",
"assets/packages/journal/assets/photography/2021-03-10.png": "0dc4f7dc1cc905193ca51f3ca73805ca",
"assets/packages/journal/assets/photography/2021-05-17.png": "8d9f6ca95528256b8b848ca84b078c83",
"assets/packages/journal/assets/photography/2021-05-02.png": "f177b4dde386f7ca6c0714887f1234bf",
"assets/packages/journal/assets/photography/2022-09-25.png": "b38b101591420b38a7727037edc3c2f8",
"assets/packages/journal/assets/photography/2020-08-10.png": "895ea32c46af6ff4b7a787195b22af0b",
"assets/packages/journal/assets/photography/2022-03-24.png": "a4329e79c89544ac9da5f4ae20e4d855",
"assets/packages/journal/assets/photography/2021-06-13.png": "cf66e9709ad3cf1181bc39d0ff159748",
"assets/packages/journal/assets/photography/2021-10-30.png": "0afc34ca581224a13cfdb305b5c9c9f0",
"assets/packages/journal/assets/photography/2021-04-06.png": "a7a558a69aae94a477136fcb8cc8602a",
"assets/packages/journal/assets/photography/2020-05-03.png": "2f9a53cbb091fb27c9edc5a2dff75440",
"assets/packages/journal/assets/photography/2020-05-31.png": "af7cf8cde5094f852381afca056648c2",
"assets/packages/journal/assets/photography/2021-06-05.png": "a4fecde9d60f431b9492ecd6a739adc2",
"assets/packages/journal/assets/photography/2021-02-10.png": "4baf981b18da67fd48e3d27b61349358",
"assets/packages/journal/assets/photography/2020-09-13.png": "9b788e8b9d9ddce683d45bb49d66a6ad",
"assets/packages/journal/assets/photography/2020-05-25.png": "ec9dd1a87a1eb63affd45547f1918f01",
"assets/AssetManifest.json": "53967981c96fef1391397ca847fe179b",
"canvaskit/canvaskit.wasm": "3de12d898ec208a5f31362cc00f09b9e",
"canvaskit/canvaskit.js": "97937cb4c2c2073c968525a3e08c86a3",
"canvaskit/profiling/canvaskit.wasm": "371bc4e204443b0d5e774d64a046eb99",
"canvaskit/profiling/canvaskit.js": "c21852696bc1cc82e8894d851c01921a",
"version.json": "e7d7390f8b58e21ef7d5e1f60d3be297"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
