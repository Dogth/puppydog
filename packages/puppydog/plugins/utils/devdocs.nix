{
  plugins = {
    devdocs = {
      enable = true;
      settings.ensure_installed = [
        "cpp"
        "c"
        "cmake"
      ];
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>ud";
      action = "<cmd>DevDocs get<CR>";
      options = {
        desc = "Open DevDocs";
        silent = true;
      };
    }
  ];

}
