{
  inputs,
  pkgs,
  ...
}: let
  inherit (inputs) pre-commit-hooks;
in
  pre-commit-hooks.lib.${pkgs.system}.run {
    src = ./.;
    hooks = {
      deadnix = {
        enable = true;
        settings.edit = true;
      };
      nixfmt = {
        enable = true;
        package = pkgs.nixfmt-rfc-style;
      };
      statix.enable = true;
    };
  }
