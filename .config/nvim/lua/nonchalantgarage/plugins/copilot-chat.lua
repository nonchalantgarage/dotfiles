return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    dependencies = {
      { "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
      { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
    },
    build = "make tiktoken", -- Only on MacOS or Linux
    opts = {
      debug = true, -- Enable debugging
      -- See Configuration section for rest
    },
    cmd = "CopilotChat",
    keys = {
      { "<leader>cw", "<cmd>CopilotChatToggle<CR>", desc = "Explain active selection" },
      { "<leader>ce", "<cmd>CopilotChatExplain<CR>", desc = "Explain active selection" },
      { "<leader>cr", "<cmd>CopilotChatReview<CR>", desc = "Review selected code" },
      { "<leader>cf", "<cmd>CopilotChatFix<CR>", desc = "Fix selected code" },
      { "<leader>co", "<cmd>CopilotChatOptimize<CR>", desc = "Optimize selected code" },
      { "<leader>cd", "<cmd>CopilotChatDocs<CR>", desc = "Add documentation for selection" },
      { "<leader>ct", "<cmd>CopilotChatTests<CR>", desc = "Generate tests for selected code" },
      { "<leader>cx", "<cmd>CopilotChatFixDiagnostic<CR>", desc = "Fix diagnostic issue in file" },

      -- Visual mode mappings
      { "<leader>cw", "<cmd>CopilotChatToggle<CR>", mode = "v", desc = "Toggle Copilot Chat in visual mode" },
      { "<leader>ce", "<cmd>CopilotChatExplain<CR>", mode = "v", desc = "Explain active selection in visual mode" },
      { "<leader>cr", "<cmd>CopilotChatReview<CR>", mode = "v", desc = "Review selected code in visual mode" },
      { "<leader>cf", "<cmd>CopilotChatFix<CR>", mode = "v", desc = "Fix selected code in visual mode" },
      { "<leader>co", "<cmd>CopilotChatOptimize<CR>", mode = "v", desc = "Optimize selected code in visual mode" },
      { "<leader>cd", "<cmd>CopilotChatDocs<CR>", mode = "v", desc = "Add documentation for selection in visual mode" },
      {
        "<leader>ct",
        "<cmd>CopilotChatTests<CR>",
        mode = "v",
        desc = "Generate tests for selected code in visual mode",
      },
      {
        "<leader>cx",
        "<cmd>CopilotChatFixDiagnostic<CR>",
        mode = "v",
        desc = "Fix diagnostic issue in file in visual mode",
      },
      {
        "<leader>ccq",
        function()
          local input = vim.fn.input("Quick Chat: ")
          if input ~= "" then
            require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
          end
        end,
        desc = "CopilotChat - Quick chat",
      },
    },
  },
}
