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
| `GetMain` | `GetMainInfo.exe`: writes the client settings (IP, port…) into `Client\Data\SPK` |
| `Database` | Database script + setup script |

### Playing over LAN / internet (optional)
Replace `127.0.0.1` with your IP in:
- `MuServer\1.ConnectServer\ServerList.xml`
- `MuServer\4.MuServer\Test-1\Data\MapServerInfo.ini`
- `GetMain\GetEngine.ini` (`IpAddress`)

Then run `GetMain\GetMainInfo.exe`.

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
| `GetMain` | `GetMainInfo.exe`: записва настройките на клиента (IP, порт…) в `Client\Data\SPK` |
| `Database` | Скрипт за базата + скрипт за настройка |

### Игра в LAN / интернет (по желание)
Смени `127.0.0.1` с твоето IP в:
- `MuServer\1.ConnectServer\ServerList.xml`
- `MuServer\4.MuServer\Test-1\Data\MapServerInfo.ini`
- `GetMain\GetEngine.ini` (`IpAddress`)

След това пусни `GetMain\GetMainInfo.exe`.

### Бележки
- **Гейм мастъри:** добави своите акаунти в `MuServer\4.MuServer\Test-1\Data\Util\GameMaster.xml`.
- **Други акаунти:** създават се в таблицата `MEMB_INFO`, със същите колони като `test`.
- MU Online е търговска марка на Webzen Inc. Това е некомерсиален хоби проект за тестове и обучение.
