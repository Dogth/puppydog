{pkgs, ...}: {
  extraPlugins = [pkgs.vimPlugins.precognition-nvim];

  keymaps = [
    {
      mode = "n";
      key = "<leader>up";
      action.__raw = ''
        function()
          if require("precognition").toggle() then
            vim.notify("Turned precognition on")
          else
            vim.notify("Turned precognition off")
          end
        end
      '';
      options = {
        silent = true;
        desc = "Toggle Precognition";
      };
    }
  ];
}
