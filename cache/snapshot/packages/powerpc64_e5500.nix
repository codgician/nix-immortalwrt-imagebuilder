# snapshot package feeds for powerpc64_e5500
{
  sha256sums = {
    hash = "sha256-w2/FIq70QZmh2q4AapLer0AeoM0MwtZ8migkOXxGnj8=";
    name = "powerpc64_e5500-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/powerpc64_e5500/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/powerpc64_e5500/base/";
    sourceInfo = {
      hash = "sha256-5HxMXwfWG2+4DO3GbX2ambSF4oGewklLwWqGPIqR7Ak=";
      name = "powerpc64_e5500-base-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/powerpc64_e5500/base/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/powerpc64_e5500/luci/";
    sourceInfo = {
      hash = "sha256-RmaJg+woNmVdWgUcrpbJ7IOa+vJYESu16mjZ61l4hro=";
      name = "powerpc64_e5500-luci-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/powerpc64_e5500/luci/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/powerpc64_e5500/packages/";
    sourceInfo = {
      hash = "sha256-+AaZcxwKqGzpGMlX+DsA7rGpQN4o3Fhn4lJdhop/LhI=";
      name = "powerpc64_e5500-packages-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/powerpc64_e5500/packages/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/powerpc64_e5500/routing/";
    sourceInfo = {
      hash = "sha256-FNMD1uxUCU9UwsLuON7B8sSxXIvPDvyCILRiXad59DQ=";
      name = "powerpc64_e5500-routing-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/powerpc64_e5500/routing/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/powerpc64_e5500/telephony/";
    sourceInfo = {
      hash = "sha256-RAmjIAJSLiyn7GUQMU4bRIZmTCmknGOzhdPLuvcP7WQ=";
      name = "powerpc64_e5500-telephony-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/powerpc64_e5500/telephony/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
