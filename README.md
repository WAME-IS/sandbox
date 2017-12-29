# WAME IS - sandbox

[TOC]

## Inštalácia

1. Stiahnime si projekt
    ```
    composer create-project wameis/sandbox:dev-master <project-name>
    ```
2. Nainštalujeme si všetky závislosti
    ```
    composer install
    ```
3. Premažeme temp priečinok 
    ```
    composer clear
    ```
4. Nainštalujeme NPM závislosti
    ```
    npm install
    ```
5. Stiahneme componenty cez Bower
    ```
    bower install
    ```
6. Spustíme Gulp úlohy
    ```
    gulp
    ```
7. Vygenerujeme si schému databázy
    ```
    php web/index.php orm:schema-tool:create
    ```
8. Vygenerujeme si defaultne routy
    ```
    php web/index.php router:update-default-routes
    ```
9. Prenesieme migrácie zo všetkých modulov do hlavnej zložky
    ```
    php web/index.php migrations:collect
    ```
10. Spustíme migrácie
    ```
    php web/index.php migrations:continue
    ```
11. Vytvoríme defaultné pozície a componenty
    ```
    composer wame:component:update
    ```

## Vytvorenie prvého užívateľa

Zaregistrujeme sa na stránke `<domain>/user/sign/up`
Ak chceme urobiť z prvého užívateľa administrátora tak v tabuľke `wame_user` prepíšeme v stĺpci `role` na hodnotu `admin`.
Potom už budeme po prihlásení presmerovaný do administrácie `<domain>/admin` a všetky ďalšie úkony už môžeme robiť priamo tam.
