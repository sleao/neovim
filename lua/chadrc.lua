---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "sweetpastel",
  -- nvdash (dashboard)
}

M.nvdash = {
  load_on_startup = true,

  header = {
    "              !#########       #                 ",
    "            !########!          ##!              ",
    "         !########!               ###            ",
    "      !##########                  ####          ",
    "    ######### #####                ######        ",
    "     !###!      !####!              ######       ",
    "       !           #####            ######!      ",
    "                     !####!         #######      ",
    "                        #####       #######      ",
    "                          !####!   #######!      ",
    "                             ####!########       ",
    "          ##                   ##########        ",
    "        ,######!          !#############         ",
    "      ,#### ########################!####!       ",
    "    ,####'     ##################!'    #####     ",
    "  ,####'            #######              !####!  ",
    " ####'                                      #####",
    " ~##                                          ##~",
  },

  buttons = {
    { txt = "  Find File", keys = "Spc f f", cmd = "Telescope find_files" },
    { txt = "󰈚  Recent Files", keys = "Spc f o", cmd = "Telescope oldfiles" },
    { txt = "󰈭  Find Word", keys = "Spc f w", cmd = "Telescope live_grep" },
    { txt = "  Bookmarks", keys = "Spc m a", cmd = "Telescope marks" },
    { txt = "  Themes", keys = "Spc t h", cmd = "Telescope themes" },
    { txt = "  Mappings", keys = "Spc c h", cmd = "NvCheatsheet" },
  },
}

M.lsp = { signature = true }

M.term = {
  sizes = {
    vsp = 0.4,
  },
  cmd = "neofetch",
}

return M
