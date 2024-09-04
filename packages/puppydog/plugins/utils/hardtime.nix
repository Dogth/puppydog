{
  plugins.hardtime = {
    enable = true;
    restrictionMode = "hint";
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>uH";
      action = "<cmd>Hardtime toggle<CMD>";
      options = {
        desc = "Toggle Hardtime";
        silent = true;
      };
    }
  ];
}
