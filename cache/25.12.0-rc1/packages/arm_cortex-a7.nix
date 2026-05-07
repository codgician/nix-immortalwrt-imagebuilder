# 25.12.0-rc1 package feeds for arm_cortex-a7
{
  sha256sums = {
    hash = "sha256-dt/q/6WSOlHJIAUwTJ0Fw99s80XPO/Cly0ypN1yN+PE=";
    name = "arm_cortex-a7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7/base/";
    sourceInfo = {
      hash = "sha256-gVcNZ0ioDoW9LxrBz+91TwnITy3kbQh6sN4IswUfXnY=";
      name = "arm_cortex-a7-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7/luci/";
    sourceInfo = {
      hash = "sha256-sbnH+hxZOrLEbHYXzV+LqUDCrShZUSS45BIlqQl1yHE=";
      name = "arm_cortex-a7-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7/packages/";
    sourceInfo = {
      hash = "sha256-tFwWh2CHG6lW6VZ+rnqE0J1/TRQkVr7MfugfFcmHzLI=";
      name = "arm_cortex-a7-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7/routing/";
    sourceInfo = {
      hash = "sha256-ArQ/ZaybWpai3HrxTGl2RnM5KRrUy3yU62SVbgDfCy4=";
      name = "arm_cortex-a7-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7/telephony/";
    sourceInfo = {
      hash = "sha256-BgYMgAfat2lp/O+S/ExtRjY7ndBJl4TCaMvGKVsmA3M=";
      name = "arm_cortex-a7-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a7/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
