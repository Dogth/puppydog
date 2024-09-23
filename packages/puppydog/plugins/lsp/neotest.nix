{
  plugins = {
    neotest = {
      enable = true;
      adapters = {
        java = {
          enable = true;
        };
        gtest = {
          enable = true;
        };
      };
    };

    which-key.settings.spec = [
      {
        __unkeyed = "<leader>n";
        group = "Neotest";
      }
    ];
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>na";
      action = "<cmd>Neotest attach<CR>";
      options = {
        desc = "Attach Neotest";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>nO";
      action = "<cmd>Neotest output<CR>";
      options = {
        desc = "Toggle neotest output";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>no";
      action = "<cmd>Neotest output-panel<CR>";
      options = {
        desc = "Toggle Neotest output panel";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>nr";
      action = "<cmd>Neotest run<CR>";
      options = {
        desc = "Run nearest test";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>nh";
      action = "<cmd>Neotest stop<CR>";
      options = {
        desc = "Stop tests";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>ns";
      action = "<cmd>Neotest summary<CR>";
      options = {
        desc = "Toggle Neotest summary";
        silent = true;
      };
    }
  ];
}
