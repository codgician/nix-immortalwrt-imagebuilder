# 25.12.0-rc1 package feeds for powerpc_8548
{
  sha256sums = {
    hash = "sha256-CpYUPaSHzALFQbDla+IZYSsQi/+N0p7WZp6YNlPMs+M=";
    name = "powerpc_8548-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_8548/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_8548/base/";
    sourceInfo = {
      hash = "sha256-9VV2q6EefwIp8CSNLjEXwnypkBBH1IPBVMa6bHwYV9s=";
      name = "powerpc_8548-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_8548/base/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_8548/luci/";
    sourceInfo = {
      hash = "sha256-kwDpoa9F7bWcr5owzzB5buC1u/jT+eCIEUihO4459GM=";
      name = "powerpc_8548-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_8548/luci/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_8548/packages/";
    sourceInfo = {
      hash = "sha256-O0ScY45O1Qk8/4BPX5F7Gn+s+WcbcRNMMH1/16JAfHo=";
      name = "powerpc_8548-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_8548/packages/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_8548/routing/";
    sourceInfo = {
      hash = "sha256-hQI1lglAAHWJgEdGeRvpUhaZlbA35pN96521L0T4nbU=";
      name = "powerpc_8548-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_8548/routing/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_8548/telephony/";
    sourceInfo = {
      hash = "sha256-NINPnpLtTn4nN+1JcNw+jvPyjgopw0qTK3x4e329W70=";
      name = "powerpc_8548-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_8548/telephony/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
