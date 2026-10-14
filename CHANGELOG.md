# Changelog / Промени

**[English](#english) | [Български](#български)**

Every version of this repository is complete: just download the newest one. Nothing has to be replaced by hand.
Всяка версия на репото е пълна: просто свали най-новата. Нищо не се заменя ръчно.

---

## English

### 14.10.2026
- **New full Android APK (5241):** it has all game files inside (23 995 files) - after installing it downloads almost nothing. Same version as the update APK, so it does not ask for another APK.
- **Fast start on Android:** the launcher remembers the CRC of every game file (`Data/.crc-cache`); only changed files are read again - the start check takes seconds instead of minutes.
- **X Shop:**
  - currency tabs on top like the MuServer2 In-Game Shop (W Coin / Hunt Points / Goblin Points - only the used ones), pages "1 / 2" with arrows under the items, full currency names under the price;
  - a pack can be sold for a choice of time with its own price: chips 7d / 15d / 31d next to the pack icon (EXP PACK and BUFF PACK: 300 / 550 / 950 WC), the pack items get the chosen time;
  - Package Box A / B / C packs (EXP / BUFF packs like MuServer2), EXP PACK and BUFF PACK above the Starter Packs.
- **X Shop editor inside the GameServer window** (Config -> SPK -> CustomShop.xml): the same work as the desktop X Shop Editor; SAVE + RELOAD writes the file (with a backup) and reloads the shop at once.
- **Test-1 is open for everyone** (it was still locked to GM accounts - players got "No related information found").
- **NPC David** (Lucky Items) also in Lorencia 143,140.
- In the source for the next build: Lucky Items switched on in the clients (Lucky tickets with a picture, the David window, Lucky sets), F1 Guide shows no % for boxes that always give everything (Starter Packs).

### 13.10.2026
- **Vendor update 12.0 (MU SPK v12.3) merged:** chat up to 200 characters, MU Helper Party / Guild / Combo options, PC / Android icon next to the character name, password change without a fee, Android update screen with a Retry button, maps in `Data\Map`, new ServerData.bmd.
- **Fresh PC and Android clients** with all files, Test-1 is the players' server.
- **X Shop (from the MuExp package):** tabs ZEN / WC / WP / GP / RUUD / ATM / MONTHLY / EVENT, packs, a result box after buying, buff time adds up, endless seal buff fixed, item time shown in the shop.
- **Android:** Guide button (the F1 Server Guide) next to Voice and in the menu, MU Helper "Route", TAB map legend and sharp zoom buttons (they showed as 4 blurry buttons), wings fixed.
- **PC:** the TAB map no longer touches the top of the screen.
- **Grand Reset:** needs 100 resets, back to level 1 with 0 resets and the starting stats, 1000 points and +500 HP for every Grand Reset.

### 12.10.2026
- **Starter Pack Level 1 / 2 / 3** (14/505-507, new items with models): open them and you get the whole starter set of your class in the inventory (taken from DangerZoneMU). They are also in the F1 Boxes tab.
- **Invasion drops rebuilt:**
  - Farm Invasion: Chicken (new bag), Pouch of Blessing, Lunar Rabbit and Fire Flame Ghost now give Jewels and Bundled Jewels.
  - Little Boss: Skeleton King, Red Dragon and White Wizard give Bundled Jewels and custom jewels (Level +10..+15, Luck, Socket ...); Death Bone and both Orcs got their own bags.
  - Gorgon, Ice Queen, Balrog, Zaikan and Hydra drops (from 11.10) checked: the same as the original files.
- **Item level bonuses:**
  - Fixed: 174 items (boots, wings, Seeds, Spheres, Seed Spheres ...) had wrong extra bonuses from a typo in the MuServer2 file. Seed Spheres no longer show +11..+15 bonuses.
  - 34 items that had only an old text get real bonuses (Dark Breaker, Rune Blade, Ashcrow set, custom wings 12/200-214, Wings of Eternity, Pendants of Ice / Wind / Water / Ability ...).
  - The tooltip shows one list only (the old fixed texts are gone), two rows of the same bonus are shown as one line with the sum, and long tooltips no longer cut the list.
- **Seed Spheres:** all socket option names in English; Earth Strength / Agility / Energy now have their name and value.
- **Wings:** the MuServer2 wing effects (1063 effects on 26 wings); 15 new wings use their animated renderer (Annihilation ...); the glowing parts of Storm's Wings, Wings of Fantasy, Cloak of Zero 5.5 and 8 more wings no longer look black; capes show the whole cloak in the inventory; the white trail of Cloak of Zero + Core is removed.
- **F1 Server Guide:** Abyss Sovereign no longer closes the client; no double bosses; the drop lists are read again every time F1 is opened, so a server reload shows at once.
- **TAB map:** the legend is inside the map frame.
- The client part comes with the next `Engine.exe` (some of it is already in this `Client`).

### 11.10.2026
- **F1 Server Guide, rounds 1-3:** one Boss / Invasion tab with arrows, the drops of every monster with item icons, bosses centred, Golden Invasion in gold, event rewards, Kundun boxes, more room in the wing guides.
- **Boss drops from MuServer2:** Medusa, Selupan, Gorgon, Ice Queen, Balrog, Zaikan and Hydra (item numbers matched by name).

### 10.10.2026
- **New F1 Server Guide window:** events with countdowns, invasions, bosses with a rotating 3D model and a "Go" button, drops, boxes and guides (Chaos weapon, all wings) with live mix rates.
- **MU Helper "Route" tab** (premium): a route of maps (Move costs zen) with auto reset.
- **TAB map:** walking to a free point needs Ctrl + click; legend and how-to box.

### 09.10.2026 (later)
- **HUD:** the Reset / M.Reset buttons hide behind every open window (guild, NPC dialogs, shops ...).

### 09.10.2026
- **Item level bonuses (like MuServer2):** sets, wings, weapons and shields get extra bonuses that unlock at +11, +12, +13, +14 and +15 and add up. Taken from MuServer2 for 407 items; for those items the old bonuses were replaced, not added on top.
  - The item tooltip shows **"Level bonus:"**: unlocked lines are green, locked lines grey with the level they open at.
  - New bonus types: SD %, SD, Triple damage, Resist double damage / ignore defense / ignore SD / critical / excellent / stun, Full SD restore. The resist bonuses work now (before they always gave 0).
  - Comes with the next `GameServer.exe` + `Engine.exe` + the new `ItemOptionBEx.xml`.
- **New items:** King Of Mace (2/23) and the elf buffer sets Gru Hill, Princie and Hirat (7-11/183-185), with client models.
- **Rings** (Ice, Poison, Fire, Earth, Wind, Magic) keep their level bonuses; "HP +2/+3/+5" is now HP %.
- **TAB map:** the text of a portal / NPC / monster spot is in a framed box above the marker, so the mouse no longer covers it.

### 08.10.2026 (later)
- **Acheron (map 85)** from the owner's pack: terrain, portals to Debenter / Uruk / Nars, monsters and NPCs.
- **TAB map:** NPCs and portals on the map, zoom (round + / - buttons), map centred, zoom on the hero, scaled markers, names on hover.
- **Party call (Ctrl+S):** the leader calls the party to a point; MU Helper starts automatically.
- **Boss damage box** at the top centre, under the buffs.
- **Mount / pet bonuses** in the item tooltip (from `Custom\CustomPet.txt`).
- **Guild window:** offline members show when they were last online ("3h", "2d"), and on hover the map: "Online - Lorencia" / "Last online: 3 h 20 min ago - Lorencia". Needs the new `DataServer.exe`.

### 08.10.2026
- **Nars (map 83) rebuilt** from MuServer2: real Nars terrain and objects, Nars monsters (Devil Fairy, Elemental Beast, Elemental Knight), and the portals inside the map work now.
- **New map Uruk Mountain (89):**
  - Urk monsters, Lord Silvester and Green Rooster;
  - portals inside the map;
  - `/move Uruk Mountain` and an entry in the move list (M).
  - The map name, minimap and splash come with the next `Engine.exe`.
- **New map Swamp of Darkness (93):**
  - Swamp Ent, Wooden Beast, Swamp Wizard and Mutanlite;
  - boss God of Darkness;
  - portals inside the map;
  - `/move Swamp of Darkness` and an entry in the move list (M).
- **Bosses:** Core Magriffy in Nars, God of Darkness in Swamp of Darkness, Lord Silvester in Uruk Mountain.
- The monster spots on the TAB map show up on all three maps automatically.
- Acheron is not added yet: its map exists only in an encrypted client.

### 07.10.2026
- **Invasion drops (EventItemBag):** bags for all snakes (801-804), horses (916-919), goats (912-915) and goblins (762-765), taken from MuServer2.
- **Purple Snake (803)** added (server + client).
- **Invasions fixed:**
  - Golden Devil (494) now spawns in the Golden Invasion.
  - New bosses Lord Icarus (838), Pharaon (835) and the Arkania invasion (850/851), each with its own drop bag.
  - Checked all 17 invasions: every one has its monsters, spawn spots and client models.
- **New town Arkania (map 117):** in the move list (M) after Lorencia, `/move Arkania`, minimap, map-name splash. Map name, minimap and splash come with the next `Engine.exe`.
- **Kill messages:**
  - The Golden monsters now show their own name (many showed a wrong one).
  - Bosses no longer show "Auto Potion has been enabled." when killed.
  - Every boss now has its own kill message.
  - The horse/goat invasions are announced as "[Invasion] Horses" / "[Invasion] Goats".
- **Shops:** the 9 empty shops are filled like MuServer2 (Harold, Isabel, Thompson, Lindsay, Leah, Moss Merchant, Reira, Leina, Bolo).
- **New items:**
  - **Zen Coin** costs 1,000,000,000 zen and sells for the same.
  - **Boss Battle Ticket** costs 1000 WCoinP.
- **Boss Battle entrance:** NPC "Boss Battle Event" in Lorencia (131,141) takes 1 ticket and moves you to Boss Battle (level 250+). `/move Boss Battle` was removed.
- **Monster list** (Monster.txt) sorted by number.
- **Client code (next `Engine.exe`):**
  - Schriker no longer glows too brightly on the shoulders and legs (the glow effect is drawn like the original again).
  - FPS shown in the bottom-left corner (PC), like the mobile version.

### 06.10.2026
- **SET-IP.bat:** one click sets your server IP (this PC, LAN, internet or any IP) everywhere it is needed, client included, and opens the firewall ports.
- **Ready to play:**
  - `SETUP-DATABASE.bat` creates the database and the ODBC connection;
  - `START-SERVER.bat` and `START-GAME.bat` start everything;
  - test account `test` / `test123`.
  - The package runs only the Test server, which has all the new content.
- **Monsters on the new maps:** the game server had a hard limit of 8000 monsters. The maps loaded last (Ferea, Old Kethotum, Premium Arenas) and the invasions (Nix…) got none. The limit is now 12000 (new `GameServerTest.exe`).
- **Invasion monsters (Test-1):** Goats (912-915), Horses (916-919), Monkeys (758-761), Goblins (762-765), Golden Goblin (795) and Chicken (776) were added. Snakes (801/802/804) and Illidan (841) were added for the Premium Arenas. The Goat/Horse invasions now spawn the right monsters.
- **Inventory looks:** mount icons, seals and wing materials are centred, turned like the shields and equal in size.
- **Minimap (TAB) for the new maps:** the images are in the client. The code ships with the next `Engine.exe` build.

### 05.10.2026
- **Map-name splash** when you enter Nixies Lake, Ferea, Old Kethotum, Boss Battle, Hall of Fame, Premium Arena 1/2/3 and Stadium 2.
- **Mounts** show their own icon in the inventory, like MuServer2.
- **Hall of Fame** map (109).
- **Move list (M):** like MuServer2, with the Premium Arenas on top and the grand-reset maps last.

### 04.10.2026
- **New maps:** Nixies Lake (94), Ferea (95), Old Kethotum (97), Boss Battle Together (99), Premium Arena 1/2/3 (111/114/115), Stadium 2 (118).
- **Event bosses:** Ferea General, Nix, Abaddon, Moon God, Invoker and the six Boss Battle bosses.
- **Wing materials** for wings 2.5 → 5.5 and the Chaos Machine wing mixes (random class, random excellent / Add options).

### 03.10.2026
- **Test-1:** a separate test game server and test client.
- **Wings:** all MuServer2 wings, with the level shown in the name.
- **Items:**
  - Blessed Archangel and socket weapons/sets;
  - all MuServer2 mounts and their seals, Rhino (Rare), earrings;
  - all Custom Jewels (the limit is now 50).

---

## Български

### 14.10.2026
- **Нов пълен Android APK (5241):** вътре са всички файлове на играта (23 995) - след инсталация не тегли почти нищо. Същата версия като update APK-то, така че не иска друг APK.
- **Бърз старт на Android:** лаунчърът помни CRC на всеки файл (`Data/.crc-cache`); чете наново само променените - проверката при пускане е секунди, не минути.
- **X Shop:**
  - табове по валута отгоре като In-Game Shop-а на MuServer2 (W Coin / Hunt Points / Goblin Points - само използваните), страници "1 / 2" със стрелки под предметите, пълни имена на валутите под цената;
  - пакет може да се продава с избор на срок и своя цена: бутончета 7d / 15d / 31d до иконата (EXP PACK и BUFF PACK: 300 / 550 / 950 WC), предметите в пакета получават избрания срок;
  - пакетите Package Box A / B / C (EXP / BUFF пакети като в MuServer2), EXP PACK и BUFF PACK над Starter Pack-овете.
- **X Shop редактор в прозореца на GameServer** (Config -> SPK -> CustomShop.xml): същото като X Shop Editor на десктопа; SAVE + RELOAD записва файла (с бекъп) и презарежда магазина веднага.
- **Test-1 е отворен за всички** (беше заключен само за GM акаунти - играчите получаваха "No related information found").
- **NPC David** (Lucky Items) и в Lorencia 143,140.
- В кода за следващия билд: Lucky Items включени в клиентите (Lucky билети с картинка, прозорецът на David, Lucky сетове), F1 Guide без % за кутии, които дават всичко (Starter Pack-овете).

### 13.10.2026
- **Вграден ъпдейт 12.0 на производителя (MU SPK v12.3):** чат до 200 знака, MU Helper отметки Party / Guild / Combo, иконка PC / Android до името на героя, смяна на паролата без такса, екран за ъпдейт на Android с бутон Retry, картите в `Data\Map`, нов ServerData.bmd.
- **Нови PC и Android клиенти** с всички файлове, Test-1 е сървърът на играчите.
- **X Shop (от MuExp пакета):** табове ZEN / WC / WP / GP / RUUD / ATM / MONTHLY / EVENT, пакети, прозорец с резултата след покупка, времето на бафовете се добавя, поправен безкраен seal баф, срокът на предмета се вижда в магазина.
- **Android:** бутон Guide (F1 Server Guide) до Voice и в менюто, MU Helper "Route", легенда на TAB картата и ясни бутони за zoom (бяха 4 размазани), поправени крилата.
- **PC:** TAB картата вече не опира в горния край на екрана.
- **Grand Reset:** иска 100 ресета, връща на ниво 1 с 0 ресета и стартови статове, 1000 точки и +500 HP за всеки Grand Reset.

### 12.10.2026
- **Starter Pack Level 1 / 2 / 3** (14/505-507, нови итеми с модели): като го отвориш, получаваш целия стартов сет за класа си в инвентара (взети от DangerZoneMU). Има ги и в раздел Boxes на F1.
- **Дропът на инвазиите е направен наново:**
  - Farm Invasion: Chicken (нов бег), Pouch of Blessing, Lunar Rabbit и Fire Flame Ghost вече дават Jewels и Bundled Jewels.
  - Little Boss: Skeleton King, Red Dragon и White Wizard дават Bundled Jewels и custom jewels (Level +10..+15, Luck, Socket ...); Death Bone и двата Orc-а получиха собствени бегове.
  - Дропът на Gorgon, Ice Queen, Balrog, Zaikan и Hydra (от 11.10) е проверен: същият като в оригиналните файлове.
- **Бонуси по ниво на итема:**
  - Поправено: 174 итема (ботуши, крила, Seed, Sphere, Seed Sphere ...) имаха грешни допълнителни бонуси заради грешка във файла на MuServer2. Seed Sphere вече не показват бонуси +11..+15.
  - 34 итема, които имаха само стар текст, получиха истински бонуси (Dark Breaker, Rune Blade, сетът Ashcrow, custom крилата 12/200-214, Wings of Eternity, Pendant of Ice / Wind / Water / Ability ...).
  - В описанието има само един списък (старите твърди текстове са махнати), два реда за един и същ бонус се показват като един ред със сбора, а дългите описания вече не режат списъка.
- **Seed Sphere:** всички имена на socket опциите са на английски; Earth Strength / Agility / Energy вече имат име и стойност.
- **Крила:** ефектите на крилата от MuServer2 (1063 ефекта на 26 крила); 15 нови крила ползват анимирания си рендер (Annihilation ...); светещите части на Storm's Wings, Wings of Fantasy, Cloak of Zero 5.5 и още 8 крила вече не са черни; пелерините показват целия плащ в инвентара; бялата следа на Cloak of Zero + Core е махната.
- **F1 Server Guide:** Abyss Sovereign вече не затваря клиента; няма двойни босове; дропът се чете наново при всяко отваряне на F1, така че reload на сървъра се вижда веднага.
- **TAB картата:** легендата е вътре в рамката на картата.
- Клиентската част идва със следващия `Engine.exe` (част от нея вече е в този `Client`).

### 11.10.2026
- **F1 Server Guide, кръг 1-3:** един раздел Boss / Invasion със стрелки, дропът на всяко чудовище с иконки, центрирани босове, Golden Invasion в злато, награди за събитията, кутиите на Kundun, повече място в гайдовете за крилата.
- **Дроп на босовете от MuServer2:** Medusa, Selupan, Gorgon, Ice Queen, Balrog, Zaikan и Hydra (номерата на итемите по име).

### 10.10.2026
- **Нов прозорец F1 Server Guide:** събития с отброяване, инвазии, босове с въртящ се 3D модел и бутон „Go“, дроп, кутии и гайдове (Chaos weapon, всички крила) с живи шансове за миксовете.
- **MU Helper раздел „Route“** (premium): маршрут от карти (Move струва зен) с автоматичен reset.
- **TAB картата:** ходене до свободна точка с Ctrl + клик; легенда и кутия с указания.

### 09.10.2026 (по-късно)
- **HUD:** бутоните Reset / M.Reset се скриват зад всеки отворен прозорец (гилдия, NPC диалози, магазини ...).

### 09.10.2026
- **Бонуси по ниво на итема (като в MuServer2):** сетове, крила, оръжия и щитове получават допълнителни бонуси, които се отключват на +11, +12, +13, +14 и +15 и се събират. Взети от MuServer2 за 407 итема; за тях старите бонуси са заменени, не са добавени отгоре.
  - В описанието на итема има **„Level bonus:“**: отключените редове са зелени, заключените сиви с нивото, на което се отключват.
  - Нови видове бонуси: SD %, SD, Triple damage, Resist double damage / ignore defense / ignore SD / critical / excellent / stun, Full SD restore. Resist бонусите вече работят (преди винаги даваха 0).
  - Идва със следващия `GameServer.exe` + `Engine.exe` + новия `ItemOptionBEx.xml`.
- **Нови итеми:** King Of Mace (2/23) и елф бъферските сетове Gru Hill, Princie и Hirat (7-11/183-185), с модели за клиента.
- **Пръстените** (Ice, Poison, Fire, Earth, Wind, Magic) запазват бонусите си по ниво; „HP +2/+3/+5“ вече е HP %.
- **TAB картата:** текстът на портал / NPC / спот е в рамка над точката, мишката вече не го закрива.

### 08.10.2026 (по-късно)
- **Acheron (карта 85)** от пакета на собственика: терен, портали към Debenter / Uruk / Nars, чудовища и NPC.
- **TAB картата:** NPC и портали на картата, zoom (кръгли бутони + / -), центрирана карта, zoom към героя, мащабирани точки, имена при посочване.
- **Party call (Ctrl+S):** лидерът вика групата към точка; MU Helper тръгва сам.
- **Кутията за щетите по боса** горе в средата, под бъфовете.
- **Бонусите на маунтите / петовете** в описанието на итема (от `Custom\CustomPet.txt`).
- **Гилдията:** при офлайн членовете пише кога са били онлайн („3h“, „2d“), а при посочване и картата: „Online - Lorencia“ / „Last online: 3 h 20 min ago - Lorencia“. Иска новия `DataServer.exe`.

### 08.10.2026
- **Nars (карта 83) е направена наново** от MuServer2: истинският терен и обектите на Nars, чудовищата на Nars (Devil Fairy, Elemental Beast, Elemental Knight), а порталите в картата вече работят.
- **Нова карта Uruk Mountain (89):**
  - чудовищата Urk, Lord Silvester и Green Rooster;
  - портали в картата;
  - `/move Uruk Mountain` и запис в списъка за преместване (M).
  - Името на картата, миникартата и картинката при влизане идват със следващия `Engine.exe`.
- **Нова карта Swamp of Darkness (93):**
  - Swamp Ent, Wooden Beast, Swamp Wizard и Mutanlite;
  - бос God of Darkness;
  - портали в картата;
  - `/move Swamp of Darkness` и запис в списъка за преместване (M).
- **Босове:** Core Magriffy в Nars, God of Darkness в Swamp of Darkness, Lord Silvester в Uruk Mountain.
- Спотовете с чудовища на TAB картата се появяват автоматично и в трите карти.
- Acheron още не е добавен: картата му я има само в криптиран клиент.

### 07.10.2026
- **Награди от инвазиите (EventItemBag):** торбички за всички змии (801-804), коне (916-919), кози (912-915) и гоблини (762-765), взети от MuServer2.
- Добавена е **Purple Snake (803)** (сървър + клиент).
- **Поправени инвазии:**
  - Golden Devil (494) вече се появява в Golden Invasion.
  - Нови босове Lord Icarus (838), Pharaon (835) и инвазията Arkania (850/851), всеки със своя торбичка.
  - Проверени са всичките 17 инвазии: всяка има чудовищата си, местата за поява и моделите в клиента.
- **Нов град Arkania (карта 117):** в списъка за преместване (M) след Lorencia, `/move Arkania`, миникарта и картинка с името при влизане. Името на картата, миникартата и картинката идват със следващия `Engine.exe`.
- **Съобщения при убиване:**
  - Golden чудовищата вече показват своето име (много показваха грешно).
  - При убит бос вече не излиза „Auto Potion has been enabled.“.
  - Всеки бос има свое съобщение.
  - Инвазиите с коне и кози се обявяват като „[Invasion] Horses“ / „[Invasion] Goats“.
- **Магазини:** 9-те празни магазина са напълнени като в MuServer2 (Harold, Isabel, Thompson, Lindsay, Leah, Moss Merchant, Reira, Leina, Bolo).
- **Нови предмети:**
  - **Zen Coin** се купува за 1 000 000 000 зен и се продава за същото.
  - **Boss Battle Ticket** струва 1000 WCoinP.
- **Вход за Boss Battle:** NPC „Boss Battle Event“ в Lorencia (131,141) взима 1 билет и те пренася в Boss Battle (ниво 250+). `/move Boss Battle` е махнат.
- **Списъкът с чудовища** (Monster.txt) е подреден по номер.
- **Код на клиента (следващия `Engine.exe`):**
  - Schriker вече не свети твърде ярко на раменете и краката (ефектът се рисува отново като в оригинала).
  - FPS в долния ляв ъгъл (PC), като в мобилната версия.

### 06.10.2026
- **SET-IP.bat:** с един клик задава IP-то на сървъра (този компютър, LAN, интернет или друго) навсякъде, където трябва, включително в клиента, и отваря портовете във firewall.
- **Готово за игра:**
  - `SETUP-DATABASE.bat` създава базата и ODBC връзката;
  - `START-SERVER.bat` и `START-GAME.bat` пускат всичко;
  - тестов акаунт `test` / `test123`.
  - Пакетът пуска само тестовия сървър, в който са всички нови неща.
- **Чудовища в новите карти:** гейм сървърът имаше твърд лимит от 8000 чудовища. Картите, които се зареждат последни (Ferea, Old Kethotum, Premium Arenas), и инвазиите (Nix…) оставаха без чудовища. Лимитът вече е 12000 (нов `GameServerTest.exe`).
- **Чудовища за инвазии (Test-1):** добавени са кози (912-915), коне (916-919), маймуни (758-761), гоблини (762-765), Golden Goblin (795) и пиле (776). За Premium Arenas са добавени змии (801/802/804) и Illidan (841). Инвазиите с кози и коне вече пускат правилните чудовища.
- **Вид в инвентара:** иконките на маунтите, сеалите и материалите за крила са центрирани, завъртени като щитовете и с еднакъв размер.
- **Миникарта (TAB) за новите карти:** картинките са в клиента. Кодът идва със следващия `Engine.exe`.

### 05.10.2026
- **Надпис с името на картата** при влизане в Nixies Lake, Ferea, Old Kethotum, Boss Battle, Hall of Fame, Premium Arena 1/2/3 и Stadium 2.
- **Маунтите** имат собствена иконка в инвентара, като в MuServer2.
- **Карта Hall of Fame** (109).
- **Списък за преместване (M):** като в MuServer2, Premium Arenas са най-отгоре, а картите за grand reset – накрая.

### 04.10.2026
- **Нови карти:** Nixies Lake (94), Ferea (95), Old Kethotum (97), Boss Battle Together (99), Premium Arena 1/2/3 (111/114/115), Stadium 2 (118).
- **Бос събития:** Ferea General, Nix, Abaddon, Moon God, Invoker и шестте боса на Boss Battle.
- **Материали за крила** от 2.5 до 5.5 и миксове за крила в Chaos Machine (случаен клас, случайни excellent / Add опции).

### 03.10.2026
- **Test-1:** отделен тестов гейм сървър и тестов клиент.
- **Крила:** всички крила от MuServer2, с нивото в името.
- **Предмети:**
  - Blessed Archangel и сокет оръжия/сетове;
  - всички маунти от MuServer2 и техните сеали, Rhino (Rare), обеци;
  - всички Custom Jewels (лимитът вече е 50).
