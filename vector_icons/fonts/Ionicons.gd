
const FontData = preload("Ionicons.ttf")
const Cheatsheet = {
	"ios-add": "\uF102",
	"ios-add-circle": "\uF101",
	"ios-add-circle-outline": "\uF100",
	"ios-airplane": "\uF137",
	"ios-alarm": "\uF3C8",
	"ios-albums": "\uF3CA",
	"ios-alert": "\uF104",
	"ios-american-football": "\uF106",
	"ios-analytics": "\uF3CE",
	"ios-aperture": "\uF108",
	"ios-apps": "\uF10A",
	"ios-appstore": "\uF10C",
	"ios-archive": "\uF10E",
	"ios-arrow-back": "\uF3CF",
	"ios-arrow-down": "\uF3D0",
	"ios-arrow-dropdown": "\uF110",
	"ios-arrow-dropdown-circle": "\uF125",
	"ios-arrow-dropleft": "\uF112",
	"ios-arrow-dropleft-circle": "\uF129",
	"ios-arrow-dropright": "\uF114",
	"ios-arrow-dropright-circle": "\uF12B",
	"ios-arrow-dropup": "\uF116",
	"ios-arrow-dropup-circle": "\uF12D",
	"ios-arrow-forward": "\uF3D1",
	"ios-arrow-round-back": "\uF117",
	"ios-arrow-round-down": "\uF118",
	"ios-arrow-round-forward": "\uF119",
	"ios-arrow-round-up": "\uF11A",
	"ios-arrow-up": "\uF3D8",
	"ios-at": "\uF3DA",
	"ios-attach": "\uF11B",
	"ios-backspace": "\uF11D",
	"ios-barcode": "\uF3DC",
	"ios-baseball": "\uF3DE",
	"ios-basket": "\uF11F",
	"ios-basketball": "\uF3E0",
	"ios-battery-charging": "\uF120",
	"ios-battery-dead": "\uF121",
	"ios-battery-full": "\uF122",
	"ios-beaker": "\uF124",
	"ios-bed": "\uF139",
	"ios-beer": "\uF126",
	"ios-bicycle": "\uF127",
	"ios-bluetooth": "\uF128",
	"ios-boat": "\uF12A",
	"ios-body": "\uF3E4",
	"ios-bonfire": "\uF12C",
	"ios-book": "\uF3E8",
	"ios-bookmark": "\uF12E",
	"ios-bookmarks": "\uF3EA",
	"ios-bowtie": "\uF130",
	"ios-briefcase": "\uF3EE",
	"ios-browsers": "\uF3F0",
	"ios-brush": "\uF132",
	"ios-bug": "\uF134",
	"ios-build": "\uF136",
	"ios-bulb": "\uF138",
	"ios-bus": "\uF13A",
	"ios-business": "\uF1A3",
	"ios-cafe": "\uF13C",
	"ios-calculator": "\uF3F2",
	"ios-calendar": "\uF3F4",
	"ios-call": "\uF13E",
	"ios-camera": "\uF3F6",
	"ios-car": "\uF140",
	"ios-card": "\uF142",
	"ios-cart": "\uF3F8",
	"ios-cash": "\uF144",
	"ios-cellular": "\uF13D",
	"ios-chatboxes": "\uF3FA",
	"ios-chatbubbles": "\uF146",
	"ios-checkbox": "\uF148",
	"ios-checkbox-outline": "\uF147",
	"ios-checkmark": "\uF3FF",
	"ios-checkmark-circle": "\uF14A",
	"ios-checkmark-circle-outline": "\uF149",
	"ios-clipboard": "\uF14C",
	"ios-clock": "\uF403",
	"ios-close": "\uF406",
	"ios-close-circle": "\uF14E",
	"ios-close-circle-outline": "\uF14D",
	"ios-cloud": "\uF40C",
	"ios-cloud-circle": "\uF152",
	"ios-cloud-done": "\uF154",
	"ios-cloud-download": "\uF408",
	"ios-cloud-outline": "\uF409",
	"ios-cloud-upload": "\uF40B",
	"ios-cloudy": "\uF410",
	"ios-cloudy-night": "\uF40E",
	"ios-code": "\uF157",
	"ios-code-download": "\uF155",
	"ios-code-working": "\uF156",
	"ios-cog": "\uF412",
	"ios-color-fill": "\uF159",
	"ios-color-filter": "\uF414",
	"ios-color-palette": "\uF15B",
	"ios-color-wand": "\uF416",
	"ios-compass": "\uF15D",
	"ios-construct": "\uF15F",
	"ios-contact": "\uF41A",
	"ios-contacts": "\uF161",
	"ios-contract": "\uF162",
	"ios-contrast": "\uF163",
	"ios-copy": "\uF41C",
	"ios-create": "\uF165",
	"ios-crop": "\uF41E",
	"ios-cube": "\uF168",
	"ios-cut": "\uF16A",
	"ios-desktop": "\uF16C",
	"ios-disc": "\uF16E",
	"ios-document": "\uF170",
	"ios-done-all": "\uF171",
	"ios-download": "\uF420",
	"ios-easel": "\uF173",
	"ios-egg": "\uF175",
	"ios-exit": "\uF177",
	"ios-expand": "\uF178",
	"ios-eye": "\uF425",
	"ios-eye-off": "\uF17A",
	"ios-fastforward": "\uF427",
	"ios-female": "\uF17B",
	"ios-filing": "\uF429",
	"ios-film": "\uF42B",
	"ios-finger-print": "\uF17C",
	"ios-fitness": "\uF1AB",
	"ios-flag": "\uF42D",
	"ios-flame": "\uF42F",
	"ios-flash": "\uF17E",
	"ios-flash-off": "\uF12F",
	"ios-flashlight": "\uF141",
	"ios-flask": "\uF431",
	"ios-flower": "\uF433",
	"ios-folder": "\uF435",
	"ios-folder-open": "\uF180",
	"ios-football": "\uF437",
	"ios-funnel": "\uF182",
	"ios-gift": "\uF191",
	"ios-git-branch": "\uF183",
	"ios-git-commit": "\uF184",
	"ios-git-compare": "\uF185",
	"ios-git-merge": "\uF186",
	"ios-git-network": "\uF187",
	"ios-git-pull-request": "\uF188",
	"ios-glasses": "\uF43F",
	"ios-globe": "\uF18A",
	"ios-grid": "\uF18C",
	"ios-hammer": "\uF18E",
	"ios-hand": "\uF190",
	"ios-happy": "\uF192",
	"ios-headset": "\uF194",
	"ios-heart": "\uF443",
	"ios-heart-dislike": "\uF13F",
	"ios-heart-empty": "\uF19B",
	"ios-heart-half": "\uF19D",
	"ios-help": "\uF446",
	"ios-help-buoy": "\uF196",
	"ios-help-circle": "\uF198",
	"ios-help-circle-outline": "\uF197",
	"ios-home": "\uF448",
	"ios-hourglass": "\uF103",
	"ios-ice-cream": "\uF19A",
	"ios-image": "\uF19C",
	"ios-images": "\uF19E",
	"ios-infinite": "\uF44A",
	"ios-information": "\uF44D",
	"ios-information-circle": "\uF1A0",
	"ios-information-circle-outline": "\uF19F",
	"ios-jet": "\uF1A5",
	"ios-journal": "\uF189",
	"ios-key": "\uF1A7",
	"ios-keypad": "\uF450",
	"ios-laptop": "\uF1A8",
	"ios-leaf": "\uF1AA",
	"ios-link": "\uF22A",
	"ios-list": "\uF454",
	"ios-list-box": "\uF143",
	"ios-locate": "\uF1AE",
	"ios-lock": "\uF1B0",
	"ios-log-in": "\uF1B1",
	"ios-log-out": "\uF1B2",
	"ios-magnet": "\uF1B4",
	"ios-mail": "\uF1B8",
	"ios-mail-open": "\uF1B6",
	"ios-mail-unread": "\uF145",
	"ios-male": "\uF1B9",
	"ios-man": "\uF1BB",
	"ios-map": "\uF1BD",
	"ios-medal": "\uF1BF",
	"ios-medical": "\uF45C",
	"ios-medkit": "\uF45E",
	"ios-megaphone": "\uF1C1",
	"ios-menu": "\uF1C3",
	"ios-mic": "\uF461",
	"ios-mic-off": "\uF45F",
	"ios-microphone": "\uF1C6",
	"ios-moon": "\uF468",
	"ios-more": "\uF1C8",
	"ios-move": "\uF1CB",
	"ios-musical-note": "\uF46B",
	"ios-musical-notes": "\uF46C",
	"ios-navigate": "\uF46E",
	"ios-notifications": "\uF1D3",
	"ios-notifications-off": "\uF1D1",
	"ios-notifications-outline": "\uF133",
	"ios-nuclear": "\uF1D5",
	"ios-nutrition": "\uF470",
	"ios-open": "\uF1D7",
	"ios-options": "\uF1D9",
	"ios-outlet": "\uF1DB",
	"ios-paper": "\uF472",
	"ios-paper-plane": "\uF1DD",
	"ios-partly-sunny": "\uF1DF",
	"ios-pause": "\uF478",
	"ios-paw": "\uF47A",
	"ios-people": "\uF47C",
	"ios-person": "\uF47E",
	"ios-person-add": "\uF1E1",
	"ios-phone-landscape": "\uF1E2",
	"ios-phone-portrait": "\uF1E3",
	"ios-photos": "\uF482",
	"ios-pie": "\uF484",
	"ios-pin": "\uF1E5",
	"ios-pint": "\uF486",
	"ios-pizza": "\uF1E7",
	"ios-planet": "\uF1EB",
	"ios-play": "\uF488",
	"ios-play-circle": "\uF113",
	"ios-podium": "\uF1ED",
	"ios-power": "\uF1EF",
	"ios-pricetag": "\uF48D",
	"ios-pricetags": "\uF48F",
	"ios-print": "\uF1F1",
	"ios-pulse": "\uF493",
	"ios-qr-scanner": "\uF1F3",
	"ios-quote": "\uF1F5",
	"ios-radio": "\uF1F9",
	"ios-radio-button-off": "\uF1F6",
	"ios-radio-button-on": "\uF1F7",
	"ios-rainy": "\uF495",
	"ios-recording": "\uF497",
	"ios-redo": "\uF499",
	"ios-refresh": "\uF49C",
	"ios-refresh-circle": "\uF135",
	"ios-remove": "\uF1FC",
	"ios-remove-circle": "\uF1FB",
	"ios-remove-circle-outline": "\uF1FA",
	"ios-reorder": "\uF1FD",
	"ios-repeat": "\uF1FE",
	"ios-resize": "\uF1FF",
	"ios-restaurant": "\uF201",
	"ios-return-left": "\uF202",
	"ios-return-right": "\uF203",
	"ios-reverse-camera": "\uF49F",
	"ios-rewind": "\uF4A1",
	"ios-ribbon": "\uF205",
	"ios-rocket": "\uF14B",
	"ios-rose": "\uF4A3",
	"ios-sad": "\uF207",
	"ios-save": "\uF1A6",
	"ios-school": "\uF209",
	"ios-search": "\uF4A5",
	"ios-send": "\uF20C",
	"ios-settings": "\uF4A7",
	"ios-share": "\uF211",
	"ios-share-alt": "\uF20F",
	"ios-shirt": "\uF213",
	"ios-shuffle": "\uF4A9",
	"ios-skip-backward": "\uF215",
	"ios-skip-forward": "\uF217",
	"ios-snow": "\uF218",
	"ios-speedometer": "\uF4B0",
	"ios-square": "\uF21A",
	"ios-square-outline": "\uF15C",
	"ios-star": "\uF4B3",
	"ios-star-half": "\uF4B1",
	"ios-star-outline": "\uF4B2",
	"ios-stats": "\uF21C",
	"ios-stopwatch": "\uF4B5",
	"ios-subway": "\uF21E",
	"ios-sunny": "\uF4B7",
	"ios-swap": "\uF21F",
	"ios-switch": "\uF221",
	"ios-sync": "\uF222",
	"ios-tablet-landscape": "\uF223",
	"ios-tablet-portrait": "\uF24E",
	"ios-tennisball": "\uF4BB",
	"ios-text": "\uF250",
	"ios-thermometer": "\uF252",
	"ios-thumbs-down": "\uF254",
	"ios-thumbs-up": "\uF256",
	"ios-thunderstorm": "\uF4BD",
	"ios-time": "\uF4BF",
	"ios-timer": "\uF4C1",
	"ios-today": "\uF14F",
	"ios-train": "\uF258",
	"ios-transgender": "\uF259",
	"ios-trash": "\uF4C5",
	"ios-trending-down": "\uF25A",
	"ios-trending-up": "\uF25B",
	"ios-trophy": "\uF25D",
	"ios-tv": "\uF115",
	"ios-umbrella": "\uF25F",
	"ios-undo": "\uF4C7",
	"ios-unlock": "\uF261",
	"ios-videocam": "\uF4CD",
	"ios-volume-high": "\uF11C",
	"ios-volume-low": "\uF11E",
	"ios-volume-mute": "\uF263",
	"ios-volume-off": "\uF264",
	"ios-walk": "\uF266",
	"ios-wallet": "\uF18B",
	"ios-warning": "\uF268",
	"ios-watch": "\uF269",
	"ios-water": "\uF26B",
	"ios-wifi": "\uF26D",
	"ios-wine": "\uF26F",
	"ios-woman": "\uF271",
	"logo-android": "\uF225",
	"logo-angular": "\uF227",
	"logo-apple": "\uF229",
	"logo-bitbucket": "\uF193",
	"logo-bitcoin": "\uF22B",
	"logo-buffer": "\uF22D",
	"logo-chrome": "\uF22F",
	"logo-closed-captioning": "\uF105",
	"logo-codepen": "\uF230",
	"logo-css3": "\uF231",
	"logo-designernews": "\uF232",
	"logo-dribbble": "\uF233",
	"logo-dropbox": "\uF234",
	"logo-euro": "\uF235",
	"logo-facebook": "\uF236",
	"logo-flickr": "\uF107",
	"logo-foursquare": "\uF237",
	"logo-freebsd-devil": "\uF238",
	"logo-game-controller-a": "\uF13B",
	"logo-game-controller-b": "\uF181",
	"logo-github": "\uF239",
	"logo-google": "\uF23A",
	"logo-googleplus": "\uF23B",
	"logo-hackernews": "\uF23C",
	"logo-html5": "\uF23D",
	"logo-instagram": "\uF23E",
	"logo-ionic": "\uF150",
	"logo-ionitron": "\uF151",
	"logo-javascript": "\uF23F",
	"logo-linkedin": "\uF240",
	"logo-markdown": "\uF241",
	"logo-model-s": "\uF153",
	"logo-no-smoking": "\uF109",
	"logo-nodejs": "\uF242",
	"logo-npm": "\uF195",
	"logo-octocat": "\uF243",
	"logo-pinterest": "\uF244",
	"logo-playstation": "\uF245",
	"logo-polymer": "\uF15E",
	"logo-python": "\uF246",
	"logo-reddit": "\uF247",
	"logo-rss": "\uF248",
	"logo-sass": "\uF249",
	"logo-skype": "\uF24A",
	"logo-slack": "\uF10B",
	"logo-snapchat": "\uF24B",
	"logo-steam": "\uF24C",
	"logo-tumblr": "\uF24D",
	"logo-tux": "\uF2AE",
	"logo-twitch": "\uF2AF",
	"logo-twitter": "\uF2B0",
	"logo-usd": "\uF2B1",
	"logo-vimeo": "\uF2C4",
	"logo-vk": "\uF10D",
	"logo-whatsapp": "\uF2C5",
	"logo-windows": "\uF32F",
	"logo-wordpress": "\uF330",
	"logo-xbox": "\uF34C",
	"logo-xing": "\uF10F",
	"logo-yahoo": "\uF34D",
	"logo-yen": "\uF34E",
	"logo-youtube": "\uF34F",
	"md-add": "\uF273",
	"md-add-circle": "\uF272",
	"md-add-circle-outline": "\uF158",
	"md-airplane": "\uF15A",
	"md-alarm": "\uF274",
	"md-albums": "\uF275",
	"md-alert": "\uF276",
	"md-american-football": "\uF277",
	"md-analytics": "\uF278",
	"md-aperture": "\uF279",
	"md-apps": "\uF27A",
	"md-appstore": "\uF27B",
	"md-archive": "\uF27C",
	"md-arrow-back": "\uF27D",
	"md-arrow-down": "\uF27E",
	"md-arrow-dropdown": "\uF280",
	"md-arrow-dropdown-circle": "\uF27F",
	"md-arrow-dropleft": "\uF282",
	"md-arrow-dropleft-circle": "\uF281",
	"md-arrow-dropright": "\uF284",
	"md-arrow-dropright-circle": "\uF283",
	"md-arrow-dropup": "\uF286",
	"md-arrow-dropup-circle": "\uF285",
	"md-arrow-forward": "\uF287",
	"md-arrow-round-back": "\uF288",
	"md-arrow-round-down": "\uF289",
	"md-arrow-round-forward": "\uF28A",
	"md-arrow-round-up": "\uF28B",
	"md-arrow-up": "\uF28C",
	"md-at": "\uF28D",
	"md-attach": "\uF28E",
	"md-backspace": "\uF28F",
	"md-barcode": "\uF290",
	"md-baseball": "\uF291",
	"md-basket": "\uF292",
	"md-basketball": "\uF293",
	"md-battery-charging": "\uF294",
	"md-battery-dead": "\uF295",
	"md-battery-full": "\uF296",
	"md-beaker": "\uF297",
	"md-bed": "\uF160",
	"md-beer": "\uF298",
	"md-bicycle": "\uF299",
	"md-bluetooth": "\uF29A",
	"md-boat": "\uF29B",
	"md-body": "\uF29C",
	"md-bonfire": "\uF29D",
	"md-book": "\uF29E",
	"md-bookmark": "\uF29F",
	"md-bookmarks": "\uF2A0",
	"md-bowtie": "\uF2A1",
	"md-briefcase": "\uF2A2",
	"md-browsers": "\uF2A3",
	"md-brush": "\uF2A4",
	"md-bug": "\uF2A5",
	"md-build": "\uF2A6",
	"md-bulb": "\uF2A7",
	"md-bus": "\uF2A8",
	"md-business": "\uF1A4",
	"md-cafe": "\uF2A9",
	"md-calculator": "\uF2AA",
	"md-calendar": "\uF2AB",
	"md-call": "\uF2AC",
	"md-camera": "\uF2AD",
	"md-car": "\uF2B2",
	"md-card": "\uF2B3",
	"md-cart": "\uF2B4",
	"md-cash": "\uF2B5",
	"md-cellular": "\uF164",
	"md-chatboxes": "\uF2B6",
	"md-chatbubbles": "\uF2B7",
	"md-checkbox": "\uF2B9",
	"md-checkbox-outline": "\uF2B8",
	"md-checkmark": "\uF2BC",
	"md-checkmark-circle": "\uF2BB",
	"md-checkmark-circle-outline": "\uF2BA",
	"md-clipboard": "\uF2BD",
	"md-clock": "\uF2BE",
	"md-close": "\uF2C0",
	"md-close-circle": "\uF2BF",
	"md-close-circle-outline": "\uF166",
	"md-cloud": "\uF2C9",
	"md-cloud-circle": "\uF2C2",
	"md-cloud-done": "\uF2C3",
	"md-cloud-download": "\uF2C6",
	"md-cloud-outline": "\uF2C7",
	"md-cloud-upload": "\uF2C8",
	"md-cloudy": "\uF2CB",
	"md-cloudy-night": "\uF2CA",
	"md-code": "\uF2CE",
	"md-code-download": "\uF2CC",
	"md-code-working": "\uF2CD",
	"md-cog": "\uF2CF",
	"md-color-fill": "\uF2D0",
	"md-color-filter": "\uF2D1",
	"md-color-palette": "\uF2D2",
	"md-color-wand": "\uF2D3",
	"md-compass": "\uF2D4",
	"md-construct": "\uF2D5",
	"md-contact": "\uF2D6",
	"md-contacts": "\uF2D7",
	"md-contract": "\uF2D8",
	"md-contrast": "\uF2D9",
	"md-copy": "\uF2DA",
	"md-create": "\uF2DB",
	"md-crop": "\uF2DC",
	"md-cube": "\uF2DD",
	"md-cut": "\uF2DE",
	"md-desktop": "\uF2DF",
	"md-disc": "\uF2E0",
	"md-document": "\uF2E1",
	"md-done-all": "\uF2E2",
	"md-download": "\uF2E3",
	"md-easel": "\uF2E4",
	"md-egg": "\uF2E5",
	"md-exit": "\uF2E6",
	"md-expand": "\uF2E7",
	"md-eye": "\uF2E9",
	"md-eye-off": "\uF2E8",
	"md-fastforward": "\uF2EA",
	"md-female": "\uF2EB",
	"md-filing": "\uF2EC",
	"md-film": "\uF2ED",
	"md-finger-print": "\uF2EE",
	"md-fitness": "\uF1AC",
	"md-flag": "\uF2EF",
	"md-flame": "\uF2F0",
	"md-flash": "\uF2F1",
	"md-flash-off": "\uF169",
	"md-flashlight": "\uF16B",
	"md-flask": "\uF2F2",
	"md-flower": "\uF2F3",
	"md-folder": "\uF2F5",
	"md-folder-open": "\uF2F4",
	"md-football": "\uF2F6",
	"md-funnel": "\uF2F7",
	"md-gift": "\uF199",
	"md-git-branch": "\uF2FA",
	"md-git-commit": "\uF2FB",
	"md-git-compare": "\uF2FC",
	"md-git-merge": "\uF2FD",
	"md-git-network": "\uF2FE",
	"md-git-pull-request": "\uF2FF",
	"md-glasses": "\uF300",
	"md-globe": "\uF301",
	"md-grid": "\uF302",
	"md-hammer": "\uF303",
	"md-hand": "\uF304",
	"md-happy": "\uF305",
	"md-headset": "\uF306",
	"md-heart": "\uF308",
	"md-heart-dislike": "\uF167",
	"md-heart-empty": "\uF1A1",
	"md-heart-half": "\uF1A2",
	"md-help": "\uF30B",
	"md-help-buoy": "\uF309",
	"md-help-circle": "\uF30A",
	"md-help-circle-outline": "\uF16D",
	"md-home": "\uF30C",
	"md-hourglass": "\uF111",
	"md-ice-cream": "\uF30D",
	"md-image": "\uF30E",
	"md-images": "\uF30F",
	"md-infinite": "\uF310",
	"md-information": "\uF312",
	"md-information-circle": "\uF311",
	"md-information-circle-outline": "\uF16F",
	"md-jet": "\uF315",
	"md-journal": "\uF18D",
	"md-key": "\uF316",
	"md-keypad": "\uF317",
	"md-laptop": "\uF318",
	"md-leaf": "\uF319",
	"md-link": "\uF22E",
	"md-list": "\uF31B",
	"md-list-box": "\uF31A",
	"md-locate": "\uF31C",
	"md-lock": "\uF31D",
	"md-log-in": "\uF31E",
	"md-log-out": "\uF31F",
	"md-magnet": "\uF320",
	"md-mail": "\uF322",
	"md-mail-open": "\uF321",
	"md-mail-unread": "\uF172",
	"md-male": "\uF323",
	"md-man": "\uF324",
	"md-map": "\uF325",
	"md-medal": "\uF326",
	"md-medical": "\uF327",
	"md-medkit": "\uF328",
	"md-megaphone": "\uF329",
	"md-menu": "\uF32A",
	"md-mic": "\uF32C",
	"md-mic-off": "\uF32B",
	"md-microphone": "\uF32D",
	"md-moon": "\uF32E",
	"md-more": "\uF1C9",
	"md-move": "\uF331",
	"md-musical-note": "\uF332",
	"md-musical-notes": "\uF333",
	"md-navigate": "\uF334",
	"md-notifications": "\uF338",
	"md-notifications-off": "\uF336",
	"md-notifications-outline": "\uF337",
	"md-nuclear": "\uF339",
	"md-nutrition": "\uF33A",
	"md-open": "\uF33B",
	"md-options": "\uF33C",
	"md-outlet": "\uF33D",
	"md-paper": "\uF33F",
	"md-paper-plane": "\uF33E",
	"md-partly-sunny": "\uF340",
	"md-pause": "\uF341",
	"md-paw": "\uF342",
	"md-people": "\uF343",
	"md-person": "\uF345",
	"md-person-add": "\uF344",
	"md-phone-landscape": "\uF346",
	"md-phone-portrait": "\uF347",
	"md-photos": "\uF348",
	"md-pie": "\uF349",
	"md-pin": "\uF34A",
	"md-pint": "\uF34B",
	"md-pizza": "\uF354",
	"md-planet": "\uF356",
	"md-play": "\uF357",
	"md-play-circle": "\uF174",
	"md-podium": "\uF358",
	"md-power": "\uF359",
	"md-pricetag": "\uF35A",
	"md-pricetags": "\uF35B",
	"md-print": "\uF35C",
	"md-pulse": "\uF35D",
	"md-qr-scanner": "\uF35E",
	"md-quote": "\uF35F",
	"md-radio": "\uF362",
	"md-radio-button-off": "\uF360",
	"md-radio-button-on": "\uF361",
	"md-rainy": "\uF363",
	"md-recording": "\uF364",
	"md-redo": "\uF365",
	"md-refresh": "\uF366",
	"md-refresh-circle": "\uF228",
	"md-remove": "\uF368",
	"md-remove-circle": "\uF367",
	"md-remove-circle-outline": "\uF176",
	"md-reorder": "\uF369",
	"md-repeat": "\uF36A",
	"md-resize": "\uF36B",
	"md-restaurant": "\uF36C",
	"md-return-left": "\uF36D",
	"md-return-right": "\uF36E",
	"md-reverse-camera": "\uF36F",
	"md-rewind": "\uF370",
	"md-ribbon": "\uF371",
	"md-rocket": "\uF179",
	"md-rose": "\uF372",
	"md-sad": "\uF373",
	"md-save": "\uF1A9",
	"md-school": "\uF374",
	"md-search": "\uF375",
	"md-send": "\uF376",
	"md-settings": "\uF377",
	"md-share": "\uF379",
	"md-share-alt": "\uF378",
	"md-shirt": "\uF37A",
	"md-shuffle": "\uF37B",
	"md-skip-backward": "\uF37C",
	"md-skip-forward": "\uF37D",
	"md-snow": "\uF37E",
	"md-speedometer": "\uF37F",
	"md-square": "\uF381",
	"md-square-outline": "\uF380",
	"md-star": "\uF384",
	"md-star-half": "\uF382",
	"md-star-outline": "\uF383",
	"md-stats": "\uF385",
	"md-stopwatch": "\uF386",
	"md-subway": "\uF387",
	"md-sunny": "\uF388",
	"md-swap": "\uF389",
	"md-switch": "\uF38A",
	"md-sync": "\uF38B",
	"md-tablet-landscape": "\uF38C",
	"md-tablet-portrait": "\uF38D",
	"md-tennisball": "\uF38E",
	"md-text": "\uF38F",
	"md-thermometer": "\uF390",
	"md-thumbs-down": "\uF391",
	"md-thumbs-up": "\uF392",
	"md-thunderstorm": "\uF393",
	"md-time": "\uF394",
	"md-timer": "\uF395",
	"md-today": "\uF17D",
	"md-train": "\uF396",
	"md-transgender": "\uF397",
	"md-trash": "\uF398",
	"md-trending-down": "\uF399",
	"md-trending-up": "\uF39A",
	"md-trophy": "\uF39B",
	"md-tv": "\uF17F",
	"md-umbrella": "\uF39C",
	"md-undo": "\uF39D",
	"md-unlock": "\uF39E",
	"md-videocam": "\uF39F",
	"md-volume-high": "\uF123",
	"md-volume-low": "\uF131",
	"md-volume-mute": "\uF3A1",
	"md-volume-off": "\uF3A2",
	"md-walk": "\uF3A4",
	"md-wallet": "\uF18F",
	"md-warning": "\uF3A5",
	"md-watch": "\uF3A6",
	"md-water": "\uF3A7",
	"md-wifi": "\uF3A8",
	"md-wine": "\uF3A9",
	"md-woman": "\uF3AA"
}
