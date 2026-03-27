# 24.10.1 bcm47xx/legacy
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm47xx/legacy/";
  sha256sums = {
    hash = "sha256-ZmkOVO7WpLG431RUkgFkyyBvdW/BD/fxElYQOgqiIqY=";
    name = "bcm47xx_legacy-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm47xx/legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "f4e2864ba513616d9214e2e53b0cb594acde3844301469b4e0098f698388ff87";
    filename = "immortalwrt-imagebuilder-24.10.1-bcm47xx-legacy.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-NL619KAoESQ85TsOHFa0aeF+9/MIWfcwvFnjBsp+Bmg=";
    name = "bcm47xx_legacy-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm47xx/legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "94cad683728f6ffc2a9ff42165ade70a";
      version = "6.6.86";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mtd"
      "netifd"
      "nftables"
      "nvram"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "otrx"
      "ppp"
      "ppp-mod-pppoe"
      "swconfig"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "6.6.86-1-94cad683728f6ffc2a9ff42165ade70a";
    profiles = {
      dlink_dwl-3150 = {
        device_packages = [ ];
      };
      standard = {
        device_packages = [ ];
      };
      standard-noloader-gz = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.6.86-1-94cad683728f6ffc2a9ff42165ade70a" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm47xx/legacy/kmods/6.6.86-1-94cad683728f6ffc2a9ff42165ade70a/";
    sourceInfo = {
      hash = "sha256-x2N2dykur1+z+ylFtmdpM+bM0qNPjlkTOdsb7xAS2vI=";
      name = "kmods-bcm47xx_legacy-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm47xx/legacy/kmods/6.6.86-1-94cad683728f6ffc2a9ff42165ade70a/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm47xx/legacy/packages/";
    sourceInfo = {
      hash = "sha256-coJwWbBJk+N43cGzfOPWA9vrEJU7p1LvkzqWs41+0Ts=";
      name = "bcm47xx_legacy-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm47xx/legacy/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mipsel_mips32";
  feeds = import ./../../../packages/mipsel_mips32.nix;
}
