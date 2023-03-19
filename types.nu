export def f-bool [b: bool] {}
export def f-int [i: int] {}
export def f-float [f: float] {}
export def f-number [n: number] {}
export def f-filesize [f: filesize] {}
export def f-duration [d: duration] {}
export def f-date [d: datetime] {}
export def f-range [r: range] {}
export def f-string [s: string] {}
export def f-record [r: record] {}
export def f-list [l: list] {}
export def f-block [b: block] {}
export def f-closure [c: closure] {}
export def f-nothing [n: nothing] {}
export def f-binary [b: binary] {}
# Error
export def f-cellpath [c: cell-path] {}
export def f-fullcellpath [c: full-cell-path] {}

export def f-any [a: any] {}
export def f-none [x] {}

export def get_values [] { return [

    # add a new value inside quotes

    "true"
    "123"
    "3.14"
    "10Mb"
    "10us"
    "2019-05-10T09:59:12-07:00"
    "1..10"
    "'string'"
    "{}"
    "[]"
    "{||}"
    "$nothing"
    "0b01101001"
    "$.a.b.c.0"
]}

export def run [] {
    let commands = (
        $nu.scope.modules
        | where name == types
        | get 0.commands
        | where ($it | str starts-with "f-")
    )

    let report = (
        $commands
        | wrap name
        | upsert result {|command|
            get_values
            | wrap value
            | upsert type {|value|
                nu -c $"($value.value) | describe" | str trim
            }
            | upsert work {|value|
                try {
                    nu -c $"use types.nu ($command.name); ($command.name) ($value.value)"
                    true
                } catch { false }
            }
        }
        | flatten --all
        | rename command
    )

    $report
    | update value {|| get value | str join}
    | group-by value
    | transpose value rest
    | upsert type {|| get rest.type.0}
    | reject rest.value rest.type
    | update rest {|| get rest | transpose -r}
    | flatten --all
}
