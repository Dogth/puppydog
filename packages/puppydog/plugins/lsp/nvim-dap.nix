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

    }
  ];
}
