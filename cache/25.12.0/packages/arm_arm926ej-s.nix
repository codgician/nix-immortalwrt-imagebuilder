# 25.12.0 package feeds for arm_arm926ej-s
{
  sha256sums = {
    hash = "sha256-Xdo7nANM8Nzx5TzUXCMBp4A+hZL1QAJ3hW/nWcGsJoY=";
    name = "arm_arm926ej-s-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_arm926ej-s/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_arm926ej-s/base/";
    sourceInfo = {
      hash = "sha256-eVk5bcLhPFTYm8LBBFU5nmHMNqGx1tJK0BUqh3MoW7Q=";
      name = "arm_arm926ej-s-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_arm926ej-s/base/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_arm926ej-s/luci/";
    sourceInfo = {
      hash = "sha256-pJTiLnqI0R5B0hCGGBzE6YT38hWm83J7UNuSMrcg1AI=";
      name = "arm_arm926ej-s-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_arm926ej-s/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_arm926ej-s/packages/";
    sourceInfo = {
      hash = "sha256-/RMviUoLmPgdr7y057jEAMRz0rcWOyj9K17EvdKxRPQ=";
      name = "arm_arm926ej-s-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_arm926ej-s/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_arm926ej-s/routing/";
    sourceInfo = {
      hash = "sha256-kBN3gXS9c8Qy3mak/ixK3FaWHQdmt6aK56M3k+LnfhM=";
      name = "arm_arm926ej-s-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_arm926ej-s/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_arm926ej-s/telephony/";
    sourceInfo = {
      hash = "sha256-Pb6YMCQ0YpFgYzcP7w6NCmW9ejrPgXHMMdOXBl9g47w=";
      name = "arm_arm926ej-s-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_arm926ej-s/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_arm926ej-s/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
