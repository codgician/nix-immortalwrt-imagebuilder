# 24.10.2 package feeds for aarch64_cortex-a76
{
  sha256sums = {
    hash = "sha256-xhorMq7xmVMHf8nqZKOg2g8jYhveULAzsECZFOTaITM=";
    name = "aarch64_cortex-a76-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/aarch64_cortex-a76/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/aarch64_cortex-a76/base/";
    sourceInfo = {
      hash = "sha256-tcTC+/zrCR8Rplb7AQ8zkybv0FTuZgy90ou6tN+rAWw=";
      name = "aarch64_cortex-a76-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/aarch64_cortex-a76/base/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/aarch64_cortex-a76/luci/";
    sourceInfo = {
      hash = "sha256-dtk8YmiGnUe4i2Cff6un5Zw5HFom0fe1kdFu4/gGDYI=";
      name = "aarch64_cortex-a76-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/aarch64_cortex-a76/luci/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/aarch64_cortex-a76/packages/";
    sourceInfo = {
      hash = "sha256-DgDC/9LzhJdrKOqnvzgcVMAqLnoVgD1JbRJKFujUwjE=";
      name = "aarch64_cortex-a76-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/aarch64_cortex-a76/packages/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/aarch64_cortex-a76/routing/";
    sourceInfo = {
      hash = "sha256-XNn08vzt9nGyJ2nCf6cFi1sYnOoM05Sxm2k/ZVOJiUk=";
      name = "aarch64_cortex-a76-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/aarch64_cortex-a76/routing/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/aarch64_cortex-a76/telephony/";
    sourceInfo = {
      hash = "sha256-GPskwJRA4wBnFxYF5HIxZDWpf3oWCBtlPQOl9v88RdI=";
      name = "aarch64_cortex-a76-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/aarch64_cortex-a76/telephony/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
