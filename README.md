# AvroraMU – Server + Client (Season 6 Ep. 5.2)

**[English](#english) | [Български](#български)**

---

## English

A complete MU Online Season 6 server with its game client and all AvroraMU custom content: new maps, wings, mounts, jewels, mixes and invasions.
Everything is already configured for **one PC (127.0.0.1)**. Nothing needs to be copied or replaced by hand.

### Start in 4 steps

1. Install **SQL Server Express** (free): https://www.microsoft.com/sql-server/sql-server-downloads. If you already have SQL Server, skip this step.
2. Run **`SETUP-DATABASE.bat`** (it asks for Administrator rights once). It creates the database `SPK5.2` and the ODBC connection `SPK5.2`.
3. Run **`START-SERVER.bat`** and wait until the GameServer window has finished loading.
4. Run **`START-GAME.bat`** and log in with **`test`** / **`test123`**.

### Updating
Download the newest version of this repository (**Code → Download ZIP**, or `git pull`). Every file, `.exe` included, is already up to date. The database stays as it is. `CHANGELOG.md` lists what is new.

### Folders

| Folder | What it is |
|---|---|
| `MuServer\1.ConnectServer` | Server list |
| `MuServer\2.DataServer`, `3.JoinServer` | Database + login servers |
| `MuServer\4.MuServer\Test-1` | The game server (all new content) |
| `MuServer\5.AntiServer` | Anti-hack server |
| `Client` | Game client |
| `GetMain` | Source settings of the client (do not run `GetMainInfo.exe`, see below) |
| `Database` | Database script + setup script |
| `Scripts` | `set-ip.ps1` (used by `SET-IP.bat`) |

### Hosting for other players (LAN / internet) – one click
1. Run **`SET-IP.bat`**. It shows a menu:
   - `127.0.0.1`: only this PC;
   - your **LAN** IP(s): players in your home network;
   - your **public** IP: players over the internet (found automatically);
   - or any IP you type.

   It writes the IP everywhere it is needed: the server list, the map server, the client (`Client\Data\SPK\ConnectIP.bmd`) and the launcher. It also opens the ports in Windows Firewall (44495/TCP, 55562/UDP, 56132/TCP).
2. For the internet, forward the same 3 ports on your router to this PC.
3. Restart the servers (`START-SERVER.bat`) and give the players the **`Client`** folder. It already connects to your IP.

Without the menu: `SET-IP.bat 192.168.1.50`. To go back: `SET-IP.bat 127.0.0.1`.

> Do **not** run `GetMain\GetMainInfo.exe`. It rebuilds `ServerData.bmd` from the older files in `GetMain\Data` and would remove custom items from the client. `SET-IP.bat` is all you need.

### Notes
- **Game Masters:** add your accounts to `MuServer\4.MuServer\Test-1\Data\Util\GameMaster.xml`.
- **Other accounts:** create them in the table `MEMB_INFO`, with the same columns as `test`.
- MU Online is a trademark of Webzen Inc. This is a non-commercial hobby project for testing and learning.

---

## Български

Пълен MU Online Season 6 сървър с клиент и всички AvroraMU добавки: нови карти, крила, маунти, бижута, миксове и инвазии.
Всичко е настроено за **един компютър (127.0.0.1)**. Нищо не се копира и не се заменя ръчно.

### Пускане в 4 стъпки

1. Инсталирай **SQL Server Express** (безплатен): https://www.microsoft.com/sql-server/sql-server-downloads. Ако вече имаш SQL Server, пропусни тази стъпка.
2. Пусни **`SETUP-DATABASE.bat`** (веднъж пита за администраторски права). Той създава базата `SPK5.2` и ODBC връзката `SPK5.2`.
3. Пусни **`START-SERVER.bat`** и изчакай прозорецът на GameServer да зареди.
4. Пусни **`START-GAME.bat`** и влез с **`test`** / **`test123`**.

### Обновяване
Свали най-новата версия на това репо (**Code → Download ZIP** или `git pull`). Всички файлове, включително `.exe`, вече са обновени. Базата остава същата. В `CHANGELOG.md` пише какво е новото.

### Папки

| Папка | Какво е |
|---|---|
| `MuServer\1.ConnectServer` | Списък сървъри |
| `MuServer\2.DataServer`, `3.JoinServer` | База данни + вход |
| `MuServer\4.MuServer\Test-1` | Гейм сървърът (всички нови неща) |
| `MuServer\5.AntiServer` | Анти-хак сървър |
| `Client` | Клиентът |
| `GetMain` | Изходни настройки на клиента (не пускай `GetMainInfo.exe`, виж по-долу) |
| `Database` | Скрипт за базата + скрипт за настройка |
| `Scripts` | `set-ip.ps1` (ползва се от `SET-IP.bat`) |

### Сървър за други играчи (LAN / интернет) – с един клик
1. Пусни **`SET-IP.bat`**. Показва меню:
   - `127.0.0.1`: само този компютър;
   - твоето **LAN** IP: играчи в домашната мрежа;
   - твоето **публично** IP: играчи през интернет (намира го само);
   - или IP, което въвеждаш.

   Записва IP-то навсякъде, където трябва: списъка сървъри, мап сървъра, клиента (`Client\Data\SPK\ConnectIP.bmd`) и лаунчера. Отваря и портовете в Windows Firewall (44495/TCP, 55562/UDP, 56132/TCP).
2. За интернет пренасочи същите 3 порта в рутера към този компютър.
3. Рестартирай сървърите (`START-SERVER.bat`) и дай на играчите папка **`Client`**. Тя вече се свързва към твоето IP.

Без меню: `SET-IP.bat 192.168.1.50`. За връщане: `SET-IP.bat 127.0.0.1`.

> **Не** пускай `GetMain\GetMainInfo.exe`. Той създава наново `ServerData.bmd` от по-старите файлове в `GetMain\Data` и ще махне новите предмети от клиента. `SET-IP.bat` е достатъчен.

### Бележки
- **Гейм мастъри:** добави своите акаунти в `MuServer\4.MuServer\Test-1\Data\Util\GameMaster.xml`.
- **Други акаунти:** създават се в таблицата `MEMB_INFO`, със същите колони като `test`.
- MU Online е търговска марка на Webzen Inc. Това е некомерсиален хоби проект за тестове и обучение.
