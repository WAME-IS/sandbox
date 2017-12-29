# WAME IS - sandbox


## Inštalácia

1. Stiahnime si projekt
    ```
    composer create-project wameis/sandbox:dev-master <project-name>
    ```
2. Nainštalujeme si všetky závislosti
    ```
    composer install
    ```
    
## Príprava databazy

### Úprava konfiguračného súboru
Konfiguračný súbor **config.local.neon** obsahuje všetky potrebné konfiguračné nastavenia pre dané prostredie. Na localhoste bude súbor obsahovat iné údaje ako na produkčnom servery.

**Postup:**
- zduplikuje sa subor config.local.dist.neon, ktory sluzi ako predloha.
- upravy sa nazov zduplikovaneho suboru na config.local.neon
- vyplia sa potrebne pristupove a konfiguracne udaje

### Generovanie databazy 
1. Vygenerujeme si schému databázy
    ```
    php web/index.php orm:schema-tool:create
    ```
2. Vygenerujeme si defaultne routy
    ```
    php web/index.php router:update-default-routes
    ```
3. Spustíme migrácie
    ```
    php web/index.php migrations:continue
    ```
4. Vytvoríme defaultné pozície a componenty
    ```
    composer wame:component:update
    ```

## Vytvorenie prvého užívateľa

Zaregistrujeme sa na stránke `<domain>/user/sign/up`
Ak chceme urobiť z prvého užívateľa administrátora tak v tabuľke `wame_user` prepíšeme v stĺpci `role` na hodnotu `admin`.
Potom už budeme po prihlásení presmerovaný do administrácie `<domain>/admin` a všetky ďalšie úkony už môžeme robiť priamo tam.

## Licencia
GPL-3
