return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"rcarriga/nvim-dap-ui",
      "leoluz/nvim-dap-go",
		},
		config = function()
			local dap, dapui = require("dap"), require("dapui")
      dapui.setup()
      require("dap-go").setup()

      -- dap UI configuration
			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				dapui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close()
			end

			vim.keymap.set("n", "<leader>b", function()
				dap.toggle_breakpoint()
			end)
			vim.keymap.set("n", "<leader>B", function()
				dap.set_breakpoint()
			end)
			vim.keymap.set("n", "<leader>c", function()
				dap.continue()
			end)
		end,
	},
}
