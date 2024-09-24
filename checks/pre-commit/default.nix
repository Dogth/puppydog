{ inputs, pkgs, ... }:
let
  inherit (inputs) pre-commit-hooks;
in
pre-commit-hooks.lib.${pkgs.system}.run {
  src = ./.;
  hooks = {

    deadnix = {
      enable = true;
      settings.edit = true;
    };

    nixfmt-rfc-style.enable = true;

    statix.enable = false;
  };
}
