# 24.10.0 package feeds for aarch64_cortex-a72
{
  sha256sums = {
    hash = "sha256-CJZznNGXqCq+AxXo3zJp5PczBCO7Bc8ETvfl8pzmU3E=";
    name = "aarch64_cortex-a72-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/aarch64_cortex-a72/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/aarch64_cortex-a72/base/";
    sourceInfo = {
      hash = "sha256-K0RVUw6ZVKLtcP17TKdUp8Hj+Q5RZf+EOc11y0Wt1pM=";
      name = "aarch64_cortex-a72-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/aarch64_cortex-a72/base/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/aarch64_cortex-a72/luci/";
    sourceInfo = {
      hash = "sha256-/pGTofqcWYeHb1MnX83kfFRtuQywp5WbEzHhAQ33++0=";
      name = "aarch64_cortex-a72-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/aarch64_cortex-a72/luci/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/aarch64_cortex-a72/packages/";
    sourceInfo = {
      hash = "sha256-sIl5CFC7BzxuUxbS2ELAOsGhwcuwxHQiX9yDl7Ba180=";
      name = "aarch64_cortex-a72-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/aarch64_cortex-a72/packages/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/aarch64_cortex-a72/routing/";
    sourceInfo = {
      hash = "sha256-fbavZ36L2Ga2fmUpXVm64HpBXGW87MGyOEp73ToOLF8=";
      name = "aarch64_cortex-a72-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/aarch64_cortex-a72/routing/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/aarch64_cortex-a72/telephony/";
    sourceInfo = {
      hash = "sha256-XJAZSdRg1vfU19rpGohf+oY90uyxIiFci3nTE1lbJ80=";
      name = "aarch64_cortex-a72-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/aarch64_cortex-a72/telephony/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
