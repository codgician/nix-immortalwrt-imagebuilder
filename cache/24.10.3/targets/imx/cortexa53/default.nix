# 24.10.3 imx/cortexa53
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/imx/cortexa53/";
  sha256sums = {
    hash = "sha256-DBEZMeJvAK754Yf3SBonXV+qwDoDGnfkEHKkc4wYlCw=";
    name = "imx_cortexa53-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/imx/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "ea60cbe846b923854d0c092833ddfa69ceaa972294419381bed0bf9b85f22cf3";
    filename = "immortalwrt-imagebuilder-24.10.3-imx-cortexa53.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-4fbE6AMclXiyGlN93/kuwdlJNl/G7iQ7J6mVo4y2BUk=";
    name = "imx_cortexa53-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/imx/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "6114d4cf980ef372c2cdf2767767b2ba";
      version = "6.6.104";
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
    kmods_target = "6.6.104-1-6114d4cf980ef372c2cdf2767767b2ba";
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
  kmods."6.6.104-1-6114d4cf980ef372c2cdf2767767b2ba" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/imx/cortexa53/kmods/6.6.104-1-6114d4cf980ef372c2cdf2767767b2ba/";
    sourceInfo = {
      hash = "sha256-eyTACQYYNELpxuQUf/lM0FQspW+DjutX0SclDDUJ+u0=";
      name = "kmods-imx_cortexa53-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/imx/cortexa53/kmods/6.6.104-1-6114d4cf980ef372c2cdf2767767b2ba/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/imx/cortexa53/packages/";
    sourceInfo = {
      hash = "sha256-3A/NNXbltriWCehrzd47z6NGsNxM8SzJlYrJBTaeI7Q=";
      name = "imx_cortexa53-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/imx/cortexa53/packages/Packages";
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
