{
  inputs,
  mkShell,
  pkgs,
  system,
  ...
}: let
  inherit (inputs) snowfall-flake;
in
  mkShell {
    packages = with pkgs; [
      snowfall-flake.packages.${system}.flake
      nix-inspect
      inputs.self.checks.${system}.pre-commit.enabledPackages
    ];

    shellHook = ''
      $(inputs.self.checks.${system}.pre-commit.shellHook)
      echo Woof! :3
    '';
  }
