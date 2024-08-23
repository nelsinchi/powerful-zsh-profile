require('base')
require('highlights')
require('maps')

-- Sync the yanked text with the system clipboard, and vice versa
local has = function(x)
  return vim.fn.has(x) == 1
end

local is_linux = has "unix"
local is_mac = has "macunix"
local is_windows = has "win32"

if is_linux then
  require('linux')
end
if is_mac then
  require('macos')
end
if is_windows then
  require('windows')
end
