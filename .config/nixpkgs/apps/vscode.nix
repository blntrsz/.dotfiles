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
        accessibilitySupport = "off";
        bracketPairColorization.enabled = true;
        cursorBlinking = "solid";
        fontFamily = "JetBrainsMono";
        fontSize = 20;
        formatOnPaste = true;
        formatOnSave = true;
        lineNumbers = "relative";
        minimap.enabled = true;
        renderControlCharacters = "true";
        renderWhitespace = "boundary";
        rulers = [ 120 ];
        stickyScroll.enabled = true;
        tabSize = 2;
        wordWrap = true;
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
      vim = {
        useSystemClipboard = true;
        leader = "<space>";
        normalModeKeyBindingsNonRecursive = [
          {
              before = ["<leader>" "l" "a"];
              commands = ["editor.action.codeAction"];
          }
          {
              before = ["<leader>" "r" "r"];
              commands = ["editor.action.rename"];
          }
          {
              before = ["<leader>" "d"];
              commands = ["editor.action.revealDefinition"];
          }
          {
              before = ["K"];
              commands = ["editor.action.showHover"];
          }
          {
              before = ["<leader>" "e"];
              commands = ["workbench.action.toggleSidebarVisibility"];
          }
          {
              before = ["<leader>" "s" "s"];
              after = ["editor.action.splitEditor"];
          }
          {
              before = ["<leader>" "s" "v"];
              after = ["workbench.action.splitEditorDown"];
          }
        ];
        visualModeKeyBindings = [
            {
                before = ["<leader>" "e"];
                commands = ["workbench.view.explorer"];
            }
            {
                before = ["<leader>" "g" "s"];
                commands = ["workbench.view.scm"];
            }
            {
                before = [">"];
                after = [">" "g" "v"];
            }
            {
                before = ["<"];
                after = ["<" "g" "v"];
            }
        ];
      };
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
