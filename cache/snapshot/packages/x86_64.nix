# snapshot package feeds for x86_64
{
  sha256sums = {
    hash = "sha256-HEflW7khco6ZlxxTuf9hqswhg0Y58Lanje6siZ2c0Tc=";
    name = "x86_64-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/base/";
    sourceInfo = {
      hash = "sha256-KsOe9N7tBvfOuoC5/JYNYLBq7PkGTYEaCz6Jr0k+bV4=";
      name = "x86_64-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/base/packages.adb";
    };
    packages =
      let
        p = ./x86_64/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/luci/";
    sourceInfo = {
      hash = "sha256-rcGydGyI/lzGk/dLAudzqd4KKjXjT34eRFs58HD6CNI=";
      name = "x86_64-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/luci/packages.adb";
    };
    packages =
      let
        p = ./x86_64/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/packages/";
    sourceInfo = {
      hash = "sha256-huC0CfsVJmukQyLLDl29LxoFB6OOweP261pY5J+tuh0=";
      name = "x86_64-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/packages/packages.adb";
    };
    packages =
      let
        p = ./x86_64/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/routing/";
    sourceInfo = {
      hash = "sha256-SY/R3gCF2PFd2WWpsY4i5zWA9zAMkTmgWFX8hqgIOOg=";
      name = "x86_64-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/routing/packages.adb";
    };
    packages =
      let
        p = ./x86_64/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/telephony/";
    sourceInfo = {
      hash = "sha256-WKB9vtBfqWbqYPEBrxCNERp24f/XpnODeErH3SRA0Qc=";
      name = "x86_64-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/telephony/packages.adb";
    };
    packages =
      let
        p = ./x86_64/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
