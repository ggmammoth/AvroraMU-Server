# Changelog / Промени

**[English](#english) | [Български](#български)**

Every version of this repository is complete: just download the newest one. Nothing has to be replaced by hand.
Всяка версия на репото е пълна: просто свали най-новата. Нищо не се заменя ръчно.

---

## English

### 06.10.2026
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

### 06.10.2026
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
