{
  plugins = {
    lazygit = {
      enable = true;
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>G";
      action = "<cmd>LazyGit<CR>";
      options = {
        desc = "Lazygit";
        silent = true;
      };
    }
  ];
}
