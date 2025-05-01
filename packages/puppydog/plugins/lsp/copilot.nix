{
  plugins = {
    copilot-lua = {
      enable = true;
      settings = {
        panel.enabled = false;
        suggestion.enabled = false;
      };
    };

    copilot-chat = {
      enable = true;

      settings = {
        window = {
          layout = "float";
          relative = "cursor";
          width = 1;
          height = 0.5;
          row = 1;
        };
      };
    };

    which-key.settings.spec = [
      {
        __unkeyed = "<leader>a";
        group = "Copilot";
        icon = "";
      }
    ];
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>ac";
      action = "<cmd>CopilotChat<CR>";
      options = {
        desc = "Copilot Chat";
      };
    }
    {
      mode = "n";
      key = "<leader>aq";
      action.__raw = ''
        function()
          local input = vim.fn.input("Quick Chat: ")
          if input ~= "" then
            require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
          end
        end
      '';
      options = {
        desc = "Quick Chat";
      };
    }
    {
      mode = "n";
      key = "<leader>ah";
      action.__raw = ''
        function()
          local actions = require("CopilotChat.actions")
          require("CopilotChat.integrations.telescope").pick(actions.help_actions())
        end
      '';
      options = {
        desc = "Help Actions";
      };
    }
    {
      mode = "n";
      key = "<leader>ap";
      action.__raw = ''
        function()
          local actions = require("CopilotChat.actions")
          require("CopilotChat.integrations.telescope").pick(actions.prompt_actions())
        end
      '';
      options = {
        desc = "Prompt Actions";
      };
    }
  ];
}
