# WAME IS - sandbox

[TOC]

## Inštalácia

1. Nainštalujeme si všetky závislosti
    ```
    composer install
    ```
2. Premažeme temp priečinok 
    ```
    composer clear
    ```
3. Nainštalujeme NPM závislosti
    ```
    npm install
    ```
4. Stiahneme componenty cez Bower
    ```
    bower install
    ```
5. Spustíme Gulp úlohy
    ```
    gulp
    ```
6. Vygenerujeme si schému databázy
    ```
    php web/index.php orm:schema-tool:create
    ```
7. Vygenerujeme si defaultne routy
    ```
    php web/index.php router:update-default-routes
    ```
8. Prenesieme migrácie zo všetkých modulov do hlavnej zložky
    ```
    php web/index.php migrations:collect
    ```
9. Spustíme migrácie
    ```
    php web/index.php migrations:continue
    ```
10. Vytvoríme defaultné pozície a componenty
    ```
    composer wame:component:update
    ```

## Vytvorenie prvého užívateľa

Zaregistrujeme sa na stránke `<domain>/user/sign/up`
Ak chceme urobiť z prvého užívateľa administrátora tak v tabuľke `wame_user` prepíšeme v stĺpci `role` na hodnotu `admin`.
Potom už budeme po prihlásení presmerovaný do administrácie `<domain>/admin` a všetky ďalšie úkony už môžeme robiť priamo tam.
