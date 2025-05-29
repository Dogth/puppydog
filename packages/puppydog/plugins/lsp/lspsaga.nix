{
  plugins.lspsaga = {
    enable = true;
    beacon = {
      enable = true;
    };
    ui = {
      border = "rounded";
      codeAction = "A";
    };
    hover = {
      openCmd = "!floorp";
      openLink = "gx";
    };
    diagnostic = {
      borderFollow = true;
      diagnosticOnlyCurrent = false;
      showCodeAction = true;
    };
    symbolInWinbar = {
      enable = true;
    };
    codeAction = {
      extendGitSigns = false;
      showServerName = true;
      onlyInCursor = true;
      numShortcut = true;
    };
    lightbulb = {
      enable = true;
      sign = true;
      virtualText = false;
    };
    implement = {
      enable = false;
    };
    rename = {
      autoSave = false;
    };
    outline = {
      autoClose = true;
      autoPreview = true;
      closeAfterJump = true;
      layout = "normal";
    };
    scrollPreview = {
      scrollDown = "<C-f>";
      scrollUp = "<C-b>";
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>la";
      action = "<cmd>Lspsaga code_action<CR>";
      options = {
        desc = "Code Action";
        silent = true;
      };
    }

    {
      mode = "n";
      key = "<leader>ld";
      action = "<cmd>Lspsaga finder def<CR>";
      options = {
        desc = "Goto Definition";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>lR";
      action = "<cmd>Lspsaga finder ref<CR>";
      options = {
        desc = "Goto References";
        silent = true;
      };
    }

    {
      mode = "n";
      key = "<leader>lD";
      action = "<cmd>Lspsaga show_line_diagnostics<CR>";
      options = {
        desc = "Goto Declaration";
        silent = true;
      };
    }

    {
      mode = "n";
      key = "<leader>li";
      action = "<cmd>Lspsaga finder imp<CR>";
      options = {
        desc = "Goto Implementation";
        silent = true;
      };
    }

    {
      mode = "n";
      key = "<leader>lt";
      action = "<cmd>Lspsaga peek_type_definition<CR>";
      options = {
        desc = "Type Definition";
        silent = true;
      };
    }

    {
      mode = "n";
      key = "<leader>ld";
      action = "<cmd>Lspsaga hover_doc<CR>";
      options = {
        desc = "Hover";
        silent = true;
      };
    }

    {
      mode = "n";
      key = "<leader>lw";
      action = "<cmd>Lspsaga outline<CR>";
      options = {
        desc = "Outline";
        silent = true;
      };
    }

    {
      mode = "n";
      key = "<leader>lr";
      action = "<cmd>Lspsaga rename<CR>";
      options = {
        desc = "Rename";
        silent = true;
      };
    }

    {
      mode = "n";
      key = "<leader>ls";
      action = "<cmd>Lspsaga show_line_diagnostics<CR>";
      options = {
        desc = "Line Diagnostics";
        silent = true;
      };
    }

    {
      mode = "n";
      key = "<leader>ln";
      action = "<cmd>Lspsaga diagnostic_jump_next<CR>";
      options = {
        desc = "Next Diagnostic";
        silent = true;
      };
    }

    {
      mode = "n";
      key = "<leader>lp";
      action = "<cmd>Lspsaga diagnostic_jump_prev<CR>";
      options = {
        desc = "Previous Diagnostic";
        silent = true;
      };
    }
  ];

  plugins.which-key.settings.spec = [
    {
      __unkeyed = "<leader>l";
      group = "LSP";
    }
    {
      __unkeyed = "<leader>la";
      group = "Code action";
    }
    {
      __unkeyed = "<leader>ld";
      group = "Definition";
    }
    {
      __unkeyed = "<leader>lR";
      group = "References";
    }
    {
      __unkeyed = "<leader>lD";
      group = "Declaration";
    }
    {
      __unkeyed = "<leader>li";
      group = "Implementation";
    }
    {
      __unkeyed = "<leader>lt";
      group = "Type definition";
    }
    {
      __unkeyed = "<leader>lh";
      group = "Hover";
    }
    {
      __unkeyed = "<leader>lw";
      group = "Outline";
    }
    {
      __unkeyed = "<leader>lr";
      group = "Rename";
    }
    {
      __unkeyed = "<leader>ls";
      group = "Diagnostics";
    }
    {
      __unkeyed = "<leader>ln";
      group = "Diagnostic next";
    }
    {
      __unkeyed = "<leader>lp";
      group = "Diagnostic prev";
    }
    {
      __unkeyed = "<leader>lH";
      group = "Diagnostic hover";
    }
  ];
}
