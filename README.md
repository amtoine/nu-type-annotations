# nu-type-annotations
A study on the type annotation system of nushell.

## run the module
```nushell
use types.nu
types run
```

> **Warning**
> there will be a lot of errors thrown in the terminal, that's normal!

## the results
| value                     | f-bool | f-int | f-float | f-number | f-filesize | f-duration | f-date | f-range | f-string | f-record | f-list | f-block | f-closure | f-nothing | f-binary | f-cellpath | f-fullcellpath | f-any | f-none | type      |
| ------------------------- | ------ | ----- | ------- | -------- | ---------- | ---------- | ------ | ------- | -------- | -------- | ------ | ------- | --------- | --------- | -------- | ---------- | -------------- | ----- | ------ | --------- |
| true                      | true   | false | false   | false    | false      | false      | false  | false   | false    | false    | false  | false   | false     | false     | false    | false      | false          | true  | true   | bool      |
| 123                       | false  | true  | true    | true     | false      | false      | false  | false   | true     | false    | false  | false   | false     | false     | false    | true       | false          | true  | true   | int       |
| 3.14                      | false  | false | true    | true     | false      | false      | false  | false   | true     | false    | false  | false   | false     | false     | false    | true       | false          | true  | true   | float     |
| 10Mb                      | false  | false | false   | false    | true       | false      | false  | false   | true     | false    | false  | false   | false     | false     | false    | true       | false          | true  | true   | filesize  |
| 10us                      | false  | false | false   | false    | false      | true       | false  | false   | true     | false    | false  | false   | false     | false     | false    | true       | false          | true  | true   | duration  |
| 2019-05-10T09:59:12-07:00 | false  | false | false   | false    | false      | false      | true   | false   | true     | false    | false  | false   | false     | false     | false    | true       | false          | true  | true   | date      |
| 1..10                     | false  | false | false   | false    | false      | false      | false  | true    | true     | false    | false  | false   | false     | false     | false    | false      | false          | true  | true   | range     |
| 'string'                  | false  | false | false   | false    | false      | false      | false  | false   | true     | false    | false  | false   | false     | false     | false    | true       | false          | true  | true   | string    |
| {}                        | true   | true  | true    | true     | true       | true       | true   | true    | true     | true     | true   | true    | true      | true      | true     | true       | true           | true  | true   | record    |
| []                        | false  | false | false   | false    | false      | false      | false  | false   | false    | false    | true   | false   | false     | false     | false    | false      | false          | true  | true   | list<any> |
| {\|\|}                      | false  | false | false   | false    | false      | false      | false  | true    | false    | false    | false  | false   | true      | true      | false    | true       | true           | true  | true   | closure   |
| $nothing                  | false  | false | false   | false    | false      | false      | false  | true    | false    | false    | false  | false   | false     | true      | false    | true       | true           | true  | true   | nothing   |
| 0b01101001                | false  | true  | false   | true     | false      | false      | false  | false   | true     | false    | false  | false   | false     | false     | false    | true       | false          | true  | true   | int       |
| $.a.b.c.0                 | false  | false | false   | false    | false      | false      | false  | true    | false    | false    | false  | false   | false     | true      | false    | true       | true           | true  | true   | cell path |
