{
  plugins = {
    lspkind.enable = true;
    lsp-lines.enable = true;
    lsp = {
      enable = true;

      servers = {
        clangd = {
          enable = true;
          filetypes = [
            "c"
            "cpp"
          ];
        };
        lua-ls = {
          enable = true;
          filetypes = [
            "lua"
          ];
        };
        jsonls = {
          enable = true;
          filetypes = [
            "json"
          ];
        };
        marksman = {
          enable = true;
          filetypes = [
            "md"
          ];
        };
        nil-ls = {
          enable = true;
          settings = {
            nix.flake.autoArchive = true;
          };
          filetypes = [
            "nix"
          ];
        };
        jdt-language-server = {
          enable = true;
          filetypes = [
            "java"
          ];
        };
      };

      keymaps = {
        diagnostic = {
          "<leader>lp" = "goto_prev";
          "<leader>ln" = "goto_next";
          "<leader>lH" = "open_float";
        };
        lspBuf = {
          "<leader>la" = "code_action";
          "<leader>ld" = "definition";
          "<leader>lf" = "format";
          "<leader>lR" = "references";
          "<leader>lt" = "type_definition";
          "<leader>li" = "implementation";
          "<leader>lh" = "hover";
          "<leader>lr" = "rename";
        };
      };
    };

    which-key.settings.spec = [
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
        __unkeyed = "<leader>lf";
        group = "Format";
      }
      {
        __unkeyed = "<leader>lR";
        group = "References";
      }
      {
        __unkeyed = "<leader>lt";
        group = "Type definition";
      }
      {
        __unkeyed = "<leader>li";
        group = "Implementation";
      }
      {
        __unkeyed = "<leader>lh";
        group = "Hover";
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
      {
        __unkeyed = "<leader>lr";
        group = "Rename";
      }
    ];
  };
}
