{
  plugins = {
    trouble = {
      enable = true;
      settings = {
        auto_close = true;
      };
    };

    which-key.settings.spec = [
      {
        __unkeyed = "<leader>t";
        mode = "n";
        group = "Trouble";
      }
    ];
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>tq";
      action = "+diagnostics/quickfix";
    }
    {
      mode = "n";
      key = "<leader>tl";
      action = "<cmd>Trouble loclist toggle<CR>";
      options = {
        desc = "Toggle location list";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>tq";
      action = "<cmd>Trouble qflist toggle<CR>";
      options = {
        desc = "Toggle quickfix list";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>td";
      action = "<cmd>Trouble preview_split toggle<CR>";
      options = {
        desc = "Toggle diagnostics";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>tD";
      action = "<cmd>Trouble preview_split toggle filter.buf=0<CR>";
      options = {
        desc = "Toggle buffer diagnostics";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>tl";
      action = "<cmd>Trouble lsp toggle<CR>";
      options = {
        desc = "Toggle LSP definitions";
        silent = true;
      };
    }
  ];
}
