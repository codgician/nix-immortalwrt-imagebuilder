# 24.10.7 imx/cortexa53
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/imx/cortexa53/";
  sha256sums = {
    hash = "sha256-T2WNlSPaVJwtnYr5/VGJruSkCnpUIwoq5/mR5ggFitY=";
    name = "imx_cortexa53-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/imx/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "cbe99406905974355285dba19ca058eda24f6a384a73e4afac73331d321c68e1";
    filename = "immortalwrt-imagebuilder-24.10.7-imx-cortexa53.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Av1fD98Xl+LHIzVHeqqdmaczE4opDX4UObyPQsyBE7s=";
    name = "imx_cortexa53-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/imx/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "d5b789fe9f8da5239dd80f3228ee79a6";
      version = "6.6.159";
    };
    default_packages = [
      "base-files"
      "blkid"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
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
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.159-1-d5b789fe9f8da5239dd80f3228ee79a6";
    profiles = {
      gateworks_venice = {
        device_packages = [
          "kmod-hwmon-gsc"
          "kmod-rtc-ds1672"
          "kmod-eeprom-at24"
          "kmod-gpio-button-hotplug"
          "kmod-leds-gpio"
          "kmod-pps-gpio"
          "kmod-lan743x"
          "kmod-sky2"
          "kmod-iio-st_accel-i2c"
          "kmod-can"
          "kmod-can-flexcan"
          "kmod-can-mcp251x"
        ];
      };
    };
  };
  kmods."6.6.159-1-d5b789fe9f8da5239dd80f3228ee79a6" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/imx/cortexa53/kmods/6.6.159-1-d5b789fe9f8da5239dd80f3228ee79a6/";
    sourceInfo = {
      hash = "sha256-jpjH7Q0alIIcf4dKRvwA1OfQxiusDEcyXUcL0PNuKVs=";
      name = "kmods-imx_cortexa53-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/imx/cortexa53/kmods/6.6.159-1-d5b789fe9f8da5239dd80f3228ee79a6/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/imx/cortexa53/packages/";
    sourceInfo = {
      hash = "sha256-h+3/IVXLRjD9tVYS41ETAmQq/rm1ipiR92q+ch2N32I=";
      name = "imx_cortexa53-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/imx/cortexa53/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_cortex-a53";
  feeds = import ./../../../packages/aarch64_cortex-a53.nix;
}
