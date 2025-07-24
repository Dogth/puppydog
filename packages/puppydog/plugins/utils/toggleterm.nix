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
      key = "<leader>Tf";
      action = "<cmd>ToggleTerm<CR>";
      options = {
        desc = "Open terminal (float)";
      };
    }
    {
      mode = "n";
      key = "<leader>Tv";
      action = "<cmd>ToggleTerm direction=vertical<CR>";
      options = {
        desc = "Open terminal (vertically)";
      };
    }
    {
      mode = "n";
      key = "<leader>Th";
      action = "<cmd>ToggleTerm direction=horizontal<CR>";
      options = {
        desc = "Open terminal (horizontally)";
      };
    }
  ];
}
