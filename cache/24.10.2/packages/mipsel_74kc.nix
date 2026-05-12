# 24.10.2 package feeds for mipsel_74kc
{
  sha256sums = {
    hash = "sha256-mZrRHK+gTKG0OygxLsdjMb7xzFZgq3gkbkjefwqbnBA=";
    name = "mipsel_74kc-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_74kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_74kc/base/";
    sourceInfo = {
      hash = "sha256-9RLA/DNLvJdRf9EHU0hBsfYmbryVGlQFiGtscVvf2+E=";
      name = "mipsel_74kc-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_74kc/base/Packages";
    };
    packages =
      let
        p = ./mipsel_74kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_74kc/luci/";
    sourceInfo = {
      hash = "sha256-/AF8lsEL6NYyI20UuL+RFXc4eHFlTLg9U3yRAUDPxfk=";
      name = "mipsel_74kc-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_74kc/luci/Packages";
    };
    packages =
      let
        p = ./mipsel_74kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_74kc/packages/";
    sourceInfo = {
      hash = "sha256-OXK8CN9SD14oGuqGnmpQ9ILmhpeuXIvC/ZASQmIuUAw=";
      name = "mipsel_74kc-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_74kc/packages/Packages";
    };
    packages =
      let
        p = ./mipsel_74kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_74kc/routing/";
    sourceInfo = {
      hash = "sha256-641+dlKelFoHuyono2TWAI47A17GT4yFRXWQgT1RWXQ=";
      name = "mipsel_74kc-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_74kc/routing/Packages";
    };
    packages =
      let
        p = ./mipsel_74kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_74kc/telephony/";
    sourceInfo = {
      hash = "sha256-5To3UHc5b/xBfIg3sbONxfv40cVDrht4oZ7VhPpTK2g=";
      name = "mipsel_74kc-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_74kc/telephony/Packages";
    };
    packages =
      let
        p = ./mipsel_74kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
