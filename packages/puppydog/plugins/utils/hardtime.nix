{
  plugins.hardtime = {
    enable = true;
    restrictionMode = "hint";
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>uh";
      action = "<cmd>Hardtime toggle<CR>";
      options = {
        desc = "Toggle Hardtime";
        silent = true;
      };
    }
  ];
}
