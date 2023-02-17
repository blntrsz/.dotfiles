{ pkgs }:
{
  programs.vscode = {
    enable = true;
    userSettings = {
      telemetry = {
        enableCrashReporter = false;
        enableTelemetry = false;
      };

      files = {
        autoSave = "afterDelay";
        trimFinalNewlines = true;
        insertFinalNewline = true;
        trimTrailingWhitespace = true;
      };

      exclude = {
        "**/node_modules" = true;
      };

      editor = {
        fontFamily = "JetBrainsMono";
        tabSize = 2;
        fontSize = 20;
        rulers = [ 120 ];
        accessibilitySupport = "off";
        minimap.enabled = true;
        formatOnPaste = true;
        formatOnSave = true;
        cursorBlinking = "solid";
        lineNumbers = "relative";
        renderControlCharacters = "true";
        renderWhitespace = "boundary";
      };

      workbench = {
        editor = {
          highlightModifiedTabs = true;
          enablePreview = false;
        };
        panel.defaultLocation = "right";
        tree.indent = 20;
        colorTheme = "poimandres";
      };

      search = {
        location = "panel";
      };

      extensions = {
        ignoreRecommendations = true;
      };

      update.mode = "none";

      terminal.integrated = {
        copyOnSelection = true;
      };
      alignment.operatorPadding = "left";
    };
    extensions = with pkgs.vscode-extensions; [
      bbenoist.nix
      vscodevim.vim
    ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
      {
        name = "pmndrs";
        version = "0.3.7";
        publisher = "pmndrs";
        sha256 = "sha256-QgQH+BrKPxo7lv128V4l3WCiO3rBM41voqHMGNGrwWo=";
      }
    ];
  };
}
