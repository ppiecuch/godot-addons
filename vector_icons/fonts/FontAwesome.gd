
const FontData = preload("FontAwesome.ttf")
const Cheatsheet = {
	"500px": "\uF26E",
	"address-book": "\uF2B9",
	"address-book-o": "\uF2BA",
	"address-card": "\uF2BB",
	"address-card-o": "\uF2BC",
	"adjust": "\uF042",
	"adn": "\uF170",
	"align-center": "\uF037",
	"align-justify": "\uF039",
	"align-left": "\uF036",
	"align-right": "\uF038",
	"amazon": "\uF270",
	"ambulance": "\uF0F9",
	"american-sign-language-interpreting": "\uF2A3",
	"anchor": "\uF13D",
	"android": "\uF17B",
	"angellist": "\uF209",
	"angle-double-down": "\uF103",
	"angle-double-left": "\uF100",
	"angle-double-right": "\uF101",
	"angle-double-up": "\uF102",
	"angle-down": "\uF107",
	"angle-left": "\uF104",
	"angle-right": "\uF105",
	"angle-up": "\uF106",
	"apple": "\uF179",
	"archive": "\uF187",
	"area-chart": "\uF1FE",
	"arrow-circle-down": "\uF0AB",
	"arrow-circle-left": "\uF0A8",
	"arrow-circle-o-down": "\uF01A",
	"arrow-circle-o-left": "\uF190",
	"arrow-circle-o-right": "\uF18E",
	"arrow-circle-o-up": "\uF01B",
	"arrow-circle-right": "\uF0A9",
	"arrow-circle-up": "\uF0AA",
	"arrow-down": "\uF063",
	"arrow-left": "\uF060",
	"arrow-right": "\uF061",
	"arrow-up": "\uF062",
	"arrows": "\uF047",
	"arrows-alt": "\uF0B2",
	"arrows-h": "\uF07E",
	"arrows-v": "\uF07D",
	"asl-interpreting": "\uF2A3",
	"assistive-listening-systems": "\uF2A2",
	"asterisk": "\uF069",
	"at": "\uF1FA",
	"audio-description": "\uF29E",
	"automobile": "\uF1B9",
	"backward": "\uF04A",
	"balance-scale": "\uF24E",
	"ban": "\uF05E",
	"bandcamp": "\uF2D5",
	"bank": "\uF19C",
	"bar-chart": "\uF080",
	"bar-chart-o": "\uF080",
	"barcode": "\uF02A",
	"bars": "\uF0C9",
	"bath": "\uF2CD",
	"bathtub": "\uF2CD",
	"battery": "\uF240",
	"battery-0": "\uF244",
	"battery-1": "\uF243",
	"battery-2": "\uF242",
	"battery-3": "\uF241",
	"battery-4": "\uF240",
	"battery-empty": "\uF244",
	"battery-full": "\uF240",
	"battery-half": "\uF242",
	"battery-quarter": "\uF243",
	"battery-three-quarters": "\uF241",
	"bed": "\uF236",
	"beer": "\uF0FC",
	"behance": "\uF1B4",
	"behance-square": "\uF1B5",
	"bell": "\uF0F3",
	"bell-o": "\uF0A2",
	"bell-slash": "\uF1F6",
	"bell-slash-o": "\uF1F7",
	"bicycle": "\uF206",
	"binoculars": "\uF1E5",
	"birthday-cake": "\uF1FD",
	"bitbucket": "\uF171",
	"bitbucket-square": "\uF172",
	"bitcoin": "\uF15A",
	"black-tie": "\uF27E",
	"blind": "\uF29D",
	"bluetooth": "\uF293",
	"bluetooth-b": "\uF294",
	"bold": "\uF032",
	"bolt": "\uF0E7",
	"bomb": "\uF1E2",
	"book": "\uF02D",
	"bookmark": "\uF02E",
	"bookmark-o": "\uF097",
	"braille": "\uF2A1",
	"briefcase": "\uF0B1",
	"btc": "\uF15A",
	"bug": "\uF188",
	"building": "\uF1AD",
	"building-o": "\uF0F7",
	"bullhorn": "\uF0A1",
	"bullseye": "\uF140",
	"bus": "\uF207",
	"buysellads": "\uF20D",
	"cab": "\uF1BA",
	"calculator": "\uF1EC",
	"calendar": "\uF073",
	"calendar-check-o": "\uF274",
	"calendar-minus-o": "\uF272",
	"calendar-o": "\uF133",
	"calendar-plus-o": "\uF271",
	"calendar-times-o": "\uF273",
	"camera": "\uF030",
	"camera-retro": "\uF083",
	"car": "\uF1B9",
	"caret-down": "\uF0D7",
	"caret-left": "\uF0D9",
	"caret-right": "\uF0DA",
	"caret-square-o-down": "\uF150",
	"caret-square-o-left": "\uF191",
	"caret-square-o-right": "\uF152",
	"caret-square-o-up": "\uF151",
	"caret-up": "\uF0D8",
	"cart-arrow-down": "\uF218",
	"cart-plus": "\uF217",
	"cc": "\uF20A",
	"cc-amex": "\uF1F3",
	"cc-diners-club": "\uF24C",
	"cc-discover": "\uF1F2",
	"cc-jcb": "\uF24B",
	"cc-mastercard": "\uF1F1",
	"cc-paypal": "\uF1F4",
	"cc-stripe": "\uF1F5",
	"cc-visa": "\uF1F0",
	"certificate": "\uF0A3",
	"chain": "\uF0C1",
	"chain-broken": "\uF127",
	"check": "\uF00C",
	"check-circle": "\uF058",
	"check-circle-o": "\uF05D",
	"check-square": "\uF14A",
	"check-square-o": "\uF046",
	"chevron-circle-down": "\uF13A",
	"chevron-circle-left": "\uF137",
	"chevron-circle-right": "\uF138",
	"chevron-circle-up": "\uF139",
	"chevron-down": "\uF078",
	"chevron-left": "\uF053",
	"chevron-right": "\uF054",
	"chevron-up": "\uF077",
	"child": "\uF1AE",
	"chrome": "\uF268",
	"circle": "\uF111",
	"circle-o": "\uF10C",
	"circle-o-notch": "\uF1CE",
	"circle-thin": "\uF1DB",
	"clipboard": "\uF0EA",
	"clock-o": "\uF017",
	"clone": "\uF24D",
	"close": "\uF00D",
	"cloud": "\uF0C2",
	"cloud-download": "\uF0ED",
	"cloud-upload": "\uF0EE",
	"cny": "\uF157",
	"code": "\uF121",
	"code-fork": "\uF126",
	"codepen": "\uF1CB",
	"codiepie": "\uF284",
	"coffee": "\uF0F4",
	"cog": "\uF013",
	"cogs": "\uF085",
	"columns": "\uF0DB",
	"comment": "\uF075",
	"comment-o": "\uF0E5",
	"commenting": "\uF27A",
	"commenting-o": "\uF27B",
	"comments": "\uF086",
	"comments-o": "\uF0E6",
	"compass": "\uF14E",
	"compress": "\uF066",
	"connectdevelop": "\uF20E",
	"contao": "\uF26D",
	"copy": "\uF0C5",
	"copyright": "\uF1F9",
	"creative-commons": "\uF25E",
	"credit-card": "\uF09D",
	"credit-card-alt": "\uF283",
	"crop": "\uF125",
	"crosshairs": "\uF05B",
	"css3": "\uF13C",
	"cube": "\uF1B2",
	"cubes": "\uF1B3",
	"cut": "\uF0C4",
	"cutlery": "\uF0F5",
	"dashboard": "\uF0E4",
	"dashcube": "\uF210",
	"database": "\uF1C0",
	"deaf": "\uF2A4",
	"deafness": "\uF2A4",
	"dedent": "\uF03B",
	"delicious": "\uF1A5",
	"desktop": "\uF108",
	"deviantart": "\uF1BD",
	"diamond": "\uF219",
	"digg": "\uF1A6",
	"dollar": "\uF155",
	"dot-circle-o": "\uF192",
	"download": "\uF019",
	"dribbble": "\uF17D",
	"drivers-license": "\uF2C2",
	"drivers-license-o": "\uF2C3",
	"dropbox": "\uF16B",
	"drupal": "\uF1A9",
	"edge": "\uF282",
	"edit": "\uF044",
	"eercast": "\uF2DA",
	"eject": "\uF052",
	"ellipsis-h": "\uF141",
	"ellipsis-v": "\uF142",
	"empire": "\uF1D1",
	"envelope": "\uF0E0",
	"envelope-o": "\uF003",
	"envelope-open": "\uF2B6",
	"envelope-open-o": "\uF2B7",
	"envelope-square": "\uF199",
	"envira": "\uF299",
	"eraser": "\uF12D",
	"etsy": "\uF2D7",
	"eur": "\uF153",
	"euro": "\uF153",
	"exchange": "\uF0EC",
	"exclamation": "\uF12A",
	"exclamation-circle": "\uF06A",
	"exclamation-triangle": "\uF071",
	"expand": "\uF065",
	"expeditedssl": "\uF23E",
	"external-link": "\uF08E",
	"external-link-square": "\uF14C",
	"eye": "\uF06E",
	"eye-slash": "\uF070",
	"eyedropper": "\uF1FB",
	"fa": "\uF2B4",
	"facebook": "\uF09A",
	"facebook-f": "\uF09A",
	"facebook-official": "\uF230",
	"facebook-square": "\uF082",
	"fast-backward": "\uF049",
	"fast-forward": "\uF050",
	"fax": "\uF1AC",
	"feed": "\uF09E",
	"female": "\uF182",
	"fighter-jet": "\uF0FB",
	"file": "\uF15B",
	"file-archive-o": "\uF1C6",
	"file-audio-o": "\uF1C7",
	"file-code-o": "\uF1C9",
	"file-excel-o": "\uF1C3",
	"file-image-o": "\uF1C5",
	"file-movie-o": "\uF1C8",
	"file-o": "\uF016",
	"file-pdf-o": "\uF1C1",
	"file-photo-o": "\uF1C5",
	"file-picture-o": "\uF1C5",
	"file-powerpoint-o": "\uF1C4",
	"file-sound-o": "\uF1C7",
	"file-text": "\uF15C",
	"file-text-o": "\uF0F6",
	"file-video-o": "\uF1C8",
	"file-word-o": "\uF1C2",
	"file-zip-o": "\uF1C6",
	"files-o": "\uF0C5",
	"film": "\uF008",
	"filter": "\uF0B0",
	"fire": "\uF06D",
	"fire-extinguisher": "\uF134",
	"firefox": "\uF269",
	"first-order": "\uF2B0",
	"flag": "\uF024",
	"flag-checkered": "\uF11E",
	"flag-o": "\uF11D",
	"flash": "\uF0E7",
	"flask": "\uF0C3",
	"flickr": "\uF16E",
	"floppy-o": "\uF0C7",
	"folder": "\uF07B",
	"folder-o": "\uF114",
	"folder-open": "\uF07C",
	"folder-open-o": "\uF115",
	"font": "\uF031",
	"font-awesome": "\uF2B4",
	"fonticons": "\uF280",
	"fort-awesome": "\uF286",
	"forumbee": "\uF211",
	"forward": "\uF04E",
	"foursquare": "\uF180",
	"free-code-camp": "\uF2C5",
	"frown-o": "\uF119",
	"futbol-o": "\uF1E3",
	"gamepad": "\uF11B",
	"gavel": "\uF0E3",
	"gbp": "\uF154",
	"ge": "\uF1D1",
	"gear": "\uF013",
	"gears": "\uF085",
	"genderless": "\uF22D",
	"get-pocket": "\uF265",
	"gg": "\uF260",
	"gg-circle": "\uF261",
	"gift": "\uF06B",
	"git": "\uF1D3",
	"git-square": "\uF1D2",
	"github": "\uF09B",
	"github-alt": "\uF113",
	"github-square": "\uF092",
	"gitlab": "\uF296",
	"gittip": "\uF184",
	"glass": "\uF000",
	"glide": "\uF2A5",
	"glide-g": "\uF2A6",
	"globe": "\uF0AC",
	"google": "\uF1A0",
	"google-plus": "\uF0D5",
	"google-plus-circle": "\uF2B3",
	"google-plus-official": "\uF2B3",
	"google-plus-square": "\uF0D4",
	"google-wallet": "\uF1EE",
	"graduation-cap": "\uF19D",
	"gratipay": "\uF184",
	"grav": "\uF2D6",
	"group": "\uF0C0",
	"h-square": "\uF0FD",
	"hacker-news": "\uF1D4",
	"hand-grab-o": "\uF255",
	"hand-lizard-o": "\uF258",
	"hand-o-down": "\uF0A7",
	"hand-o-left": "\uF0A5",
	"hand-o-right": "\uF0A4",
	"hand-o-up": "\uF0A6",
	"hand-paper-o": "\uF256",
	"hand-peace-o": "\uF25B",
	"hand-pointer-o": "\uF25A",
	"hand-rock-o": "\uF255",
	"hand-scissors-o": "\uF257",
	"hand-spock-o": "\uF259",
	"hand-stop-o": "\uF256",
	"handshake-o": "\uF2B5",
	"hard-of-hearing": "\uF2A4",
	"hashtag": "\uF292",
	"hdd-o": "\uF0A0",
	"header": "\uF1DC",
	"headphones": "\uF025",
	"heart": "\uF004",
	"heart-o": "\uF08A",
	"heartbeat": "\uF21E",
	"history": "\uF1DA",
	"home": "\uF015",
	"hospital-o": "\uF0F8",
	"hotel": "\uF236",
	"hourglass": "\uF254",
	"hourglass-1": "\uF251",
	"hourglass-2": "\uF252",
	"hourglass-3": "\uF253",
	"hourglass-end": "\uF253",
	"hourglass-half": "\uF252",
	"hourglass-o": "\uF250",
	"hourglass-start": "\uF251",
	"houzz": "\uF27C",
	"html5": "\uF13B",
	"i-cursor": "\uF246",
	"id-badge": "\uF2C1",
	"id-card": "\uF2C2",
	"id-card-o": "\uF2C3",
	"ils": "\uF20B",
	"image": "\uF03E",
	"imdb": "\uF2D8",
	"inbox": "\uF01C",
	"indent": "\uF03C",
	"industry": "\uF275",
	"info": "\uF129",
	"info-circle": "\uF05A",
	"inr": "\uF156",
	"instagram": "\uF16D",
	"institution": "\uF19C",
	"internet-explorer": "\uF26B",
	"intersex": "\uF224",
	"ioxhost": "\uF208",
	"italic": "\uF033",
	"joomla": "\uF1AA",
	"jpy": "\uF157",
	"jsfiddle": "\uF1CC",
	"key": "\uF084",
	"keyboard-o": "\uF11C",
	"krw": "\uF159",
	"language": "\uF1AB",
	"laptop": "\uF109",
	"lastfm": "\uF202",
	"lastfm-square": "\uF203",
	"leaf": "\uF06C",
	"leanpub": "\uF212",
	"legal": "\uF0E3",
	"lemon-o": "\uF094",
	"level-down": "\uF149",
	"level-up": "\uF148",
	"life-bouy": "\uF1CD",
	"life-buoy": "\uF1CD",
	"life-ring": "\uF1CD",
	"life-saver": "\uF1CD",
	"lightbulb-o": "\uF0EB",
	"line-chart": "\uF201",
	"link": "\uF0C1",
	"linkedin": "\uF0E1",
	"linkedin-square": "\uF08C",
	"linode": "\uF2B8",
	"linux": "\uF17C",
	"list": "\uF03A",
	"list-alt": "\uF022",
	"list-ol": "\uF0CB",
	"list-ul": "\uF0CA",
	"location-arrow": "\uF124",
	"lock": "\uF023",
	"long-arrow-down": "\uF175",
	"long-arrow-left": "\uF177",
	"long-arrow-right": "\uF178",
	"long-arrow-up": "\uF176",
	"low-vision": "\uF2A8",
	"magic": "\uF0D0",
	"magnet": "\uF076",
	"mail-forward": "\uF064",
	"mail-reply": "\uF112",
	"mail-reply-all": "\uF122",
	"male": "\uF183",
	"map": "\uF279",
	"map-marker": "\uF041",
	"map-o": "\uF278",
	"map-pin": "\uF276",
	"map-signs": "\uF277",
	"mars": "\uF222",
	"mars-double": "\uF227",
	"mars-stroke": "\uF229",
	"mars-stroke-h": "\uF22B",
	"mars-stroke-v": "\uF22A",
	"maxcdn": "\uF136",
	"meanpath": "\uF20C",
	"medium": "\uF23A",
	"medkit": "\uF0FA",
	"meetup": "\uF2E0",
	"meh-o": "\uF11A",
	"mercury": "\uF223",
	"microchip": "\uF2DB",
	"microphone": "\uF130",
	"microphone-slash": "\uF131",
	"minus": "\uF068",
	"minus-circle": "\uF056",
	"minus-square": "\uF146",
	"minus-square-o": "\uF147",
	"mixcloud": "\uF289",
	"mobile": "\uF10B",
	"mobile-phone": "\uF10B",
	"modx": "\uF285",
	"money": "\uF0D6",
	"moon-o": "\uF186",
	"mortar-board": "\uF19D",
	"motorcycle": "\uF21C",
	"mouse-pointer": "\uF245",
	"music": "\uF001",
	"navicon": "\uF0C9",
	"neuter": "\uF22C",
	"newspaper-o": "\uF1EA",
	"object-group": "\uF247",
	"object-ungroup": "\uF248",
	"odnoklassniki": "\uF263",
	"odnoklassniki-square": "\uF264",
	"opencart": "\uF23D",
	"openid": "\uF19B",
	"opera": "\uF26A",
	"optin-monster": "\uF23C",
	"outdent": "\uF03B",
	"pagelines": "\uF18C",
	"paint-brush": "\uF1FC",
	"paper-plane": "\uF1D8",
	"paper-plane-o": "\uF1D9",
	"paperclip": "\uF0C6",
	"paragraph": "\uF1DD",
	"paste": "\uF0EA",
	"pause": "\uF04C",
	"pause-circle": "\uF28B",
	"pause-circle-o": "\uF28C",
	"paw": "\uF1B0",
	"paypal": "\uF1ED",
	"pencil": "\uF040",
	"pencil-square": "\uF14B",
	"pencil-square-o": "\uF044",
	"percent": "\uF295",
	"phone": "\uF095",
	"phone-square": "\uF098",
	"photo": "\uF03E",
	"picture-o": "\uF03E",
	"pie-chart": "\uF200",
	"pied-piper": "\uF2AE",
	"pied-piper-alt": "\uF1A8",
	"pied-piper-pp": "\uF1A7",
	"pinterest": "\uF0D2",
	"pinterest-p": "\uF231",
	"pinterest-square": "\uF0D3",
	"plane": "\uF072",
	"play": "\uF04B",
	"play-circle": "\uF144",
	"play-circle-o": "\uF01D",
	"plug": "\uF1E6",
	"plus": "\uF067",
	"plus-circle": "\uF055",
	"plus-square": "\uF0FE",
	"plus-square-o": "\uF196",
	"podcast": "\uF2CE",
	"power-off": "\uF011",
	"print": "\uF02F",
	"product-hunt": "\uF288",
	"puzzle-piece": "\uF12E",
	"qq": "\uF1D6",
	"qrcode": "\uF029",
	"question": "\uF128",
	"question-circle": "\uF059",
	"question-circle-o": "\uF29C",
	"quora": "\uF2C4",
	"quote-left": "\uF10D",
	"quote-right": "\uF10E",
	"ra": "\uF1D0",
	"random": "\uF074",
	"ravelry": "\uF2D9",
	"rebel": "\uF1D0",
	"recycle": "\uF1B8",
	"reddit": "\uF1A1",
	"reddit-alien": "\uF281",
	"reddit-square": "\uF1A2",
	"refresh": "\uF021",
	"registered": "\uF25D",
	"remove": "\uF00D",
	"renren": "\uF18B",
	"reorder": "\uF0C9",
	"repeat": "\uF01E",
	"reply": "\uF112",
	"reply-all": "\uF122",
	"resistance": "\uF1D0",
	"retweet": "\uF079",
	"rmb": "\uF157",
	"road": "\uF018",
	"rocket": "\uF135",
	"rotate-left": "\uF0E2",
	"rotate-right": "\uF01E",
	"rouble": "\uF158",
	"rss": "\uF09E",
	"rss-square": "\uF143",
	"rub": "\uF158",
	"ruble": "\uF158",
	"rupee": "\uF156",
	"s15": "\uF2CD",
	"safari": "\uF267",
	"save": "\uF0C7",
	"scissors": "\uF0C4",
	"scribd": "\uF28A",
	"search": "\uF002",
	"search-minus": "\uF010",
	"search-plus": "\uF00E",
	"sellsy": "\uF213",
	"send": "\uF1D8",
	"send-o": "\uF1D9",
	"server": "\uF233",
	"share": "\uF064",
	"share-alt": "\uF1E0",
	"share-alt-square": "\uF1E1",
	"share-square": "\uF14D",
	"share-square-o": "\uF045",
	"shekel": "\uF20B",
	"sheqel": "\uF20B",
	"shield": "\uF132",
	"ship": "\uF21A",
	"shirtsinbulk": "\uF214",
	"shopping-bag": "\uF290",
	"shopping-basket": "\uF291",
	"shopping-cart": "\uF07A",
	"shower": "\uF2CC",
	"sign-in": "\uF090",
	"sign-language": "\uF2A7",
	"sign-out": "\uF08B",
	"signal": "\uF012",
	"signing": "\uF2A7",
	"simplybuilt": "\uF215",
	"sitemap": "\uF0E8",
	"skyatlas": "\uF216",
	"skype": "\uF17E",
	"slack": "\uF198",
	"sliders": "\uF1DE",
	"slideshare": "\uF1E7",
	"smile-o": "\uF118",
	"snapchat": "\uF2AB",
	"snapchat-ghost": "\uF2AC",
	"snapchat-square": "\uF2AD",
	"snowflake-o": "\uF2DC",
	"soccer-ball-o": "\uF1E3",
	"sort": "\uF0DC",
	"sort-alpha-asc": "\uF15D",
	"sort-alpha-desc": "\uF15E",
	"sort-amount-asc": "\uF160",
	"sort-amount-desc": "\uF161",
	"sort-asc": "\uF0DE",
	"sort-desc": "\uF0DD",
	"sort-down": "\uF0DD",
	"sort-numeric-asc": "\uF162",
	"sort-numeric-desc": "\uF163",
	"sort-up": "\uF0DE",
	"soundcloud": "\uF1BE",
	"space-shuttle": "\uF197",
	"spinner": "\uF110",
	"spoon": "\uF1B1",
	"spotify": "\uF1BC",
	"square": "\uF0C8",
	"square-o": "\uF096",
	"stack-exchange": "\uF18D",
	"stack-overflow": "\uF16C",
	"star": "\uF005",
	"star-half": "\uF089",
	"star-half-empty": "\uF123",
	"star-half-full": "\uF123",
	"star-half-o": "\uF123",
	"star-o": "\uF006",
	"steam": "\uF1B6",
	"steam-square": "\uF1B7",
	"step-backward": "\uF048",
	"step-forward": "\uF051",
	"stethoscope": "\uF0F1",
	"sticky-note": "\uF249",
	"sticky-note-o": "\uF24A",
	"stop": "\uF04D",
	"stop-circle": "\uF28D",
	"stop-circle-o": "\uF28E",
	"street-view": "\uF21D",
	"strikethrough": "\uF0CC",
	"stumbleupon": "\uF1A4",
	"stumbleupon-circle": "\uF1A3",
	"subscript": "\uF12C",
	"subway": "\uF239",
	"suitcase": "\uF0F2",
	"sun-o": "\uF185",
	"superpowers": "\uF2DD",
	"superscript": "\uF12B",
	"support": "\uF1CD",
	"table": "\uF0CE",
	"tablet": "\uF10A",
	"tachometer": "\uF0E4",
	"tag": "\uF02B",
	"tags": "\uF02C",
	"tasks": "\uF0AE",
	"taxi": "\uF1BA",
	"telegram": "\uF2C6",
	"television": "\uF26C",
	"tencent-weibo": "\uF1D5",
	"terminal": "\uF120",
	"text-height": "\uF034",
	"text-width": "\uF035",
	"th": "\uF00A",
	"th-large": "\uF009",
	"th-list": "\uF00B",
	"themeisle": "\uF2B2",
	"thermometer": "\uF2C7",
	"thermometer-0": "\uF2CB",
	"thermometer-1": "\uF2CA",
	"thermometer-2": "\uF2C9",
	"thermometer-3": "\uF2C8",
	"thermometer-4": "\uF2C7",
	"thermometer-empty": "\uF2CB",
	"thermometer-full": "\uF2C7",
	"thermometer-half": "\uF2C9",
	"thermometer-quarter": "\uF2CA",
	"thermometer-three-quarters": "\uF2C8",
	"thumb-tack": "\uF08D",
	"thumbs-down": "\uF165",
	"thumbs-o-down": "\uF088",
	"thumbs-o-up": "\uF087",
	"thumbs-up": "\uF164",
	"ticket": "\uF145",
	"times": "\uF00D",
	"times-circle": "\uF057",
	"times-circle-o": "\uF05C",
	"times-rectangle": "\uF2D3",
	"times-rectangle-o": "\uF2D4",
	"tint": "\uF043",
	"toggle-down": "\uF150",
	"toggle-left": "\uF191",
	"toggle-off": "\uF204",
	"toggle-on": "\uF205",
	"toggle-right": "\uF152",
	"toggle-up": "\uF151",
	"trademark": "\uF25C",
	"train": "\uF238",
	"transgender": "\uF224",
	"transgender-alt": "\uF225",
	"trash": "\uF1F8",
	"trash-o": "\uF014",
	"tree": "\uF1BB",
	"trello": "\uF181",
	"tripadvisor": "\uF262",
	"trophy": "\uF091",
	"truck": "\uF0D1",
	"try": "\uF195",
	"tty": "\uF1E4",
	"tumblr": "\uF173",
	"tumblr-square": "\uF174",
	"turkish-lira": "\uF195",
	"tv": "\uF26C",
	"twitch": "\uF1E8",
	"twitter": "\uF099",
	"twitter-square": "\uF081",
	"umbrella": "\uF0E9",
	"underline": "\uF0CD",
	"undo": "\uF0E2",
	"universal-access": "\uF29A",
	"university": "\uF19C",
	"unlink": "\uF127",
	"unlock": "\uF09C",
	"unlock-alt": "\uF13E",
	"unsorted": "\uF0DC",
	"upload": "\uF093",
	"usb": "\uF287",
	"usd": "\uF155",
	"user": "\uF007",
	"user-circle": "\uF2BD",
	"user-circle-o": "\uF2BE",
	"user-md": "\uF0F0",
	"user-o": "\uF2C0",
	"user-plus": "\uF234",
	"user-secret": "\uF21B",
	"user-times": "\uF235",
	"users": "\uF0C0",
	"vcard": "\uF2BB",
	"vcard-o": "\uF2BC",
	"venus": "\uF221",
	"venus-double": "\uF226",
	"venus-mars": "\uF228",
	"viacoin": "\uF237",
	"viadeo": "\uF2A9",
	"viadeo-square": "\uF2AA",
	"video-camera": "\uF03D",
	"vimeo": "\uF27D",
	"vimeo-square": "\uF194",
	"vine": "\uF1CA",
	"vk": "\uF189",
	"volume-control-phone": "\uF2A0",
	"volume-down": "\uF027",
	"volume-off": "\uF026",
	"volume-up": "\uF028",
	"warning": "\uF071",
	"wechat": "\uF1D7",
	"weibo": "\uF18A",
	"weixin": "\uF1D7",
	"whatsapp": "\uF232",
	"wheelchair": "\uF193",
	"wheelchair-alt": "\uF29B",
	"wifi": "\uF1EB",
	"wikipedia-w": "\uF266",
	"window-close": "\uF2D3",
	"window-close-o": "\uF2D4",
	"window-maximize": "\uF2D0",
	"window-minimize": "\uF2D1",
	"window-restore": "\uF2D2",
	"windows": "\uF17A",
	"won": "\uF159",
	"wordpress": "\uF19A",
	"wpbeginner": "\uF297",
	"wpexplorer": "\uF2DE",
	"wpforms": "\uF298",
	"wrench": "\uF0AD",
	"xing": "\uF168",
	"xing-square": "\uF169",
	"y-combinator": "\uF23B",
	"y-combinator-square": "\uF1D4",
	"yahoo": "\uF19E",
	"yc": "\uF23B",
	"yc-square": "\uF1D4",
	"yelp": "\uF1E9",
	"yen": "\uF157",
	"yoast": "\uF2B1",
	"youtube": "\uF167",
	"youtube-play": "\uF16A",
	"youtube-square": "\uF166"
}
