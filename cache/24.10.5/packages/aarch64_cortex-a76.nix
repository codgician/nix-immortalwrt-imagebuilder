# 24.10.5 package feeds for aarch64_cortex-a76
{
  sha256sums = {
    hash = "sha256-Gjdfb8siDoEuGJaN2DN36ZgS1xC3CTKz9eR7BIkxytI=";
    name = "aarch64_cortex-a76-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/aarch64_cortex-a76/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/aarch64_cortex-a76/base/";
    sourceInfo = {
      hash = "sha256-FcYvYeuvUYYCU0MIyAU9xkHqbLd0niOHMTbKNj4tD1k=";
      name = "aarch64_cortex-a76-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/aarch64_cortex-a76/base/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/aarch64_cortex-a76/luci/";
    sourceInfo = {
      hash = "sha256-sHIjxK30kHfICeY2UpNxi9BNQdoPWkKdd9qozVep0X8=";
      name = "aarch64_cortex-a76-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/aarch64_cortex-a76/luci/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/aarch64_cortex-a76/packages/";
    sourceInfo = {
      hash = "sha256-lnJu9tRZsEYSXYm2+qrly0yWbt43Bk+V9ega+ubB0f4=";
      name = "aarch64_cortex-a76-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/aarch64_cortex-a76/packages/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/aarch64_cortex-a76/routing/";
    sourceInfo = {
      hash = "sha256-i/klx3C0WP9AtITLj6ZwqaTRJ83B3ofofG0Yv9xLcXA=";
      name = "aarch64_cortex-a76-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/aarch64_cortex-a76/routing/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/aarch64_cortex-a76/telephony/";
    sourceInfo = {
      hash = "sha256-1AZjj3jT2CdEaM8I7qNgM9FXqR+wPxEIC/4HDuR8U6g=";
      name = "aarch64_cortex-a76-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/aarch64_cortex-a76/telephony/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
