{ lib, pkgs, ... }:
{
  plugins.conform-nvim = {
    enable = true;
    settings = {
      notify_on_error = true;

      format_on_save = {
        lsp_format = "fallback";
        quiet = true;
      };

      formatters_by_ft = {
        java = [ "google-java-format" ];
        nix = [ "nixfmt" ];
        lua = [ "stylua" ];
        markdown = [ "prettierd" ];
        cmake = [ "cmake-format" ];
        cpp = [ "clang-format" ];
        c = [ "clang-format" ];
        sql = [ "sqlfluff" ];
        sh = [
          "shellcheck"
          "shellharden"
          "shfmt"
        ];
        xml = [ "xmlformat" ];
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
        sqlfluff = {
          command = lib.getExe pkgs.sqlfluff;
        };
        nixfmt = {
          command = lib.getExe pkgs.nixfmt-rfc-style;
        };
        google-java-format = {
          command = lib.getExe pkgs.google-java-format;
        };
        cmake-format = {
          command = lib.getExe pkgs.cmake-format;
        };
        clang-format = {
          command = lib.getExe pkgs.libclang;
        };
      };
    };
  };
}
