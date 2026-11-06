# 25.12.0 package feeds for powerpc_8548
{
  sha256sums = {
    hash = "sha256-4DaktYbpL3FneRfgcVHHfeFluOmCqUvuAXHHyRm4KEE=";
    name = "powerpc_8548-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_8548/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_8548/base/";
    sourceInfo = {
      hash = "sha256-SrxbI/WgX/5aFaQa/GBlZV59TX7iQGAz1pCgU3Pkc0U=";
      name = "powerpc_8548-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_8548/base/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_8548/luci/";
    sourceInfo = {
      hash = "sha256-3gc7kRjzahOcF60AH26W1Ru/2+wLWdbO3hgPnh9WKjw=";
      name = "powerpc_8548-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_8548/luci/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_8548/packages/";
    sourceInfo = {
      hash = "sha256-xZqCU3+X6Sk+VM/kSM8yt/+MWAPQXdgklnfPO66yttc=";
      name = "powerpc_8548-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_8548/packages/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_8548/routing/";
    sourceInfo = {
      hash = "sha256-xUSmWby7Hb6tEWlQbbK5fVA8vqHYhHz8A+AXlQVje+Q=";
      name = "powerpc_8548-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_8548/routing/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_8548/telephony/";
    sourceInfo = {
      hash = "sha256-ksybxGey3eEWjCLM2BZPdSRfQJ7Y9Uq/vN3wSyildA8=";
      name = "powerpc_8548-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/powerpc_8548/telephony/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
