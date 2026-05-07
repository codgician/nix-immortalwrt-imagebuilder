# 25.12.0-rc2 package feeds for mipsel_74kc
{
  sha256sums = {
    hash = "sha256-uUIh3Qjeknu8NbIaJMWgDGVm49AG/Uyaw2+XAfy8jbw=";
    name = "mipsel_74kc-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_74kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_74kc/base/";
    sourceInfo = {
      hash = "sha256-F00Lvp1wSGNlpwGOIDRI8lrgzG6xUMwqPTjQA9rURmE=";
      name = "mipsel_74kc-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_74kc/base/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_74kc/luci/";
    sourceInfo = {
      hash = "sha256-kmkF81UodltCsAIm1kpWGvoZizFqcdrq5R3sKA0D/uk=";
      name = "mipsel_74kc-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_74kc/luci/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_74kc/packages/";
    sourceInfo = {
      hash = "sha256-vqslDcwNgXmQAv4bU3TUNG2/FVrU5HefE2fCjaPxKGc=";
      name = "mipsel_74kc-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_74kc/packages/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_74kc/routing/";
    sourceInfo = {
      hash = "sha256-oDoii7UPnAP2LEddmK1y158HjlY+3S3mUXURk0+73LI=";
      name = "mipsel_74kc-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_74kc/routing/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_74kc/telephony/";
    sourceInfo = {
      hash = "sha256-UEYNMlo7bizbEGQMI2QDiSVqVtXJtLIBdvn6OZ8gePw=";
      name = "mipsel_74kc-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/mipsel_74kc/telephony/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
