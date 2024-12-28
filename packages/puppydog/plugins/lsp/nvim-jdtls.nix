{ lib, pkgs, ... }:
{

  plugins = {
    nvim-jdtls = {
      enable = true;
      cmd = [
        (lib.getExe pkgs.jdt-language-server)
        "--jvm-arg=-javaagent:/Users/dogth/lombok.jar" # TODO: remove hard-coded path
        "-data"
        "/home/dogth/jdtls/cache/"
        "-configuration"
        "/home/dogth/jdtls/configuration"
      ];
      settings = {
        java = {
          configuration = {
            updateBuildConfiguration = "interactive";
            runtimes = [
              pkgs.jdk11
              pkgs.jdk21
              pkgs.jdk17
              pkgs.jdk
            ];
          };
          codeGeneration = {
            toString = {
              useBlocks = true;
            };
          };
          contentProvider = { };
          completion = {
            filteredTypes = [
              "com.sun.*"
              "io.micrometer.shaded.*"
              "java.awt.*"
              "jdk.*"
              "sun.*"
            ];
            importOrder = [
              "java"
              "javax"
              "com"
              "org"
            ];
          };
          eclipse = {
            downloadSources = true;
          };
          format = {
            enabled = true;
            settings = {
              url = "${
                (pkgs.fetchurl {
                  url = "https://raw.githubusercontent.com/google/styleguide/gh-pages/eclipse-java-google-style.xml";
                  sha256 = "sha256-51Uku2fj/8iNXGgO11JU4HLj28y7kcSgxwjc+r8r35E=";
                })
              }";
              profile = "GoogleStyle";
            };
          };
          implementationCodeLens = {
            enabled = true;
          };
          import = {
            gradle = {
              enabled = true;
              wrapper = {
                enabled = true;
              };
            };
            maven = {
              enabled = true;
            };
          };
          inlayHints = {
            parameterNames = {
              enabled = "all";
            };
          };
          maven = {
            downloadSources = true;
          };
          references = {
            includeDecompiledSources = true;
          };
          referencesCodeLens = {
            enabled = true;
          };
          signatureHelp = {
            enabled = true;
          };
          preferred = "fernflower";
          sources = {
            organizeImports = {
              starThreshold = 9999;
              staticStarThreshold = 9999;
            };
          };
        };
      };
    };
  };

}
