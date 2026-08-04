# 24.10.3 package feeds for mipsel_24kc
{
  sha256sums = {
    hash = "sha256-PAt1szCUEkhh8aeR9Wt7TjSxfgYlsSveY63QdZOSTQc=";
    name = "mipsel_24kc-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mipsel_24kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mipsel_24kc/base/";
    sourceInfo = {
      hash = "sha256-dRyayq6aUu7MOug9CHr6flCScddcPuVVGB8pAzYS4k4=";
      name = "mipsel_24kc-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mipsel_24kc/base/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mipsel_24kc/luci/";
    sourceInfo = {
      hash = "sha256-WxtHeQvqAj5BLemIsH8pEcMhqKeIQgLbw+TvQ+A4JUA=";
      name = "mipsel_24kc-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mipsel_24kc/luci/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mipsel_24kc/packages/";
    sourceInfo = {
      hash = "sha256-PXt2HcsBV5eEYze6pXpHZ/yCoc86mFh++86rmCVMO2s=";
      name = "mipsel_24kc-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mipsel_24kc/packages/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mipsel_24kc/routing/";
    sourceInfo = {
      hash = "sha256-aw4CfOJOqrirFwZZFHpqNn0v6CH4zbxmVYfE7ndIDT4=";
      name = "mipsel_24kc-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mipsel_24kc/routing/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mipsel_24kc/telephony/";
    sourceInfo = {
      hash = "sha256-RtHeWKvBB37MVtlU9dOqeOB+wGtXJvCb+phgtDGpxH0=";
      name = "mipsel_24kc-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mipsel_24kc/telephony/Packages";
    };
    packages =
      let
        p = ./mipsel_24kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
