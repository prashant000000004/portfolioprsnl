'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "8c071b60f8a9748a0420e5a16bac300a",
"assets/AssetManifest.bin.json": "a5d4d58daeb585be36639b199c9708dd",
"assets/AssetManifest.json": "e4ca9b45c88ed8835bc31e1594dcf0bd",
"assets/assets/fonts/SuisseIntl-Bold.ttf": "8e52b05f6b6c1a65b0c49c8286f690b2",
"assets/assets/fonts/SuisseIntl-Regular.ttf": "eb270b13b84d5a43462737e3fb0a268d",
"assets/assets/images/a1.jpeg": "e68fd703a75e7758aefcf7cd0ad56794",
"assets/assets/images/a10.png": "54aafe2e6d077e201dde6a28399d3fc7",
"assets/assets/images/a11.png": "a3172adbbba4a9165a8d5c4fbd8e052b",
"assets/assets/images/a2.jpeg": "7ba640a578cbdb167b3c8cd6f1e2d9a3",
"assets/assets/images/a3.jpeg": "c2f9ae3544e02368567257ab2584531b",
"assets/assets/images/a4.jpeg": "22a2a596180f4517877255228cb44ed4",
"assets/assets/images/a5.jpeg": "0304a5075cb54a1c60f628c49f595191",
"assets/assets/images/a6.jpeg": "5aaeb246d29775f7aa6aff80b3bf5834",
"assets/assets/images/a7.jpeg": "9151607a95d1efc9017ec39069797ad9",
"assets/assets/images/a8.jpeg": "f42a41d0bed36f9a265e6df7da412a55",
"assets/assets/images/a9.png": "4bcba22fb81bffa6ecf6a75e7afa022c",
"assets/assets/images/amaflipcoverpage.jpg": "6363d0c3914a64311b98225f562537d7",
"assets/assets/images/android.jpeg": "39fbe3a1a281b33c7e74356e4a843bdb",
"assets/assets/images/backend.webp": "c214ac71b4446b48cf22bd09c22d1632",
"assets/assets/images/certificate.jpg": "b3ed43a570013c43a7d1396104ad088b",
"assets/assets/images/chatfifth.jpeg": "0772290056f2c61961c2c124d61bcf6d",
"assets/assets/images/chatfirst.jpeg": "4a24dd46f096e2838dd266b9487346e2",
"assets/assets/images/chatfourth.jpeg": "ca554199df1ea688d853ffbf57e729af",
"assets/assets/images/chatsecond.jpeg": "d8c2df1f1d70d33699a9379ca3fbba0c",
"assets/assets/images/chatthird.jpeg": "36c5839444b2c33938908bd2dbe29bee",
"assets/assets/images/crossplatform.jpg": "190fc92d8ac4dd74abaf12e638058c91",
"assets/assets/images/cyber.jpeg": "c8f9bb1362a46e658521dcd7d8a9e0d2",
"assets/assets/images/deployement.jpg": "7341e1e0e4353bedd43eead81786ca0a",
"assets/assets/images/development.png": "22001c92aee9803fd40d51bc43f5f969",
"assets/assets/images/efifth.jpeg": "918f5d326f9f78e6bc982c7ba83a3ab1",
"assets/assets/images/efirst.jpeg": "e9098b85c63e724b825194315f53b990",
"assets/assets/images/efourth.jpeg": "ebc1f606064c04d50813eced44d3401a",
"assets/assets/images/esecond.jpeg": "aa76578e92c6a2e1731c17a5a9ac8e48",
"assets/assets/images/ethird.jpeg": "1b2697ba1dcf562b3efcd3254f9fd756",
"assets/assets/images/expensecoverpage.jpg": "bc196facc75a66105e6abf39937891da",
"assets/assets/images/experience.png": "c15c65d515d62fb3bf029e92e70defd8",
"assets/assets/images/experiencecoverpage.webp": "6341b55c2ac6978667c02977dd79e197",
"assets/assets/images/java.jpeg": "9654a1ff4fe8532c0403b1dc148a241b",
"assets/assets/images/messagecoverpage.jpg": "ae58657bfafd27336f720a658877f951",
"assets/assets/images/profile.jpeg": "1e28105e66452e7666f71fd06181efb1",
"assets/assets/images/project_image.jpeg": "8734ce5f9017475349985b001327a198",
"assets/assets/images/r1.jpeg": "446ac840c19c82babd855f60728ffa04",
"assets/assets/images/r2.jpeg": "cc151eefb5e73d2d45289d29887a5502",
"assets/assets/images/r3.jpeg": "630462a7c818c0a7723c1af75a54b10a",
"assets/assets/images/r4.jpeg": "48b81d5fe059794a11e89c87fccf2d81",
"assets/assets/images/r5.jpeg": "7f3928f055914d3dcec6323d69c6cb9b",
"assets/assets/images/r6.jpeg": "c201ff8a79a73aa871ad53e780e6b6db",
"assets/assets/images/recipecoverpage.jpg": "ad90c6380aeae77cdf03e70beaf455b2",
"assets/assets/images/sql.jpeg": "51f96526205db6d3cd0cc706c81e21c5",
"assets/FontManifest.json": "1bb3cf7e3d35f863318c2b1cfbe11ccc",
"assets/fonts/MaterialIcons-Regular.otf": "99820986848f95da514c5b51dd274d9b",
"assets/NOTICES": "d21125e3efbe835b8dbbdf41ed50390c",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "86e461cf471c1640fd2b461ece4589df",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/chromium/canvaskit.js": "34beda9f39eb7d992d46125ca868dc61",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "578726e38024ad9f8d81db8d387f0ba2",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "bf1e45747974a42ebcf850f57cc46223",
"/": "bf1e45747974a42ebcf850f57cc46223",
"main.dart.js": "230f44125e15c546f6ce2e2a5135ad9a",
"manifest.json": "d8fe34f7ae4c072a77b924e01dac8a50",
"version.json": "9b818ca9511483c901bed1545384376c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
