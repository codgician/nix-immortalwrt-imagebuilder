# 25.12.0-rc1 package feeds for armeb_xscale
{
  sha256sums = {
    hash = "sha256-AQofJtGuOoV9RGqO9ERsjW045zC2zr3huiO8ESD30Uo=";
    name = "armeb_xscale-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/armeb_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/armeb_xscale/base/";
    sourceInfo = {
      hash = "sha256-+AE/b262qZr3M8vixlXSryXcHhP+A6Rc1lnn07nNbs8=";
      name = "armeb_xscale-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/armeb_xscale/base/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/armeb_xscale/luci/";
    sourceInfo = {
      hash = "sha256-uOIpJS5whRJw9IrT3HSuo+hjVPIgVw7EgyK/+ivoJa4=";
      name = "armeb_xscale-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/armeb_xscale/luci/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/armeb_xscale/packages/";
    sourceInfo = {
      hash = "sha256-FzuhI+7HwGRsHUAl9yFWlHM++pTEVUODLUresQc8FTA=";
      name = "armeb_xscale-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/armeb_xscale/packages/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/armeb_xscale/routing/";
    sourceInfo = {
      hash = "sha256-tLVZEdVuFtckXWroo5PmfyXHcprNtfneIIOefEacuLI=";
      name = "armeb_xscale-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/armeb_xscale/routing/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/armeb_xscale/telephony/";
    sourceInfo = {
      hash = "sha256-6CCBMhGeluR8ekQXXGMFW55YPwfTpu00k7Ooh1NXp6g=";
      name = "armeb_xscale-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/armeb_xscale/telephony/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
