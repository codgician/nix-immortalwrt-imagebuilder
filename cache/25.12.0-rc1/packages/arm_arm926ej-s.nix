# 25.12.0-rc1 package feeds for arm_arm926ej-s
{
  sha256sums = {
    hash = "sha256-DbZsw60nl95Uy75Nhy8t2t9/aUS5n8wNDOzTgwUYPmM=";
    name = "arm_arm926ej-s-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_arm926ej-s/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_arm926ej-s/base/";
    sourceInfo = {
      hash = "sha256-VBcNww1EO7Z+Cck9jHPQbt5iJ9R1i1X2r8t+Sy0NrA0=";
      name = "arm_arm926ej-s-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_arm926ej-s/base/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_arm926ej-s/luci/";
    sourceInfo = {
      hash = "sha256-exjcKVQtKnf8Oqpn1T2Ug2y4430r3P7BpIgGLPpVoJY=";
      name = "arm_arm926ej-s-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_arm926ej-s/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_arm926ej-s/packages/";
    sourceInfo = {
      hash = "sha256-HmXqazAUYtcfjdhVn+gLYBLC5R+jcL9EvpW3S2qXXD8=";
      name = "arm_arm926ej-s-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_arm926ej-s/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_arm926ej-s/routing/";
    sourceInfo = {
      hash = "sha256-RcYnk+gb1njbhWv5p14Fk6GcvhmFAAmQWa31OlzxGOc=";
      name = "arm_arm926ej-s-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_arm926ej-s/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_arm926ej-s/telephony/";
    sourceInfo = {
      hash = "sha256-GR9vUtcShOk+BZD0LF+CZIbQXnLzIrR890R4zBR1JzU=";
      name = "arm_arm926ej-s-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_arm926ej-s/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
