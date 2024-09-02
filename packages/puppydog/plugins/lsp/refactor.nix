{
  plugins.refactoring = {
    enable = true;
  };

  plugins.which-key.settings.spec = [
    {
      __unkeyed = "<leader>R";
      mode = "x";
      group = "Refactoring";
    }
  ];

  keymaps = [
    {
      mode = "x";
      key = "<leader>Rx";
      action = "<cmd>Refactor extract";
      options = {
        desc = "Extract function or variable";
        silent = true;
      };
    }
    {
      mode = "x";
      key = "<leader>Rf";
      action = "<cmd>Refactor extract_to_file";
    }
  ];
}
