# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

Personal Neovim configuration using **Lazy.nvim** as the plugin manager. Entry point is `init.lua` which requires `lua/danielr/init.lua`.

## Architecture

- `lua/danielr/init.lua` - Orchestrates loading of settings, remaps, and the plugin manager
- `lua/danielr/set.lua` - Global vim options (`vim.opt`)
- `lua/danielr/remap.lua` - Global keymaps
- `lua/danielr/lazy.lua` - Lazy.nvim bootstrap and configuration (leader = Space, localleader = Backslash)
- `lua/plugins/` - Plugin specs auto-discovered by Lazy via `{ import = "plugins" }`
- `lsp/` - Per-language-server config files (Neovim native LSP config pattern)
- `after/ftplugin/` - Per-filetype overrides (indentation, spell, etc.)

## Key Patterns

**Plugin specs** live in `lua/plugins/` as individual files returning Lazy.nvim spec tables. Keymaps are defined in each plugin's `keys` field with descriptions (integrates with which-key).

**LSP setup** uses mason-lspconfig (`lua/plugins/mason-lspconfig.lua`) to install and auto-enable servers. The `ensure_installed` list defines which servers Mason manages. `automatic_enable = true` calls `vim.lsp.enable()` for each, picking up configs from `lsp/<server_name>.lua`. Diagnostics and keymaps live in `lua/plugins/lspconfig.lua` via an `LspAttach` autocmd. Roslyn (C#) is managed separately by `lua/plugins/roslyn.lua`. To add a new LSP server: add it to `ensure_installed` in mason-lspconfig.lua and create `lsp/<name>.lua`.

**Filetype overrides** use `vim.opt_local` in `after/ftplugin/<filetype>.lua`. Default is 4-space indentation; TypeScript/JSON/Markdown use 2-space; Go uses tabs.

## Conventions

- Colorscheme: Catppuccin (frappe variant) with transparent backgrounds
- Rounded borders on floating windows
- 100-character color column
- Snacks.nvim provides pickers, explorer, notifications, and dashboard
- LSP servers are installed via Mason; mason-lspconfig bridges installation and configuration
