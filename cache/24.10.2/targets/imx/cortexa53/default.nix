# 24.10.2 imx/cortexa53
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/imx/cortexa53/";
  sha256sums = {
    hash = "sha256-dZDgST4e5G6cKFaChOz9WGvv8ir5CUsF2/N8wmacu6k=";
    name = "imx_cortexa53-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/imx/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "1af2691a0bc3067cd7cbebb17ebddabc138b9735260eafff4fa941a6ef4742dc";
    filename = "immortalwrt-imagebuilder-24.10.2-imx-cortexa53.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-ZG/vfWJ2JLNkMpSAmVocgGz6FD7q6ehZL3YJXgXripU=";
    name = "imx_cortexa53-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/imx/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "6114d4cf980ef372c2cdf2767767b2ba";
      version = "6.6.93";
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
    kmods_target = "6.6.93-1-6114d4cf980ef372c2cdf2767767b2ba";
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
  kmods."6.6.93-1-6114d4cf980ef372c2cdf2767767b2ba" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/imx/cortexa53/kmods/6.6.93-1-6114d4cf980ef372c2cdf2767767b2ba/";
    sourceInfo = {
      hash = "sha256-KXUvGL0joIwk0nt4lCWzMsorBEVaOJ56GBJZtsORJF0=";
      name = "kmods-imx_cortexa53-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/imx/cortexa53/kmods/6.6.93-1-6114d4cf980ef372c2cdf2767767b2ba/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/imx/cortexa53/packages/";
    sourceInfo = {
      hash = "sha256-syQAftygBP5YKwJUziWJcdYiZYG3PqyNi/rLvLD8dG4=";
      name = "imx_cortexa53-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/imx/cortexa53/packages/Packages";
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
