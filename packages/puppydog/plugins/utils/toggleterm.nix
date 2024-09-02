{
  plugins.toggleterm = {
    enable = true;
    settings = {
      direction = "float";
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>T";
      action = "<cmd>ToggleTerm<CR>";
      options = {
        desc = "Open terminal";
      };
    }
  ];
}
