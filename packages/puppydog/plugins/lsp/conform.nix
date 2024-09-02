{
  lib,
  pkgs,
  ...
}: {
  plugins.conform-nvim = {
    enable = true;
    settings = {
      notify_on_error = true;

      format_on_save = ''
        function(bufnr)
          if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
            return
          end
          return { timeout_ms = 500, lsp_fallback = true }
        end
      '';

      formatters_by_ft = {
        java = ["google-java-format"];
        nix = ["nixpkgs"];
        lua = ["stylua"];
        markdown = ["prettierd"];
        sh = [
          "shellcheck"
          "shellharden"
          "shfmt"
        ];
        xml = [
          "xmlformat"
          "xmllint"
        ];
        "_" = [
          "trim_newlines"
          "trim_whitespaces"
        ];
      };

      formatters = {
        prettierd = {
          command = lib.getExe pkgs.prettierd;
        };
        stylua = {
          command = lib.getExe pkgs.stylua;
        };
        shellcheck = {
          command = lib.getExe pkgs.shellcheck;
        };
        shellharden = {
          command = lib.getExe pkgs.shellharden;
        };
        shfmt = {
          command = lib.getExe pkgs.shfmt;
        };
        xmlformat = {
          command = lib.getExe pkgs.xmlformat;
        };
        nixfmt = {
          command = lib.getExe pkgs.nixfmt-rfc-style;
        };
      };
    };
  };
}
