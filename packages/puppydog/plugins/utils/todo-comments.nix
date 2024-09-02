{
  plugins = {
    todo-comments = {
      enable = true;
    };

    which-key.settings.spec = [
      {
        __unkeyed = "<leader>R";
        group = "Todos";
      }
    ];
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>Rf";
      action = "<cmd>TodoTelescope<CR>";
      options = {
        desc = "Find todos";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>Rt";
      action = "<cmd>TodoTrouble<CR>";
      options = {
        desc = "Trouble todos";
        silent = true;
      };
    }
  ];
}
