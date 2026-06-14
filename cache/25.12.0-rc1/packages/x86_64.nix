# 25.12.0-rc1 package feeds for x86_64
{
  sha256sums = {
    hash = "sha256-Ttc/hap5+gtD1G3coULXiPgaVfckpQvtL23BAx4gvwA=";
    name = "x86_64-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/x86_64/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/x86_64/base/";
    sourceInfo = {
      hash = "sha256-78aPddVL1qOarWRTx4Tk/EsWI3laZmPCofcsoIrdsbQ=";
      name = "x86_64-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/x86_64/base/packages.adb";
    };
    packages =
      let
        p = ./x86_64/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/x86_64/luci/";
    sourceInfo = {
      hash = "sha256-cU2rH9Qbsy4cT0EhnAWjdgBOzHmy4Yl7/yxySkwA8w0=";
      name = "x86_64-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/x86_64/luci/packages.adb";
    };
    packages =
      let
        p = ./x86_64/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/x86_64/packages/";
    sourceInfo = {
      hash = "sha256-R3uR4WB9zpTS1Zk+o5ahQOj8YrBE+E8Doj/UpjLH1y4=";
      name = "x86_64-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/x86_64/packages/packages.adb";
    };
    packages =
      let
        p = ./x86_64/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/x86_64/routing/";
    sourceInfo = {
      hash = "sha256-IOLWHYizBjFNBi8f6t1jhXFxaUtj4/wWWT5Nlm0Sqik=";
      name = "x86_64-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/x86_64/routing/packages.adb";
    };
    packages =
      let
        p = ./x86_64/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/x86_64/telephony/";
    sourceInfo = {
      hash = "sha256-CoDf23A5fEcMl++mlMDD8lAgBnQUkdclD8jYKSVFh3Q=";
      name = "x86_64-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/x86_64/telephony/packages.adb";
    };
    packages =
      let
        p = ./x86_64/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
