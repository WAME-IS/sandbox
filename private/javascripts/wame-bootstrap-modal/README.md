# Bootstrap modal

* povoľuje otvárať odkazy v modálnych oknách
* rieši automatické nastavenie `@modalLayout.latte` pri ajaxovom požiadavku inak načíta odkaz v normálnom `@layout.latte`
* rieši inicializáciu `live-form-validation.js` formulárov v modálnom okne
* je možné v modálnom okne pridať aj ďalšie odkazy na iné modálne okno
* 3 veľkosti modálnych okien
* do modálneho okna sa načíta všetko z `{block content}` v `.latte` súbore na danej adrese

## Použitie
odkazu pridáme class `ajax-modal`

```
<a class="btn btn-success ajax-modal" href="{plink :Admin:State:create, 'id' => null}">
    <span class="fa fa-plus"></span>
    {_'Add state'}
</a>
```

### Veľkosti okien

je možné otvoriť aj malé modálne okno pridaním classy `ajax-modal-sm`

```
<a class="ajax-modal ajax-modal-sm" href="{plink :User:Sign:in}">{_'Prihlásenie'}</a>
```

alebo veľké `ajax-modal-lg`

```
<a class="ajax-modal ajax-modal-lg" href="{plink :File:Image:show, 't' => '585874225'}">
    <img src="{$basePath}/images/none.png" alt="{_'altertnatívny názov obrázka'}">
</a>
```

### Zavretie okna

Odkazom na zavretie modálneho okna napr. Cancel button pridáme data atribút `data-dismiss="modal"`
to zaručí, že okno sa zavrie a neprebehne redirect na danú adresu
ak by bol odkaz otvorený bez ajaxu tak prebehne redirect normálne

```
<a class="btn btn-default" n:href=":Admin:State:, 'id' => $state->getId()" data-dismiss="modal">
    {_'Cancel'}
</a>
```

### Odosielacie tlačidlo

Submit tlačidlám napr. na odstránenie položky alebo na odoslanie formulára môžeme pridať data atribút `data-submit="modal"`
ktorý nám prekryje okno overlay vrstvou s loaderom. Ak sa jedná o formulár kontroluje či je validný.
Ak sa vo formulári nachádza class `.has-error` tak overlay nezobrazí

```
<a class="btn btn-danger" n:href="ShopProductSet:delete" data-submit="modal">
    <span class="fa fa-trash-o"></span>
    {_'Delete'}
</a>
```
alebo
```
<div class="form-group">
    <input class="btn btn-success" n:name="submit" data-submit="modal"> 
</div>
```