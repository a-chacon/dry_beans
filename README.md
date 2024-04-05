# DRY BEANS

Aplicacación **dry beans** desarrollada según las indicaciones del desafio que se me envio por correo electronico.

**Los comentarios sobre cada campo se encuentran definidos en cada modelo.**

## Seed Data

Les recomiendo que generen datos de prueba utilizando los metodos de `factory_bot` de la siguiente manera:

1. Entrar a la consola de Rails: 

```bash
rails c
```

2. Crear la cantidad de rutas deseadas con el siguiente comando: 

```ruby
FactoryBot.create(:route_with_trips)
```

## Tests

Existen 4 tests que pueden ejecutar simplemente con `rails t`.
