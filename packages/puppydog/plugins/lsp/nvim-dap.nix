{
  plugins = {
    dap = {
      enable = true;
      extensions = {
        dap-ui = {
          enable = true;
        };
        dap-virtual-text = {
          enable = true;
        };
      };
    };

    which-key.settings.spec = [
      {
        __unkeyed = "<leader>d";
        mode = "n";
        desc = "Debug";
      }
    ];
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>db";
      action.__raw = ''
        function() require("dap").toggle_breakpoint() end
      '';
      options = {
        desc = "Toggle breakpoint";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>dc";
      action.__raw = ''
        function()
          require("dap").continue()
        end
      '';
      options = {
        desc = "Continue Debugging (Start)";
        silent = true;
      };
    }
    {
      mode = "v";
      key = "<leader>de";
      action.__raw = ''
        function() require("dapui").eval() end
      '';
      options = {
        desc = "Evaluate Input";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>de";
      action.__raw = ''
        function()
          vim.ui.input({ prompt = "Expression: " }, function(expr)
            if expr then require("dapui").eval(expr, { enter = true }) end
          end)
        end
      '';
      options = {
        desc = "Evaluate Input";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>dh";
      action.__raw = ''
        function() require("dap.ui.widgets").hover() end
      '';
      options = {
        desc = "Debugger Hover";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>do";
      action.__raw = ''
        function()
          require("dap").step_out()
        end
      '';
      options = {
        desc = "Step Out";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>ds";
      action.__raw = ''
        function()
          require("dap").step_over()
        end
      '';
      options = {
        desc = "Step Over";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>dS";
      action.__raw = ''
        function()
          require("dap").step_into()
        end
      '';
      options = {
        desc = "Step Into";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>dt";
      action.__raw = ''
        function() require("dap").terminate() end
      '';
      options = {
        desc = "Terminate Debugging";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>du";
      action.__raw = ''
        function()
          require('dap.ext.vscode').load_launchjs(nil, {})
          require("dapui").toggle()
        end
      '';
      options = {
        desc = "Toggle Debugger UI";
        silent = true;
      };
    }
  ];
}
