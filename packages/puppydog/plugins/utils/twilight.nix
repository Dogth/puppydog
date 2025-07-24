{
  plugins.twilight = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>uT";
      action = "<cmd>Twilight<CR>";
      options = {
        desc = "Toggle Twilight";
      };
    }
  ];
}
