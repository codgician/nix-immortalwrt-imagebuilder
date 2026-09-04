# 25.12.1 package feeds for aarch64_generic
{
  sha256sums = {
    hash = "sha256-lcdKH+xaehAdowgexfrODcda6xO8/zRV0tLlbG+3JXU=";
    name = "aarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_generic/base/";
    sourceInfo = {
      hash = "sha256-ZmnhbynC1nc/BPSH/W+U1L/FejMq46n9lgLAXW8ArCc=";
      name = "aarch64_generic-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_generic/base/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_generic/luci/";
    sourceInfo = {
      hash = "sha256-9Ax+uH1+y5BvIgeBDXf83YoqetTxuDKd/FCd4YB0nj4=";
      name = "aarch64_generic-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_generic/luci/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_generic/packages/";
    sourceInfo = {
      hash = "sha256-F97jKXNRQoWkDGDnpgWd2MAIhbO7QY9NIWoMj0GV+rk=";
      name = "aarch64_generic-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_generic/packages/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_generic/routing/";
    sourceInfo = {
      hash = "sha256-E0nVnyEBE4bXjg/reXs+4/exgLuZ0A+Vm52CYyMtm5c=";
      name = "aarch64_generic-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_generic/routing/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-WIAFTuRCc11T4brs0BbhaNtRz2cqQXZjfzeqU8T1RpU=";
      name = "aarch64_generic-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_generic/telephony/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
