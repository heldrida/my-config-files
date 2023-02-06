# 🌈 Config files 🦄

The `~/.config` repository to keep track of the state of my system configuration and mainly customisation settings, which previously existed in separate repositories.

By migrating to new machines, found that it takes a bit too long to follow, as such using a monorepository to represent all seems more appropriate.

During the time of creation it was setup by:

- ZSH
- Antigen zsh package manager
- OMZ (although, not recommended by #zsh community)
- Starship.rs (shell prompt)

# Fonts

There's also detailed information about the fonts used, in the context of the terminal emulator Kitty which supports it.

# Get started

Check the separate repositories for more detailed setup information, e.g. Kitty requires the `kitty-themes` submodule which needs to be pulled or cloned manually.

The zsh profile is preferred to be symlinked for separation of concerns (as I'm tracking changes in the `.config` file and not in the $HOME directory, which usually is more cluttered with other system files)

```sh
ln -s .config/zsh/.zshrc ./.zshrc
```

