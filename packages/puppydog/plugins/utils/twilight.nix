{
  plugins.twilight = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>uT";
      action = "<cmd>twilight<CR>";
      options = {
        desc = "Toggle Twilight";
      };
    }
  ];
}
