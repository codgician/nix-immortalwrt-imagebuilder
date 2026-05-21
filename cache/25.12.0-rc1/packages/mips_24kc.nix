# 25.12.0-rc1 package feeds for mips_24kc
{
  sha256sums = {
    hash = "sha256-AtG/QEZ6yd6h9J0zAmWpZZAP3dH0BWUpyXSrr+j22YI=";
    name = "mips_24kc-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_24kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_24kc/base/";
    sourceInfo = {
      hash = "sha256-6EF4BhyKIXhla4Xhn0NCcMHxPqcTNH9LFar8AQ5LzVg=";
      name = "mips_24kc-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_24kc/base/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_24kc/luci/";
    sourceInfo = {
      hash = "sha256-StRnP1YMbZWrTKuOc8EwPRFIK4Tduxi2/5LH/RFF+s8=";
      name = "mips_24kc-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_24kc/luci/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_24kc/packages/";
    sourceInfo = {
      hash = "sha256-J1YmBg8dIUDjnIKAjE3BsmJbC7JbeOGhasUQ+lVBMoM=";
      name = "mips_24kc-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_24kc/packages/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_24kc/routing/";
    sourceInfo = {
      hash = "sha256-J65g1o/HcZchfkKjm6LJi8I0witkjq3RyML8Sdc+/K4=";
      name = "mips_24kc-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_24kc/routing/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_24kc/telephony/";
    sourceInfo = {
      hash = "sha256-VxBHO4AA1P9UxudPdImokdbkr5RRdSzJ5sztZ62T664=";
      name = "mips_24kc-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_24kc/telephony/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
