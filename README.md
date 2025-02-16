# Reality Project Web

Tento web byl vytvořen jako závěrečný projekt z programování na SSSVT na platformě ASP.NET.

## Popis projektu

Tématem je realitní web pro inzerci bytů, kde mohou prodávající vytvářet inzeráty a zákazníci na ně reagovat. Uživatelé mohou také kontaktovat prodávající přímo přes web. Design byl předem daný, ale bylo nutné ho napsat pomocí CSS.

Cílem projektu bylo prověřit a zlepšit znalosti:
- CSS (Bootstrap), HTML, JavaScript
- ASP.NET a C#
- MSSQL a Entity Frameworku

V projektu najdete:
- Základní operace CRUD pro uživatele a inzeráty
- Zabezpečení administračního panelu před zneužitím

---

## Procházení inzerátů

![Procházení inzerátů](Pics/ProhlizeniInzeratu.gif)

Všechny inzeráty jsou rozděleny do čtyř kategorií:
- Byty
- Luxusní
- Domy
- Chaty

V databázi jsou naimportována všechna česká města.

*(Web běžel na internetu nějakou dobu a kluci tam přidali náhodné obrázky, omluvte DuckDuckGo :D)*

### Komplexní vyhledávání

![Komplexní vyhledávání](Pics/KomplexniVyhledavani.png)

Web disponuje pokročilým vyhledáváním inzerátů podle různých parametrů.

---

## Administrace

### Přihlášení

![Přihlášení do administrace](Pics/LoginNaAdmina.png)

Po zadání `/admin` do URL se dostanete do administračního panelu.

### Administrační panel

![Administrační panel](Pics/adminPanel.png)

V administraci lze spravovat uživatele a inzeráty:
- **Admin** má přístup ke všem uživatelům, inzerátům a dotazům.
- **Prodávající** má přístup pouze ke svým inzerátům.

Domovská stránka administračního panelu měla obsahovat grafy, ale pravděpodobně nikdy nebude dokončena. :)

---

## Inzeráty

### Detail inzerátu

![Detail inzerátu](Pics/Parametry.gif)

Každý inzerát obsahuje následující informace:
- Počet zobrazení
- Cena
- Typ (Byty, Luxusní, Domy, Chaty)
- Velikost bytu, velikost zahrady
- Spotřeba elektřiny
- Fotky
- Dotazy
- Parametry, jejichž typy lze upravovat v administračním panelu

Lze vytvářet, editovat a mazat inzeráty.

### Úprava parametrů

![Úprava parametrů](Pics/EditaceParametru.gif)

Každý inzerát má vlastní parametry, jejichž typy lze editovat v administračním panelu.

---

## Uživatelé

![Správa uživatelů](Pics/EditAddUser.gif)

Existují tři typy uživatelů:
- **User** – běžný uživatel (potenciální zákazník) bez speciálních práv
- **Seller** – může vytvářet, editovat a mazat své inzeráty
- **Administrator** – má plná práva k administraci webu

Hesla jsou zabezpečena pomocí Bcrypt.

---

## Instalace

1) Naklonujte repozitář.
2) Vytvořte databázi pomocí `dbRealitkyWebZaloha.sql`.
3) Spusťte projekt.

### Přihlašovací údaje pro administraci:

- **Uživatelské jméno:** `jbohacek`
- **Heslo:** `andilek`

---

Tento projekt byl skvělou zkušeností s ASP.NET, databázemi a webovým vývojem. 😊
