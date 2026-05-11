# 24.10.6 package feeds for arm_fa526
{
  sha256sums = {
    hash = "sha256-J2A/Y8j+VZ4TT4K5i5hpuwrJDLTzlS4b5Gu9Of8esHk=";
    name = "arm_fa526-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_fa526/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_fa526/base/";
    sourceInfo = {
      hash = "sha256-N5OAJL2BIgYkhLMauIAxIOnWEwXmds7vm0T5Zcz0X7c=";
      name = "arm_fa526-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_fa526/base/Packages";
    };
    packages =
      let
        p = ./arm_fa526/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_fa526/luci/";
    sourceInfo = {
      hash = "sha256-T0rRG38rsGtNSou1C3cFRWNA3d7zLbm3R/cpXnOzZ+0=";
      name = "arm_fa526-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_fa526/luci/Packages";
    };
    packages =
      let
        p = ./arm_fa526/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_fa526/packages/";
    sourceInfo = {
      hash = "sha256-n0LUc7lPb77S6JMU5rKh3bKBzdpQE7UzBh8RwunanOQ=";
      name = "arm_fa526-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_fa526/packages/Packages";
    };
    packages =
      let
        p = ./arm_fa526/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_fa526/routing/";
    sourceInfo = {
      hash = "sha256-XIlmWizGwN0iIBDLUwFhHPL9p8U07MePTtX0u3rWz+k=";
      name = "arm_fa526-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_fa526/routing/Packages";
    };
    packages =
      let
        p = ./arm_fa526/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_fa526/telephony/";
    sourceInfo = {
      hash = "sha256-FCYYjyHoBcRXs6phvHaeGrJh8FAg9kYTCOF+GRPSwsw=";
      name = "arm_fa526-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/arm_fa526/telephony/Packages";
    };
    packages =
      let
        p = ./arm_fa526/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
