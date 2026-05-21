# 25.12.0-rc2 package feeds for x86_64
{
  sha256sums = {
    hash = "sha256-+5bSOFCGHH+02/em4SsrdvLkPQfVtrzBQobvQ9wXL8c=";
    name = "x86_64-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/x86_64/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/x86_64/base/";
    sourceInfo = {
      hash = "sha256-jntjfgx2X5xg4LI29+bQAY4Z6oPDtAin3odvEcLp+fc=";
      name = "x86_64-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/x86_64/base/packages.adb";
    };
    packages =
      let
        p = ./x86_64/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/x86_64/luci/";
    sourceInfo = {
      hash = "sha256-/g0ArMpl7bBrEwJx+NNxVZlpWBywowMNf4M3GVJhkrQ=";
      name = "x86_64-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/x86_64/luci/packages.adb";
    };
    packages =
      let
        p = ./x86_64/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/x86_64/packages/";
    sourceInfo = {
      hash = "sha256-6004ag9ucRFiXkU3z4J3R1xM2cCeg6JHdq/u9hE3Q+E=";
      name = "x86_64-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/x86_64/packages/packages.adb";
    };
    packages =
      let
        p = ./x86_64/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/x86_64/routing/";
    sourceInfo = {
      hash = "sha256-QmQFeHd45ak6OAkEDPLrPY4bcxkyDYxUSMsPOvN/kBo=";
      name = "x86_64-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/x86_64/routing/packages.adb";
    };
    packages =
      let
        p = ./x86_64/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/x86_64/telephony/";
    sourceInfo = {
      hash = "sha256-yDnf4r4qzB2gs3eksot9LEEXEq9b+m9KCZ5wBHbmbJs=";
      name = "x86_64-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/x86_64/telephony/packages.adb";
    };
    packages =
      let
        p = ./x86_64/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
