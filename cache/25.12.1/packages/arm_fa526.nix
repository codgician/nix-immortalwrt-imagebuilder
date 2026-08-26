# 25.12.1 package feeds for arm_fa526
{
  sha256sums = {
    hash = "sha256-8BCAdQjvs9XdTwXSwDj1eDDiWE1V2mH6+ECmBPDkq90=";
    name = "arm_fa526-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_fa526/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_fa526/base/";
    sourceInfo = {
      hash = "sha256-3ph6S22WuPQNHnpvl4WJao1mCwbysEYEoQji0uPZtR0=";
      name = "arm_fa526-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_fa526/base/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_fa526/luci/";
    sourceInfo = {
      hash = "sha256-q+2Acg0prx00y0NI1DoBatANYjN7mW/rfJo4vL9pP6c=";
      name = "arm_fa526-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_fa526/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_fa526/packages/";
    sourceInfo = {
      hash = "sha256-584nmzJsj9EhhaV8yB/NsJpo1mAS0AL27yxCvrFgL0o=";
      name = "arm_fa526-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_fa526/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_fa526/routing/";
    sourceInfo = {
      hash = "sha256-+EbJ5PS8FFJwi6YcPIjtpV3OnZvY25p1KiQk+ag9wmY=";
      name = "arm_fa526-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_fa526/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_fa526/telephony/";
    sourceInfo = {
      hash = "sha256-4+/4nE0L2HG1mTkFuutK0ZsGTOwGG3mvTrOV+1OhSEI=";
      name = "arm_fa526-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_fa526/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
