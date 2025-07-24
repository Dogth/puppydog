{
  plugins = {
    lazygit = {
      enable = false;
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
