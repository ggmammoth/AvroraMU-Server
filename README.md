# AvroraMU – Server + Client (Season 6 Ep. 5.2)

**[English](#english) | [Български](#български)**

---

## English

A complete, ready-to-test MU Online Season 6 server and the matching game client, with the AvroraMU custom content (new maps, wings, mounts, jewels, mixes, invasions…).
Every address in this package points to **127.0.0.1**, so it runs on one PC out of the box.

### Folders

| Folder | What it is |
|---|---|
| `MuServer\1.ConnectServer` | Server list (`ServerList.xml`) |
| `MuServer\2.DataServer`, `3.JoinServer` | Database + login servers (ODBC DSN `SPK5.2`) |
| `MuServer\4.MuServer\Sub-1` | Main game server |
| `MuServer\4.MuServer\Test-1` | Test game server (newest features, see `CHANGELOG.md`) |
| `MuServer\5.AntiServer` | Anti-hack server |
| `MuServer\7.StartUp` | `AutoStartUP.exe` – starts everything in the right order |
| `MuServer\Tool` | `MuOnline.bak` (empty database), editors |
| `Client` | Game client – run `Engine.exe` |
| `GetMain` | `GetMainInfo.exe` – writes the client settings (IP, port, window name…) into `Client\Data\SPK` |

### Quick start (one PC)

1. **SQL Server** (2008 R2 or newer, Express is fine): restore `MuServer\Tool\MuOnline.bak` as database `MuOnline`.
2. **ODBC**: open *ODBC Data Sources (32-bit)* → *System DSN* → add a **SQL Server** DSN named **`SPK5.2`** pointing to that database.
3. Start `MuServer\7.StartUp\AutoStartUP.exe` (or start 5 → 1 → 2 → 3 → 4 by hand).
4. Start `Client\Engine.exe`, create an account in the database (`MEMB_INFO`) and log in.

### Playing over LAN / internet

Change `127.0.0.1` to your IP in:
- `MuServer\1.ConnectServer\ServerList.xml`
- `MuServer\4.MuServer\*\Data\MapServerInfo.ini`
- `GetMain\GetEngine.ini` (`IpAddress`), then run `GetMain\GetMainInfo.exe` – it rewrites `Client\Data\SPK\ConnectIP.bmd` and `ServerData.bmd`.

### Updating an .exe (GameServer.exe / Engine.exe)

New builds are listed in `CHANGELOG.md` together with their SHA256.
1. Stop the server (close the GameServer window) / close the game.
2. Keep a copy of the old file (e.g. `GameServer.exe.old`).
3. Copy the new file over the old one:
   - game server → `MuServer\4.MuServer\Test-1\GameServer\GameServerTest.exe` (and/or `GameServer.exe`)
   - client → `Client\Engine.exe`
4. If you changed `Engine.exe`, run `GetMain\GetMainInfo.exe` again (it stores the client CRC).
5. Start the server / game again.

### Notes
- Logs, real accounts and private addresses were removed. Bot passwords in `AutoTrain.xml` are examples (`bot123`), the GM list (`Data\Util\GameMaster.xml`) has one example `admin` entry – put your own accounts there.
- MU Online is a trademark of Webzen Inc. This package is a non-commercial hobby project for testing and learning.

---

## Български

Пълен MU Online Season 6 сървър с готов клиент и всички AvroraMU добавки (нови карти, крила, маунти, бижута, миксове, инвазии…).
Всички адреси в пакета са **127.0.0.1** – тръгва директно на един компютър.

### Папки

| Папка | Какво е |
|---|---|
| `MuServer\1.ConnectServer` | Списък сървъри (`ServerList.xml`) |
| `MuServer\2.DataServer`, `3.JoinServer` | База данни + вход (ODBC DSN `SPK5.2`) |
| `MuServer\4.MuServer\Sub-1` | Основен гейм сървър |
| `MuServer\4.MuServer\Test-1` | Тестов гейм сървър (най-новите неща, виж `CHANGELOG.md`) |
| `MuServer\5.AntiServer` | Анти-хак сървър |
| `MuServer\7.StartUp` | `AutoStartUP.exe` – пуска всичко в правилния ред |
| `MuServer\Tool` | `MuOnline.bak` (празна база), редактори |
| `Client` | Клиентът – стартира се `Engine.exe` |
| `GetMain` | `GetMainInfo.exe` – записва настройките на клиента (IP, порт, име на прозореца…) в `Client\Data\SPK` |

### Бърз старт (един компютър)

1. **SQL Server** (2008 R2 или по-нов, Express става): възстанови `MuServer\Tool\MuOnline.bak` като база `MuOnline`.
2. **ODBC**: *ODBC Data Sources (32-bit)* → *System DSN* → добави **SQL Server** DSN с име **`SPK5.2`** към тази база.
3. Пусни `MuServer\7.StartUp\AutoStartUP.exe` (или ръчно 5 → 1 → 2 → 3 → 4).
4. Пусни `Client\Engine.exe`, създай акаунт в базата (`MEMB_INFO`) и влез.

### Игра в LAN / интернет

Смени `127.0.0.1` с твоето IP в:
- `MuServer\1.ConnectServer\ServerList.xml`
- `MuServer\4.MuServer\*\Data\MapServerInfo.ini`
- `GetMain\GetEngine.ini` (`IpAddress`), след това пусни `GetMain\GetMainInfo.exe` – той презаписва `Client\Data\SPK\ConnectIP.bmd` и `ServerData.bmd`.

### Смяна на .exe (GameServer.exe / Engine.exe)

Новите билдове са описани в `CHANGELOG.md` заедно с техния SHA256.
1. Спри сървъра (затвори прозореца на GameServer) / затвори играта.
2. Запази копие на стария файл (напр. `GameServer.exe.old`).
3. Копирай новия файл върху стария:
   - гейм сървър → `MuServer\4.MuServer\Test-1\GameServer\GameServerTest.exe` (и/или `GameServer.exe`)
   - клиент → `Client\Engine.exe`
4. Ако си сменил `Engine.exe`, пусни отново `GetMain\GetMainInfo.exe` (записва CRC на клиента).
5. Пусни отново сървъра / играта.

### Бележки
- Логовете, истинските акаунти и личните адреси са премахнати. Паролите на ботовете в `AutoTrain.xml` са примерни (`bot123`), GM списъкът (`Data\Util\GameMaster.xml`) има един примерен `admin` – сложи там своите акаунти.
- MU Online е търговска марка на Webzen Inc. Пакетът е некомерсиален хоби проект за тестове и обучение.
