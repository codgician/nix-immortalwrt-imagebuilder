# 24.10.3 package feeds for aarch64_cortex-a53
{
  sha256sums = {
    hash = "sha256-ODFwRv7XdqsDKkP+ny5wAZMkVFKaCQa3eJ6KcU07l1Q=";
    name = "aarch64_cortex-a53-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/aarch64_cortex-a53/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/aarch64_cortex-a53/base/";
    sourceInfo = {
      hash = "sha256-En9DZheij067i98dN5CgPCXfq4dqROkl8beojopEkMs=";
      name = "aarch64_cortex-a53-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/aarch64_cortex-a53/base/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/aarch64_cortex-a53/luci/";
    sourceInfo = {
      hash = "sha256-ZOVjGsglJlfoYPeArruStcuLoC+NmhFINNZIr5DKP7U=";
      name = "aarch64_cortex-a53-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/aarch64_cortex-a53/luci/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/aarch64_cortex-a53/packages/";
    sourceInfo = {
      hash = "sha256-iPqcO21rL73CulBKFyNsvYO9eNwIIDu7OwjAG4R1aYI=";
      name = "aarch64_cortex-a53-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/aarch64_cortex-a53/packages/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/aarch64_cortex-a53/routing/";
    sourceInfo = {
      hash = "sha256-hjwTbnAk0FxzEX3+upHgz0PX+oZT0MTmMB29d0T1W6M=";
      name = "aarch64_cortex-a53-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/aarch64_cortex-a53/routing/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/aarch64_cortex-a53/telephony/";
    sourceInfo = {
      hash = "sha256-r++5LL3YtMSZn/NHV4AG/OMvEKPFYe4HL/53Af02a1s=";
      name = "aarch64_cortex-a53-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/aarch64_cortex-a53/telephony/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
