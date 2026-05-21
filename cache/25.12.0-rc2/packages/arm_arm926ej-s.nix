# 25.12.0-rc2 package feeds for arm_arm926ej-s
{
  sha256sums = {
    hash = "sha256-S+c8bhNu8FegUzU8tcBFwp/jK7t/AVT7eITts2CmWz0=";
    name = "arm_arm926ej-s-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_arm926ej-s/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_arm926ej-s/base/";
    sourceInfo = {
      hash = "sha256-ksS53WIrpTFnho7UoM8YUGvpIXJGT5MJVLIplCAKIqs=";
      name = "arm_arm926ej-s-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_arm926ej-s/base/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_arm926ej-s/luci/";
    sourceInfo = {
      hash = "sha256-S/Xyek8Eg49VYbXy5UgoZC6w+luRwLcXfQBNFL2pKtY=";
      name = "arm_arm926ej-s-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_arm926ej-s/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_arm926ej-s/packages/";
    sourceInfo = {
      hash = "sha256-h/q3fc1gonyLHVvuTb470JbD87gaURnXTDnfe+YkCLk=";
      name = "arm_arm926ej-s-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_arm926ej-s/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_arm926ej-s/routing/";
    sourceInfo = {
      hash = "sha256-Aioa1L88zGqzdaiWTIH/uhtKhtgb6GxyvF2ewcqqObE=";
      name = "arm_arm926ej-s-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_arm926ej-s/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_arm926ej-s/telephony/";
    sourceInfo = {
      hash = "sha256-Npo7dHqWkWBWUjItydZ7aCjIF9u1Enr/eWw94QUrVkA=";
      name = "arm_arm926ej-s-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_arm926ej-s/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
