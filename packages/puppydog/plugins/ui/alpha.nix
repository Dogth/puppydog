{
  plugins.alpha = {
    enable = true;

    layout =
      let
        mkPadding = size: {
          type = "padding";
          val = size;
        };
        mkText = text: {
          type = "text";
          val = text;
          opts = {
            position = "center";
            hl = "Type";
          };
        };
        mkButton = title: key: action: cmdKey: cmdAction: {
          type = "button";
          val = title;
          on_press = {
            __raw = action;
          };

          opts = {
            shortcut = key;
            cursor = 1;
            width = 48;
            position = "center";
            align_shortcut = "right";
            hl_shortcut = "Shortcut";
            keymap = [
              "n"
              cmdKey
              cmdAction
              {
                noremap = true;
                silent = true;
              }
            ];
          };
        };
      in
      [
        (mkPadding 2)
        (mkText ''██████  ██    ██ ██████  ██████  ██    ██ ██████   ██████   ██████ '')
        (mkText ''██   ██ ██    ██ ██   ██ ██   ██  ██  ██  ██   ██ ██    ██ ██      '')
        (mkText ''██████  ██    ██ ██████  ██████    ████   ██   ██ ██    ██ ██   ███'')
        (mkText ''██      ██    ██ ██      ██         ██    ██   ██ ██    ██ ██    ██'')
        (mkText ''██       ██████  ██      ██         ██    ██████   ██████   ██████ '')
        (mkPadding 4)
        (mkButton "> New file" "e" "function() vim.cmd[[ene]] end" "<leader>e"
          ":ene <BAR> startinsert <CR>"
        )
        (mkPadding 1)
        (mkButton "> Find file" "f" "function() require('telescope.builtin').find_files() end" "f"
          "<cmd>Telescope find_files<CR>"
        )
        (mkPadding 1)
        (mkButton "> Recent" "r" "function() require('telescope.builtin').oldfiles() end" "r"
          "<cmd>Telescope oldfiles<CR>"
        )
        (mkPadding 1)
        (mkButton "> Quit" "q" "function() vim.cmd[[qa]] end" "q" "<cmd>qa<CR>")
        (mkPadding 12)
      ];
  };
}
