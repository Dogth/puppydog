{
  plugins.neo-tree = {
    enable = true;
    sources = ["filesystem" "buffers" "git_status"];
    closeIfLastWindow = true;
    popupBorderStyle = "solid";
    enableGitStatus = true;
    window = {
      position = "right";
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>o";
      action = "<cmd>Neotree toggle<CR>";
      options = {
        silent = true;
        desc = "Toggle Neotree";
      };
    }
  ];
}
