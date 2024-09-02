{
  plugins = {
    telescope = {
      enable = true;

      extensions = {
        file-browser = {
          enable = true;
          settings = {
            hidden = true;
          };
        };
        ui-select = {
          enable = true;
        };
        undo = {
          enable = true;
          settings = {
            side_by_side = true;
          };
        };
        frecency = {
          enable = true;
        };
      };

      keymaps = {
        "<leader>fC" = {
          action = "commands";
        };
        "<leader>fg" = {
          action = "grep_string";
        };
        "<leader>ff" = {
          action = "find_files";
        };
        "<leader>fk" = {
          action = "keymaps";
        };
        "<leader>fq" = {
          action = "quickfix";
        };
        "<leader>fG" = {
          action = "live_grep";
        };
        "<leader>Gc" = {
          action = "git_commits";
          options.desc = "View commits";
        };
        "<leader>Gb" = {
          action = "git_branches";
          options.desc = "View branches";
        };
        "<leader>Gs" = {
          action = "git_status";
          options.desc = "View git status";
        };
        "<leader>GS" = {
          action = "git_stashes";
          options.desc = "View stashes";
        };
      };
    };

    which-key.settings.spec = [
      {
        __unkeyed = "<leader>f";
        group = "Telescope";
      }
    ];
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>ff";
      action.__raw = ''
        function()
          require("telescope.builtin").find_files {
            hidden = true;
            no_ignore = true;
          }
          end
      '';
      options = {
        desc = "Find files";
      };
    }
    {
      mode = "n";
      key = "<leader>fg";
      action.__raw = ''
        function()
          require("telescope.builtin").live_grep {
            additional_args = function(args) return vim.list_extend(args, {"--hidden", "--no-ignore"}) end,
          }
          end
      '';
      options = {
        desc = "Find word";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>f?";
      action.__raw = ''
        function()
          require("telescope.builtin").live_grep {grep_open_files = true}
          end
      '';
      options = {
        desc = "Find word in open files";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>fR";
      action = "<cmd>Telescope frecency<CR>";
      options = {
        desc = "Find recent files";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>fU";
      action = "<cmd>Telescope undo<CR>";
      options = {
        desc = "View undo history";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>fF";
      action = "<cmd>Telescope file_browser<CR>";
      options = {
        desc = "Telescope file explorer";
        silent = true;
      };
    }
  ];
}
