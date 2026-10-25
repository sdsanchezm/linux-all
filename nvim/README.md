# neovim and lazy vim in linux

# Install

- install
    - `sudo dnf install neovim`

- path for config: `~/.config/nvim/init.vim` (**vim and nvim**)

## Lazyvim

- [docs](https://github.com/neovim/neovim/blob/master/INSTALL.md)

- Extract
    - `sudo tar -C /opt -xzf nvim-linux64.tar.gz`

- add to path
    - `export PATH="$PATH:/opt/nvim-linux64/bin"`

- validate version
    - `nvim -v`

- Install Fonts:
    - `cp *.*tf ~/.local/share/fonts`
    - `ls ~/.local/share/fonts`
    - `fc-cache -vf`

## default sudo editor

- Reload
    - `sudo update-alternatives --config editor`
- export the variable
    - `export SUDO_EDITOR=/usr/bin/vim`
- use the sudo editor
    - `sudoedit /etc/samba/smb.conf`

## documentation
  - [here](http://www.lazyvim.org/installation)
  - `mkdir ~/.config/nvim`
  - `git clone https://github.com/LazyVim/starter ~/.config/nvim`
  - `rm -rf ~/.config/.git`
  - `nvim`
  - [here 2](https://builtin.com/software-engineering-perspectives/neovim-configuration)


## edit multiple lines at once using Visual Block mode, Visual Line mode, or search and replace.

## 1. Add text to multiple lines (most useful)


To add `# ` at the beginning of all lines:

1. Move the cursor to the first line.
2. Press `Ctrl + v` to enter Visual Block mode.
3. Press `j` to select the lines below.
4. Press `I` (uppercase).
5. Type `# `.
6. Press `Esc`.

Vim applies the insertion to all selected lines.

## 2. Append text to multiple lines

To add text at the end of several lines:

1. Press `Ctrl + v`.
2. Select lines with `j` or `k`.
3. Press `$` to select through the line endings.
4. Press `A` (uppercase).
5. Type your text.
6. Press `Esc`.

## 3. Replace or delete multiple lines

- `V` — select whole lines.
- `j` / `k` — extend the selection.
- `d` — delete selected lines.
- `c` — replace selected lines with new text.
- `y` — copy selected lines.

## 4. Edit a specific range of lines with a command

Use `:` followed by a line range.

| Command | Action |
| --- | --- |
| `:5,10d` | Delete lines 5–10 |
| `:5,10s/foo/bar/g` | Replace `foo` with `bar` on lines 5–10 |
| `:5,10s/^/# /` | Comment out lines 5–10 |
| `:5,10s/$/ \\/` | Append a space and backslash to lines 5–10 |

## 5. Edit every matching line

For example, make every `FG_MAGENTA` assignment bold:

vim

```
:%s/FG_MAGENTA='\[\033\[35m\]'/FG_MAGENTA='\[\033[1;35m\]'/g
```

Alternatively, use a simpler substitution if you're replacing the ANSI color code elsewhere:

vim

```
:%s/35m/1;35m/g
```

Tip: In Vim and Neovim, `Esc` exits Visual mode, and `u` undoes your last change.

