{ lib, pkgs, ... }:
{
  plugins = {
    lsp-lines = {
      enable = true;
    };
    lsp = {
      enable = true;
      inlayHints = true;

      servers = {
        clangd = {
          enable = true;
          filetypes = [
            "c"
            "cpp"
          ];
          settings = {
            settings.init_options = {
              usePlaceholders = true;
              completeUnimported = true;
              clangdFileStatus = true;
            };
            cmd = [
              "${lib.getExe' pkgs.clang-tools "clangd"}"
              "--background-index"
              "--clang-tidy"
              "--header-insertion=iwyu"
              "--completion-style=detailed"
              "--function-arg-placeholders"
              "--fallback-style=llvm"
            ];
          };
        };
        cmake = {
          enable = true;
        };
        lua_ls = {
          enable = true;
          filetypes = [ "lua" ];
        };
        pylsp = {
          enable = true;
          filetypes = [ "python" ];
        };

        jsonls = {
          enable = true;
          filetypes = [ "json" ];
        };
        marksman = {
          enable = true;
          filetypes = [ "md" ];
        };
        nil_ls = {
          enable = true;
          settings = {
            nix.flake.autoArchive = true;
          };
          filetypes = [ "nix" ];
        };
      };
    };
  };
}
