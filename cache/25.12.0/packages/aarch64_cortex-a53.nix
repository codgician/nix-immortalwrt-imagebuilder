# 25.12.0 package feeds for aarch64_cortex-a53
{
  sha256sums = {
    hash = "sha256-rZiqC5fcGf5u2GFcxVUH/L/wtk2O3zAn2Hrc6LLAQyc=";
    name = "aarch64_cortex-a53-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a53/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a53/base/";
    sourceInfo = {
      hash = "sha256-OW1PGkqLR96w3E11Xo0J1obntJStZgoMvFRwpw/xGzc=";
      name = "aarch64_cortex-a53-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a53/base/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a53/luci/";
    sourceInfo = {
      hash = "sha256-OBl8OaQuLcejx8JcR2XAMOYHs+qF6d2x3KtvwKxw7WU=";
      name = "aarch64_cortex-a53-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a53/luci/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a53/packages/";
    sourceInfo = {
      hash = "sha256-rHtLX8D9BXVVDlI+Ok5v68vMF5Jljh5prXihh+c3FvQ=";
      name = "aarch64_cortex-a53-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a53/packages/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a53/routing/";
    sourceInfo = {
      hash = "sha256-c8XJ25yHmPEeA8mc0Khn09Vjrq18d11HT+B+Mr17Cak=";
      name = "aarch64_cortex-a53-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a53/routing/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a53/telephony/";
    sourceInfo = {
      hash = "sha256-XE/XG/gPenyrm10rN+86pXuRWtGVdUUH8xTGrfvnv1w=";
      name = "aarch64_cortex-a53-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a53/telephony/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
