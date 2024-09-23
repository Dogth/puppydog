{
  lib,
  helpers,
  ...
}: {
  keymaps = let
    normal =
      lib.mapAttrsToList (key: {action, ...} @ attrs: {
        mode = "n";
        inherit action key;
        options = attrs.options or {};
      }) {
        "<Space>" = {
          action = "<NOP>";
        };
        "<C-j>" = {
          action = "<cmd>resize +3<CR>";
        };
        "<C-k>" = {
          action = "<cmd>resize -3<CR>";
        };
        "<C-h>" = {
          action = "<cmd>vertical resize -3<CR>";
        };
        "<C-l>" = {
          action = "<cmd>vertical resize +3<CR>";
        };
        "<leader>bC" = {
          action = ":%bd!<CR>";
          options = {
            desc = "Close all buffers";
            silent = true;
          };
        };
        "<leader>bj" = {
          action = "<cmd>bnext<CR>";
          options = {
            desc = "Next buffer";
            silent = true;
          };
        };
        "<leader>bk" = {
          action = "<cmd>bprevious<CR>";
          options = {
            desc = "Previous buffer";
            silent = true;
          };
        };
        "<C-Tab>" = {
          action = "<cmd>bprevious<CR>";
        };
        "<Tab>" = {
          action = "<cmd>bnext<CR>";
        };
      };
    insert =
      lib.mapAttrsToList
      (
        key: {action, ...} @ attrs: {
          mode = "i";
          inherit action key;
          options = attrs.options or {};
        }
      )
      {
        "<C-k>" = {
          action = "<C-o>gk";
        };
        "<C-h>" = {
          action = "<Left>";
        };
        "<C-l>" = {
          action = "<Right>";
        };
        "<C-j>" = {
          action = "<C-o>gj";
        };
      };
  in
    helpers.keymaps.mkKeymaps {options.silent = true;} (normal ++ insert);
}
