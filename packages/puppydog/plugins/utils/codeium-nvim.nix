{ lib, pkgs, ... }:
{
  plugins.codeium-nvim = {
    enable = false;

    settings = {
      tools = {
        curl = lib.getExe pkgs.curl;
        gzip = lib.getExe pkgs.gzip;
        uname = lib.getExe' pkgs.coreutils "uname";
        uuidgen = lib.getExe' pkgs.coreutils "uuidgen";
      };

      enable_chat = true;
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>C";
      action = "<cmd>Codeium Chat<CR>";
      options = {
        silent = true;
        desc = "Open codeium chat";
      };
    }
  ];
}
