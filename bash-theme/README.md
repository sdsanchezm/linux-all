# bash themes and details

In Bash `PS1`, the symbols `\u`, `\w`, and `\h` are prompt escape sequences. Bash automatically replaces them with information about your current session whenever it displays the prompt.

## 1. Common Bash prompt sequences

| Code | Meaning | Example output |
| --- | --- | --- |
| `\u` | Current username | `perruncho` |
| `\h` | Hostname (short) | `ubuntu` |
| `\H` | Full hostname | `ubuntu.localdomain` |
| `\w` | Current directory, with home abbreviated as `~` | `~/Projects/app` |
| `\W` | Current directory's basename only | `app` |
| `\$` | `#` for root, `$` for other users | `$` |
| `\s` | Shell name | `bash` |
| `\v` | Bash version | `5.2` |
| `\V` | Bash version and patch level | `5.2.21` |
| `\j` | Number of jobs managed by the shell | `0` |
| `\!` | History number of the current command | `125` |
| `\#` | Command number in the current shell | `42` |
| `\d` | Date in weekday, month, day format | `Sun Oct 25` |
| `\t` | Time in 24-hour format | `13:45:30` |
| `\T` | Time in 12-hour format | `01:45:30` |
| `\@` | Time in 12-hour AM/PM format | `01:45 PM` |
| `\A` | Time in 24-hour HH:MM format | `13:45` |
| `\n` | New line | Moves prompt to next line |
| `\r` | Carriage return | Moves cursor to line start |
| `\\` | Literal backslash | `\` |
| `\[` | Start of non-printing sequence | Used for colors |
| `\]` | End of non-printing sequence | Used for colors |

## 2. Examples using your prompt

Your existing prompt includes:

bash

```
PS1="${BG_WHITE}${FG_BLACK}[${FG_BLACK}\u]${RESET} ${WHITE}@ ${ORANGE}\h ${WHITE}in ${GREEN}\w${WHITE} \n\$ ${RESET}"
```

It displays something similar to:

\[perruncho\]

@

ubuntu

in

\~/Projects/app

$ \_

Here's what each part does:

- `\u` → `perruncho`
- `\h` → `ubuntu`
- `\w` → `~/Projects/app`
- `\n` → moves `$` onto a new line
- `\$` → displays `$` for a regular user or `#` for root

## 3. Useful combinations

### Show only the current folder

bash

```
PS1='\W \$ '
```

Example:

text

```
app $
```

### Show username, hostname, and directory

bash

```
PS1='\u@\h:\w\$ '
```

Example:

text

```
perruncho@leipzigpc:~/Projects/app$
```

### Show the current time

bash

```
PS1='[\A] \u@\h:\w\$ '
```

Example:

text

```
[13:45] perruncho@leipzigpc:~/Projects/app$
```

### Two-line prompt

bash

```
PS1='\u@\h \w\n\$ '
```

Example:

text

```
perruncho@leipzigpc ~/Projects/app
$
```

## 4. Important distinction: Bash vs. Oh My Bash vs. Oh My Posh

These are different prompt systems:

- Bash `PS1` uses escapes such as `\u`, `\h`, and `\w`.
- Oh My Bash can add variables and functions such as `$(scm_prompt_info)` to your prompt.
- Oh My Posh uses a JSON or TOML configuration with segments and template properties, such as `.UserName` and `.Path`.

Your pasted theme uses Bash `PS1` syntax and Oh My Bash helpers. So the Bash escape sequences above apply directly to it.

You can inspect Bash's own documentation with:

bash

```
man bash
```

# ANSI terminal colors follow a structure like this:

bash

```
'\[\033[1;33m\]'
```

Each part has a specific meaning. Once you understand it, you can create almost any color combination for your Bash prompt.

## 1. Understand the structure

`\[\033[1;33m\]`

`\[`

Bash prompt marker

Tells Bash that the following characters don't take up visible terminal space.

`\033`

Escape character

Starts an ANSI terminal control sequence. It is also written as `ESC` or `\e` in Bash.

`[1;33m`

Formatting instructions

`1` means bold/intense, and `33` means yellow foreground. The `m` ends the formatting command.

`\]`

End marker for Bash

Marks the end of the non-printing escape sequence for prompt-length calculations.

## 2. What do the color numbers mean?

ANSI uses numeric codes to select text colors and background colors.

### Foreground (text) colors

| Code | Color |
| --- | --- |
| `30` | Black |
| `31` | Red |
| `32` | Green |
| `33` | Yellow |
| `34` | Blue |
| `35` | Magenta |
| `36` | Cyan |
| `37` | White |
| `90`–`97` | Bright versions of the standard colors |

### Background colors

Background codes are generally the foreground codes plus `10`.

| Code | Background |
| --- | --- |
| `40` | Black |
| `41` | Red |
| `42` | Green |
| `43` | Yellow |
| `44` | Blue |
| `45` | Magenta |
| `46` | Cyan |
| `47` | White |
| `100`–`107` | Bright backgrounds |

For example:

bash

```
FG_RED='\[\033[31m\]'
BG_RED='\[\033[41m\]'

FG_YELLOW='\[\033[33m\]'
BG_YELLOW='\[\033[43m\]'

BG_YELLOW_LIGHT='\[\033[103m\]'
```

## 3. What does `1;33` mean?

You can combine multiple formatting codes by separating them with semicolons.

bash

```
\033[1;33m
```

- `1` = bold or increased intensity.
- `33` = yellow text.

Some useful formatting codes:

| Code | Meaning |
| --- | --- |
| `0` | Reset all formatting |
| `1` | Bold/intense |
| `2` | Dim |
| `3` | Italic (if supported) |
| `4` | Underline |
| `7` | Invert foreground and background |
| `22` | Disable bold/dim |
| `39` | Restore default foreground |
| `49` | Restore default background |

For example, bold red text:

bash

```
FG_RED_BOLD='\[\033[1;31m\]'
```

Bold white text on a blue background:

bash

```
WHITE_ON_BLUE='\[\033[1;37;44m\]'
```

## 4. What do the numbers `48;5;208` mean?

This is an extended ANSI color format that supports a 256-color palette.

bash

```
BG_ORANGE='\[\033[48;5;208m\]'
```

Breakdown:

- `48` = set the background color.
- `5` = use the 256-color palette.
- `208` = the selected color index (orange).

Similarly:

bash

```
FG_ORANGE='\[\033[38;5;208m\]'
BG_PURPLE='\[\033[48;5;141m\]'
```

Here, `38` sets the foreground, while `48` sets the background.

The 256-color palette has:

- `0–7`: standard colors.
- `8–15`: bright standard colors.
- `16–231`: a 6×6×6 RGB color cube.
- `232–255`: grayscale shades.

## 5. Create your own colors interactively

Choose a color type and generate the matching Bash variable syntax.

✓ Foreground  Background

standard Standard ANSI colors

256-color palette

ColorBlack

Red

Green

yellow Yellow

Blue

Magenta

Cyan

White

[x]Bold / bright

Generated Bash escape

\\\[\\033\[1;33m\\\]

Copy escape

One final tip: Always reset the formatting after each colored prompt section with `RESET='\[\033[0m\]'`. This prevents one section's colors from leaking into the next.

