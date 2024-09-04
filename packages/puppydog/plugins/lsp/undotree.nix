{
  plugins.undotree = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>uu";
      action = "<cmd>UndotreeToggle<CR>";
      options = {
        desc = "Toggle Undotree";
        silent = true;
      };
    }
  ];
}
