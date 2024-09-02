{
  lib,
  pkgs,
  ...
}: {
  plugins.codeium-nvim = {
    enable = true;

    api.port = 443;

    extraOptions = {
      enable_chat = true;
    };
    tools = {
      curl = lib.getExe pkgs.curl;
      gzip = lib.getExe pkgs.gzip;
      uname = lib.getExe' pkgs.coreutils "uname";
      uuidgen = lib.getExe' pkgs.coreutils "uuidgen";
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>C";
      action = "<cmd>Codeium Chat<CR>";
      options = {
        silent = true;
        desc = "Open up codeium chat";
      };
    }
  ];
}
