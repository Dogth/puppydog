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
      action = "<cmd>ToggleTerm dir=vertical<CR>";
      options = {
        desc = "Open terminal (vertically)";
      };
    }
    {
      mode = "n";
      key = "<leader>Th";
      action = "<cmd>ToggleTerm dir=horizontal<CR>";
      options = {
        desc = "Open terminal (horizontally)";
      };
    }
  ];
}
