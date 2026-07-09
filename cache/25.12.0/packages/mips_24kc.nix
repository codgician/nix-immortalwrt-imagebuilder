# 25.12.0 package feeds for mips_24kc
{
  sha256sums = {
    hash = "sha256-SDi/lh4wd6TcCCE5a+MgJ0uw0VQwgJomMPzdk4zlIXM=";
    name = "mips_24kc-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_24kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_24kc/base/";
    sourceInfo = {
      hash = "sha256-A5o7SGau/3sdEZNkNPysqpIHRauN28A6b5asB3hYOoY=";
      name = "mips_24kc-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_24kc/base/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_24kc/luci/";
    sourceInfo = {
      hash = "sha256-7cCP7lzA+O2jZBT7zaUaUv/MxmaYYlRT7Wa9NNEs088=";
      name = "mips_24kc-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_24kc/luci/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_24kc/packages/";
    sourceInfo = {
      hash = "sha256-ksn1lG2ydWZ2r83aPgi6mczADGMbP6x7nVQMQNL0MDo=";
      name = "mips_24kc-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_24kc/packages/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_24kc/routing/";
    sourceInfo = {
      hash = "sha256-wFKfdHenTAC+Urp7M+g6q1DrIzfjpT0TVCK8zeYyG4Y=";
      name = "mips_24kc-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_24kc/routing/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_24kc/telephony/";
    sourceInfo = {
      hash = "sha256-XQMg3Tzwk50Zqvl2J2RkCPae69cippTK7Ur6P8lJkuU=";
      name = "mips_24kc-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_24kc/telephony/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
