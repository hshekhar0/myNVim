# Neovim Development Setup

This guide will help you set up **Neovim 0.11.0** for a complete development environment, with features such as syntax highlighting, auto-completion, linting, version control, and more.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Neovim Configuration](#neovim-configuration)
- [Plugins](#plugins)
- [Key Mappings](#key-mappings)
- [Additional Setup](#additional-setup)
- [Customization](#customization)
- [Troubleshooting](#troubleshooting)

## Prerequisites

1. **Neovim 0.11.0 or newer**  
   Ensure that you have Neovim installed on your system. You can check your version with the following command:
   ```bash
   nvim --version
   ```
2. **Curl **(for installing vim-plug plugin manager)
    Install curl if you haven't already:
    ```bash
    sudo apt install curl  # Ubuntu/Debian
    brew install curl      # macOS
    ```
## Installation

1. **Install Neovim**
    Follow the official [Neovim installation guide](https://neovim.io/) based on your operating system.

2. **Install vim-plug Plugin Manager for Neovim**
    To manage plugins, we'll use vim-plug. Install it with the following command:

   ```bash
   curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   ```
## Neovim Configuration
  1. Create or Edit `init.vim`
      Neovim uses the `init.vim` file for configuration, similar to Vim's `.vimrc`. Open your terminal and run:

     ```bash
     nvim ~/.config/nvim/init.vim
     ```
2. Copy and Paste the Configuration
    Paste the configuration into your `init.vim` file. This configuration includes essential settings, plugins, key mappings, and more.
    You can find the my `init.vim` file in this repo.
3. Save it and Close
   After pasting the configuration, save the file by typing:
   ```bash
   :wq
   ```
## Plugins

  This configuration includes the following plugins for various development needs:

  1. NERDTree: File explorer to navigate project files easily.

  2. CtrlP: Fuzzy file search to quickly find and open files.

  3. CoC.nvim: Powerful code completion engine with language server support.

  4. ALE: Asynchronous linting and error checking for various languages.

  5. Prettier: Code formatter for consistent formatting in languages like JavaScript, TypeScript, and more.

  6. vim-fugitive: Git integration to manage version control from within Neovim.

  7. UltiSnips: Snippet engine to insert reusable code snippets.

  8. vim-polyglot: Multi-language support for syntax highlighting.

  9. vimspector: Debugger integration (optional, requires additional setup).

**Install Plugins**

  Once your `init.vim` file is configured, install the plugins by running the following command in Neovim:

  ```bash
  PlugInstall
  ```
This will download and install all the plugins specified in the configuration file.

## Key Mappings

Here are some of the key mappings added for ease of use:

Save File: `Press leader + w` (default leader key is space) to save the current file.

Quit Neovim: `Press leader + q` to quit Neovim.

Save and Quit: `Press leader + wq` to save and quit.

Toggle NERDTree: `Press leader + n` to open/close the NERDTree file explorer.

Open Terminal: `Press leader + t` to open a terminal within Neovim.

Switch Tabs: `Press leader + h` and `leader + l` to switch between open tabs.


## Additional Setup

Install Prettier (for Code Formatting)
If you're using Prettier for formatting, you'll need to install it via npm:
```bash
npm install --save-dev prettier
```

Install Dependencies for CoC.nvim (Optional)
If you're using `CoC.nvim` for code completion, you might need to install the appropriate language servers. For example, for Python:
```bash
:CocInstall coc-python
```

## Customization
You can easily customize this setup further by adding more plugins, adjusting the key mappings, or changing any settings in the init.vim file. Check the plugin documentation for advanced configuration options.

Troubleshooting

Plugins Not Installing: If plugins aren’t installing with :PlugInstall, make sure vim-plug is installed correctly by checking the file path: `~/.local/share/nvim/site/autoload/plug.vim.`

CoC.nvim Not Working: If CoC doesn't provide code completion, ensure that the correct language server is installed for the language you're working with. Run `:CocList` to see the installed extensions.
