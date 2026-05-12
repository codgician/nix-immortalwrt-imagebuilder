# 24.10.4 package feeds for arm_cortex-a9
{
  sha256sums = {
    hash = "sha256-xZEd4DCDg7lJKjvj6we/cQEPuY2pHrnKHZFO8DSVnKQ=";
    name = "arm_cortex-a9-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a9/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a9/base/";
    sourceInfo = {
      hash = "sha256-/wqFgcyVvRa6xgMScVRr9yXk4QPWxrAeiJ8dxJpQPy8=";
      name = "arm_cortex-a9-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a9/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a9/luci/";
    sourceInfo = {
      hash = "sha256-CFhH/Ruk0SlWK+pcQUWiGMJ5FKhKPJYkIUfE6pABshs=";
      name = "arm_cortex-a9-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a9/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a9/packages/";
    sourceInfo = {
      hash = "sha256-8sSso9AJ6gJekOiX+GxQhAfhmaI9pjmnRhdm79xpRRI=";
      name = "arm_cortex-a9-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a9/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a9/routing/";
    sourceInfo = {
      hash = "sha256-9ZLyDF8/7qq2IOt6Scqhu08/7db110H+6r0JoxTxuyc=";
      name = "arm_cortex-a9-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a9/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a9/telephony/";
    sourceInfo = {
      hash = "sha256-1ALRJkc3X2v3hMz11UYwj+IEyiSJ6SI/N4Z0CofWaw4=";
      name = "arm_cortex-a9-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a9/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
