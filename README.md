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
| true                      | :green_circle:   | :red_circle: | :red_circle:   | :red_circle:    | :red_circle:      | :red_circle:      | :red_circle:  | :red_circle:   | :red_circle:    | :red_circle:    | :red_circle:  | :red_circle:   | :red_circle:     | :red_circle:     | :red_circle:    | :red_circle:      | :red_circle:          | :green_circle:  | :green_circle:   | bool      |
| 123                       | :red_circle:  | :green_circle:  | :green_circle:    | :green_circle:     | :red_circle:      | :red_circle:      | :red_circle:  | :red_circle:   | :green_circle:     | :red_circle:    | :red_circle:  | :red_circle:   | :red_circle:     | :red_circle:     | :red_circle:    | :green_circle:       | :red_circle:          | :green_circle:  | :green_circle:   | int       |
| 3.14                      | :red_circle:  | :red_circle: | :green_circle:    | :green_circle:     | :red_circle:      | :red_circle:      | :red_circle:  | :red_circle:   | :green_circle:     | :red_circle:    | :red_circle:  | :red_circle:   | :red_circle:     | :red_circle:     | :red_circle:    | :green_circle:       | :red_circle:          | :green_circle:  | :green_circle:   | float     |
| 10Mb                      | :red_circle:  | :red_circle: | :red_circle:   | :red_circle:    | :green_circle:       | :red_circle:      | :red_circle:  | :red_circle:   | :green_circle:     | :red_circle:    | :red_circle:  | :red_circle:   | :red_circle:     | :red_circle:     | :red_circle:    | :green_circle:       | :red_circle:          | :green_circle:  | :green_circle:   | filesize  |
| 10us                      | :red_circle:  | :red_circle: | :red_circle:   | :red_circle:    | :red_circle:      | :green_circle:       | :red_circle:  | :red_circle:   | :green_circle:     | :red_circle:    | :red_circle:  | :red_circle:   | :red_circle:     | :red_circle:     | :red_circle:    | :green_circle:       | :red_circle:          | :green_circle:  | :green_circle:   | duration  |
| 2019-05-10T09:59:12-07:00 | :red_circle:  | :red_circle: | :red_circle:   | :red_circle:    | :red_circle:      | :red_circle:      | :green_circle:   | :red_circle:   | :green_circle:     | :red_circle:    | :red_circle:  | :red_circle:   | :red_circle:     | :red_circle:     | :red_circle:    | :green_circle:       | :red_circle:          | :green_circle:  | :green_circle:   | date      |
| 1..10                     | :red_circle:  | :red_circle: | :red_circle:   | :red_circle:    | :red_circle:      | :red_circle:      | :red_circle:  | :green_circle:    | :green_circle:     | :red_circle:    | :red_circle:  | :red_circle:   | :red_circle:     | :red_circle:     | :red_circle:    | :red_circle:      | :red_circle:          | :green_circle:  | :green_circle:   | range     |
| 'string'                  | :red_circle:  | :red_circle: | :red_circle:   | :red_circle:    | :red_circle:      | :red_circle:      | :red_circle:  | :red_circle:   | :green_circle:     | :red_circle:    | :red_circle:  | :red_circle:   | :red_circle:     | :red_circle:     | :red_circle:    | :green_circle:       | :red_circle:          | :green_circle:  | :green_circle:   | string    |
| {}                        | :green_circle:   | :green_circle:  | :green_circle:    | :green_circle:     | :green_circle:       | :green_circle:       | :green_circle:   | :green_circle:    | :green_circle:     | :green_circle:     | :green_circle:   | :green_circle:    | :green_circle:      | :green_circle:      | :green_circle:     | :green_circle:       | :green_circle:           | :green_circle:  | :green_circle:   | record    |
| []                        | :red_circle:  | :red_circle: | :red_circle:   | :red_circle:    | :red_circle:      | :red_circle:      | :red_circle:  | :red_circle:   | :red_circle:    | :red_circle:    | :green_circle:   | :red_circle:   | :red_circle:     | :red_circle:     | :red_circle:    | :red_circle:      | :red_circle:          | :green_circle:  | :green_circle:   | list<any> |
| {\|\|}                      | :red_circle:  | :red_circle: | :red_circle:   | :red_circle:    | :red_circle:      | :red_circle:      | :red_circle:  | :green_circle:    | :red_circle:    | :red_circle:    | :red_circle:  | :red_circle:   | :green_circle:      | :green_circle:      | :red_circle:    | :green_circle:       | :green_circle:           | :green_circle:  | :green_circle:   | closure   |
| $nothing                  | :red_circle:  | :red_circle: | :red_circle:   | :red_circle:    | :red_circle:      | :red_circle:      | :red_circle:  | :green_circle:    | :red_circle:    | :red_circle:    | :red_circle:  | :red_circle:   | :red_circle:     | :green_circle:      | :red_circle:    | :green_circle:       | :green_circle:           | :green_circle:  | :green_circle:   | nothing   |
| 0b01101001                | :red_circle:  | :green_circle:  | :red_circle:   | :green_circle:     | :red_circle:      | :red_circle:      | :red_circle:  | :red_circle:   | :green_circle:     | :red_circle:    | :red_circle:  | :red_circle:   | :red_circle:     | :red_circle:     | :red_circle:    | :green_circle:       | :red_circle:          | :green_circle:  | :green_circle:   | int       |
| $.a.b.c.0                 | :red_circle:  | :red_circle: | :red_circle:   | :red_circle:    | :red_circle:      | :red_circle:      | :red_circle:  | :green_circle:    | :red_circle:    | :red_circle:    | :red_circle:  | :red_circle:   | :red_circle:     | :green_circle:      | :red_circle:    | :green_circle:       | :green_circle:           | :green_circle:  | :green_circle:   | cell path |

> **Note**
> generated with
> ```nushell
> types run
> | to md --pretty
> | str replace --all "false" ":red_circle:"
> | str replace --all "true" ":green_circle:"
> ````
> and manually fixing the "true" and "{\|\|}" values
