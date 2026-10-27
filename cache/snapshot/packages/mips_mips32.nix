# snapshot package feeds for mips_mips32
{
  sha256sums = {
    hash = "sha256-ebSvJJW80hHYMA1nh9AhCqq+HWdJPucFK7iFkbwC1t0=";
    name = "mips_mips32-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/mips_mips32/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips_mips32/base/";
    sourceInfo = {
      hash = "sha256-OmaC1TEGkWzuZbeVu+KN58GmCyijlc3Xzrw5Rgejb5c=";
      name = "mips_mips32-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips_mips32/base/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips_mips32/luci/";
    sourceInfo = {
      hash = "sha256-475ld5LoUET/KYnDIFcuRTvqGWgO6Hg1cWM+7ccYAxo=";
      name = "mips_mips32-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips_mips32/luci/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips_mips32/packages/";
    sourceInfo = {
      hash = "sha256-d1/fhRelKgA5NbBVhwp5h2LP+wejEDnvCRUajV8wBn8=";
      name = "mips_mips32-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips_mips32/packages/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips_mips32/routing/";
    sourceInfo = {
      hash = "sha256-bSdyRtteoDpamZqSFzljBySeadzLxLxOAX2Qrd80uB4=";
      name = "mips_mips32-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips_mips32/routing/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips_mips32/telephony/";
    sourceInfo = {
      hash = "sha256-PzmaskZjOpf8voAFxBK5jj5erWl4frDnHYZHPsgdOzo=";
      name = "mips_mips32-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips_mips32/telephony/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
