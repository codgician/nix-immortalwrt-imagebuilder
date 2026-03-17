# snapshot package feeds for mipsel_24kc
{
  sha256sums = {
    hash = "sha256-OjE3UZa5UxMwuO4c74uLGTbUEKXZ7G1GRR1vKC6hzwg=";
    name = "mipsel_24kc-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_24kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_24kc/base/";
    sourceInfo = {
      hash = "sha256-q8zwxwObSPEvM9x0l4eDo2hi+TG/cb/HDZTpOdYXzu8=";
      name = "mipsel_24kc-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_24kc/base/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_24kc/luci/";
    sourceInfo = {
      hash = "sha256-M4IEy4/pmA6E1dMw5au5ndosOqeYHqO85KWPnvH9O4M=";
      name = "mipsel_24kc-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_24kc/luci/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_24kc/packages/";
    sourceInfo = {
      hash = "sha256-Cq7L5aUVX7iRNga+EIGBwezKtOEhR6crzMt4WxcAhR4=";
      name = "mipsel_24kc-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_24kc/packages/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_24kc/routing/";
    sourceInfo = {
      hash = "sha256-mvw7tMcovEDP6UrEDNu5XHHk3vJSXw87l08wDRqtb4o=";
      name = "mipsel_24kc-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_24kc/routing/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_24kc/telephony/";
    sourceInfo = {
      hash = "sha256-1rnPCbn/FBJZWFVOZEcO1Bf/PcDIUJa5QVBNagYbtWw=";
      name = "mipsel_24kc-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_24kc/telephony/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
