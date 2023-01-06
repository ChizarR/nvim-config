local status, tree = pcall(require, "nvim-tree")
if (not status) then return end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if (not config_status_ok) then return end

local tree_cb = nvim_tree_config.nvim_tree_callback


tree.setup{
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view = {
    -- width = 30,
    -- height = 30,
    hide_root_folder = false,
    side = "left",
    -- auto_resize = true,
    number = false,
    relativenumber = false,
  },
  renderer = {
    highlight_git = true,
    icons = {
      webdev_colors = false,
      git_placement = "before",
      padding = " ",
      symlink_arrow = " ➛ ",
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = false,
      }
    }
  }
}


local nvim_tree_events = require('nvim-tree.events')
local bufferline_api = require('bufferline.api')

local function get_tree_size()
  return require'nvim-tree.view'.View.width
end

nvim_tree_events.subscribe('TreeOpen', function()
  bufferline_api.set_offset(get_tree_size())
end)

nvim_tree_events.subscribe('Resize', function()
  bufferline_api.set_offset(get_tree_size())
end)

nvim_tree_events.subscribe('TreeClose', function()
  bufferline_api.set_offset(0)
end)
