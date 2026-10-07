# Changelog / Промени

**[English](#english) | [Български](#български)**

Every version of this repository is complete: just download the newest one. Nothing has to be replaced by hand.
Всяка версия на репото е пълна: просто свали най-новата. Нищо не се заменя ръчно.

---

## English

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
