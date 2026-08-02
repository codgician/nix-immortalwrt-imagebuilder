# 24.10.1 package feeds for arm_arm926ej-s
{
  sha256sums = {
    hash = "sha256-CJAwRuWIpiw3p46/SZNbPH06rK5yjKtg47VtR3qmgOU=";
    name = "arm_arm926ej-s-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_arm926ej-s/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_arm926ej-s/base/";
    sourceInfo = {
      hash = "sha256-3P61Rv4meBn8Q4FQuF2921q709rni0k29UUIyV436GY=";
      name = "arm_arm926ej-s-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_arm926ej-s/base/Packages";
    };
    packages =
      let
        p = ./arm_arm926ej-s/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_arm926ej-s/luci/";
    sourceInfo = {
      hash = "sha256-3iu+7DKXhFCboHjbd365jb19pzhSNiftVg1mXe3H4yU=";
      name = "arm_arm926ej-s-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_arm926ej-s/luci/Packages";
    };
    packages =
      let
        p = ./arm_arm926ej-s/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_arm926ej-s/packages/";
    sourceInfo = {
      hash = "sha256-7K1VPkIjGwvcw6dHco0rWq2I2Z0Ya1lN1nETNyYsFUo=";
      name = "arm_arm926ej-s-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_arm926ej-s/packages/Packages";
    };
    packages =
      let
        p = ./arm_arm926ej-s/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_arm926ej-s/routing/";
    sourceInfo = {
      hash = "sha256-Ovt5bwSunaPWwkSZyHvJDQ+dWwwtNI3pxXBDsuC4Leo=";
      name = "arm_arm926ej-s-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_arm926ej-s/routing/Packages";
    };
    packages =
      let
        p = ./arm_arm926ej-s/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_arm926ej-s/telephony/";
    sourceInfo = {
      hash = "sha256-PWi6bo/BPT/BDArAAmtBO3132r+EYolgpRLqkfe5YC4=";
      name = "arm_arm926ej-s-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/arm_arm926ej-s/telephony/Packages";
    };
    packages =
      let
        p = ./arm_arm926ej-s/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
