return {
  "rmagatti/auto-session",
  config = function()
    local auto_session = require("auto-session")
 vim.o.sessionoptions = 'blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions'
    vim.keymap.set('n', '<leader>ss', require('auto-session.session-lens').search_session,{ desc = "Search sessions" })
    auto_session.setup({
      auto_restore_enabled = false,
      auto_save_enabled = true,
      auto_session_suppress_dirs = { "~/",} ,
      pre_save_cmds = { 'NvimTreeClose' },
      post_restore_cmds = { 'NvimTreeOpen' },
   --   auto_session_suppress_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/" },
    })

   local keymap = vim.keymap

    keymap.set("n", "<leader>sr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" }) -- restore last workspace session for current directory
   -- keymap.set("n", "<leader>ss", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory
  end,
}
