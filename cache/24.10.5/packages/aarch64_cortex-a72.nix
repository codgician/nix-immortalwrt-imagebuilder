# 24.10.5 package feeds for aarch64_cortex-a72
{
  sha256sums = {
    hash = "sha256-1YC9gVgk6bqkfatyZsm/QY0I6MjMnrc19+T92bivwDA=";
    name = "aarch64_cortex-a72-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/aarch64_cortex-a72/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/aarch64_cortex-a72/base/";
    sourceInfo = {
      hash = "sha256-BFFSmIW6rXSnCAuA4OlRKGU2awvVItQcuntMGQ49ii8=";
      name = "aarch64_cortex-a72-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/aarch64_cortex-a72/base/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/aarch64_cortex-a72/luci/";
    sourceInfo = {
      hash = "sha256-SGkD4gr1VKwkkrhku1tlhtW2OL9PedWfEnGCODBOsv0=";
      name = "aarch64_cortex-a72-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/aarch64_cortex-a72/luci/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/aarch64_cortex-a72/packages/";
    sourceInfo = {
      hash = "sha256-g2P2+t7Yz+q00M4Hvr8xDQ5zsrriwNT//zFJwjAfZu4=";
      name = "aarch64_cortex-a72-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/aarch64_cortex-a72/packages/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/aarch64_cortex-a72/routing/";
    sourceInfo = {
      hash = "sha256-n/+I3TKMzhTRwcdjs2I3zHD9CDoqpihwIyBfBoVynyI=";
      name = "aarch64_cortex-a72-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/aarch64_cortex-a72/routing/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/aarch64_cortex-a72/telephony/";
    sourceInfo = {
      hash = "sha256-WctnLFwYzdT56p1RBMww9QrPQxbGjw+7B98gPNP2AmU=";
      name = "aarch64_cortex-a72-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/aarch64_cortex-a72/telephony/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
