# 25.12.0-rc2 package feeds for armeb_xscale
{
  sha256sums = {
    hash = "sha256-MKsRbolwcozqeBmDp9Kt15jxtlkrfvXwW7xK89TMvKs=";
    name = "armeb_xscale-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/armeb_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/armeb_xscale/base/";
    sourceInfo = {
      hash = "sha256-8rX1n6ry+XHZeHRDMA2SKDcRdMcbyroj3Rzq51nkutg=";
      name = "armeb_xscale-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/armeb_xscale/base/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/armeb_xscale/luci/";
    sourceInfo = {
      hash = "sha256-Q3AQ/SJNnDFao7Pn78WllvHBV6PZ8n5OjNaCM0Bgpok=";
      name = "armeb_xscale-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/armeb_xscale/luci/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/armeb_xscale/packages/";
    sourceInfo = {
      hash = "sha256-K04WPJbmDAqAtfv4vIeIA6UWeJ0xsqhZ5cWCqVAi9A4=";
      name = "armeb_xscale-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/armeb_xscale/packages/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/armeb_xscale/routing/";
    sourceInfo = {
      hash = "sha256-XwTbyyHpNusLXeuZAON8t+SE0+y6t435yTKLQqGDD3Y=";
      name = "armeb_xscale-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/armeb_xscale/routing/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/armeb_xscale/telephony/";
    sourceInfo = {
      hash = "sha256-Fhj08E/Nw7r15WYhpYScFfWOQuL30Hc8zseq98kuBKE=";
      name = "armeb_xscale-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/armeb_xscale/telephony/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
