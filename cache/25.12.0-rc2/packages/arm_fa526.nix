# 25.12.0-rc2 package feeds for arm_fa526
{
  sha256sums = {
    hash = "sha256-AnpAETwuiiz06u6M9pwF4Z87djIyhCOrgBFjfWfoNew=";
    name = "arm_fa526-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_fa526/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_fa526/base/";
    sourceInfo = {
      hash = "sha256-5TLMHdPgFwjaT+HXCFgI6sndV1q8170J2aWOC9M+wu8=";
      name = "arm_fa526-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_fa526/base/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_fa526/luci/";
    sourceInfo = {
      hash = "sha256-bMTI0Qx+aPSAeiMPr6eCox09x7WRgjEBug2evm4thcs=";
      name = "arm_fa526-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_fa526/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_fa526/packages/";
    sourceInfo = {
      hash = "sha256-aaRNAfToQtIQi9MhgU1uWeZoBKq+ooe+Hm44SmONH6Y=";
      name = "arm_fa526-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_fa526/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_fa526/routing/";
    sourceInfo = {
      hash = "sha256-+GnafRVp+SjcmRZZxbyraMz8LGoHxWj9JtL89h0U40o=";
      name = "arm_fa526-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_fa526/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_fa526/telephony/";
    sourceInfo = {
      hash = "sha256-rwjB3opS7VK4QJh82LaceFzxdOjw4QxoW2fgQTpRAl0=";
      name = "arm_fa526-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_fa526/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
