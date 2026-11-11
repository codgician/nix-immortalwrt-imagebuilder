# 24.10.5 package feeds for arm_xscale
{
  sha256sums = {
    hash = "sha256-u9OBqqN7pteT8AHLOBls3r05aTyq5MmcB92S/KDc4fk=";
    name = "arm_xscale-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_xscale/base/";
    sourceInfo = {
      hash = "sha256-XATAHNUdQIpLaXO1yDkhrE3K6YSIsTn1I2/BmU9sCQc=";
      name = "arm_xscale-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_xscale/base/Packages";
    };
    packages =
      let
        p = ./arm_xscale/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_xscale/luci/";
    sourceInfo = {
      hash = "sha256-3Qn23EiCMFIsZ02zJI0CinNn95Q5mk+lIiOxHyoKJMI=";
      name = "arm_xscale-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_xscale/luci/Packages";
    };
    packages =
      let
        p = ./arm_xscale/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_xscale/packages/";
    sourceInfo = {
      hash = "sha256-TF8u8oH8l5iOSEGi9OGpQI8natTEHXgy+ahROgvRdYo=";
      name = "arm_xscale-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_xscale/packages/Packages";
    };
    packages =
      let
        p = ./arm_xscale/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_xscale/routing/";
    sourceInfo = {
      hash = "sha256-xfXRWAiFrc1Zadr7+AF5Eef+lchXdViwoVxTdyS03qA=";
      name = "arm_xscale-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_xscale/routing/Packages";
    };
    packages =
      let
        p = ./arm_xscale/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_xscale/telephony/";
    sourceInfo = {
      hash = "sha256-DU6eEZjv/Rdz8CvsX6p9ukW5V/rbPU2499H31R/1Fhg=";
      name = "arm_xscale-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_xscale/telephony/Packages";
    };
    packages =
      let
        p = ./arm_xscale/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
