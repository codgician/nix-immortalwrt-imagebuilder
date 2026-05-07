# 25.12.0-rc1 package feeds for powerpc_464fp
{
  sha256sums = {
    hash = "sha256-PLedjg7ERKq1OAwUFTJ+y3eqveSXCYR7C/yhx4Cs0/g=";
    name = "powerpc_464fp-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_464fp/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_464fp/base/";
    sourceInfo = {
      hash = "sha256-VKKROwTQ0luHFWLYKqLIMSxMySo3XdEketRGmgTdjVw=";
      name = "powerpc_464fp-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_464fp/base/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_464fp/luci/";
    sourceInfo = {
      hash = "sha256-LHfM0tfO+mz8TKz8mjx9j5b7Q3SZJx5Kfwf17QQ0sGk=";
      name = "powerpc_464fp-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_464fp/luci/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_464fp/packages/";
    sourceInfo = {
      hash = "sha256-mTvnEw0C7Zrkl1dJr6HDVo04hkEcbhVDgmLaS1RRcJE=";
      name = "powerpc_464fp-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_464fp/packages/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_464fp/routing/";
    sourceInfo = {
      hash = "sha256-PUpIrYAGAlWMy7fYe/omqfLmb/qAGh1w8jo/5F9DPMg=";
      name = "powerpc_464fp-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_464fp/routing/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_464fp/telephony/";
    sourceInfo = {
      hash = "sha256-g8h/RfGIxV34pjx70zSjjbWDZZuz/9t/rasD5CsnKi0=";
      name = "powerpc_464fp-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_464fp/telephony/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
