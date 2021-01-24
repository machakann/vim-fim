vim-fim
=======

"f" imitated; not improved.

## What is this?

This is a kind of practice or an example of user-defined motion accepting user input.
It aims at replicating Vim's default `f` command.
Currently, this motion is implemented with the features below.

 - Motion command in normal mode with [count]
 - Motion command in visual mode with [count]
 - Motion command in operator-pending mode with [count]
    * Characterwise (inclusive)
 - Dot-repeat support (`:help single-repeat`)
    * Do not ask for a user input with `.` command, just use the last character input

## Usage

Install the plugin and add the following line in your vimrc.

```vim
map <space>f <Plug>(fim)
```

## Contents

There are several implementations included.

 - Incomplete key mappings only for operator-pending mode
    * `<Plug>(fim-trial01)`
    * `<Plug>(fim-trial02)`
    * `<Plug>(fim-trial03)`
    * `<Plug>(fim-trial04)`
    * `<Plug>(fim-trial05)`

 - Complete key mappings only for operator-pending mode
    * `<Plug>(fim-trial06)`
    * `<Plug>(fim-trial07)`

 - Complete key mappings for normal, visual, and operator-pending mode
    * `<Plug>(fim)`

The third column and later are for operator-pending mode key mappings.

|key          |normal |visual |inclusive |cancel |cancel with . | remember the last inpur for .| note                   |
|:------------|:-----:|:-----:|:--------:|:-----:|:------------:|:----------------------------:|:----------------------:|
|`fim-trial01`|       |       |          |   ✓   |      ✓       |                              |                        |
|`fim-trial02`|       |       |    ✓     |       |              |                              |                        |
|`fim-trial03`|       |       |    ✓     |   ✓   |              |               ✓              |                        |
|`fim-trial04`|       |       |    ✓     |   ✓   |      ✓       |                              |No outlook for linewise |
|`fim-trial05`|       |       |    ✓     |   ✓   |      ✓       |                              |                        |
|`fim-trial06`|       |       |    ✓     |   ✓   |      ✓       |               ✓              |                        |
|`fim-trial07`|       |       |    ✓     |   ✓   |      ✓       |               ✓              |                        |
|`fim        `|   ✓   |   ✓   |    ✓     |   ✓   |      ✓       |               ✓              |                        |

The `fim` mapping is forked from `fim-trial06`.

## Known issues

 - Those key mappings do not abort macro execution (`:help complex-repeat`) even if the motion failed to move the cursor.
 - Those key mappings may not work well with multibyte characters.
