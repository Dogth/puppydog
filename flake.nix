{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixvim = {
      url = "github:nix-community/nixvim";
    };
    pre-commit-hooks = {
      url = "github:cachix/pre-commit-hooks.nix";
    };
    snowfall-lib = {
      url = "github:snowfallorg/lib";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    snowfall-flake = {
      url = "github:snowfallorg/flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs:
    inputs.snowfall-lib.mkFlake {
      inherit inputs;
      src = ./.;
      alias = {
        packages.default = "puppydog";
        packages.nvim = "puppydog";
      };

      snowfall = {
        meta = {
          name = "puppydog";
          title = "puppydog";
        };
        namespace = "puppydog";
      };

      channels-config.allowUnfree = true;
      outputs-builder = channels: {formatter = channels.nixpkgs.nixfmt-rfc-style;};
    };
}
