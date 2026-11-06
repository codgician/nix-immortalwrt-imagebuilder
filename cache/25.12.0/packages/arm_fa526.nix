# 25.12.0 package feeds for arm_fa526
{
  sha256sums = {
    hash = "sha256-26Es+6MIONZMQyH4unO+KIxvIeHGjMJM5bkAyGJbv04=";
    name = "arm_fa526-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_fa526/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_fa526/base/";
    sourceInfo = {
      hash = "sha256-qSBzElfZOpNN/Rg3bxBR8ZjBr8cUHZGJ3JVV7C+BgfM=";
      name = "arm_fa526-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_fa526/base/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_fa526/luci/";
    sourceInfo = {
      hash = "sha256-xUw19EUWPh1OebrkoOA5SAFY61XGz9rAJl/FItpPEKA=";
      name = "arm_fa526-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_fa526/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_fa526/packages/";
    sourceInfo = {
      hash = "sha256-zTQ7m7Bpf2lkLSSZtkOX1sVmabuhonsAfefdj0ZoR+U=";
      name = "arm_fa526-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_fa526/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_fa526/routing/";
    sourceInfo = {
      hash = "sha256-w9ZZbuJBCOC7TRK/q0GPm/459zn1UprePQhVO4/M4TY=";
      name = "arm_fa526-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_fa526/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_fa526/telephony/";
    sourceInfo = {
      hash = "sha256-NS3L7FQPl693c8WQ703tL4Bj94+wqP3aS+VVbZ2U84I=";
      name = "arm_fa526-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_fa526/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
