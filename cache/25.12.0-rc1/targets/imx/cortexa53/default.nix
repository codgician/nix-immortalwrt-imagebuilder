# 25.12.0-rc1 imx/cortexa53
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/imx/cortexa53/";
  sha256sums = {
    hash = "sha256-5SBEUVtruS/JzYUlyEhhTM8gCDkP9SrXi3UDG7Pz+nI=";
    name = "imx_cortexa53-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/imx/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "17ee192d17e5584bf4446a9ca98488b97270a22525a6804ab299b77bcef9d6f2";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-imx-cortexa53.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-bJ+/XIBr7cZf4ysp94GOl3LwjIfWt31vTnMxOffBxro=";
    name = "imx_cortexa53-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/imx/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "1b83daf5ba50e1f7387ef5c83b960fa5";
      version = "6.12.74";
    };
    default_packages = [
      "apk-openssl"
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
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.74-1-1b83daf5ba50e1f7387ef5c83b960fa5";
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
  kmods."6.12.74-1-1b83daf5ba50e1f7387ef5c83b960fa5" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/imx/cortexa53/kmods/6.12.74-1-1b83daf5ba50e1f7387ef5c83b960fa5/";
    sourceInfo = {
      hash = "sha256-DzdKB8hILqOu84cKZIlFrpCvZgveJ7ZAUJlGjwk6tmo=";
      name = "kmods-imx_cortexa53-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/imx/cortexa53/kmods/6.12.74-1-1b83daf5ba50e1f7387ef5c83b960fa5/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/imx/cortexa53/packages/";
    sourceInfo = {
      hash = "sha256-bRghMWWR0yYYOciyDh2EfiVtPlrbCUci1TqKDr14jzg=";
      name = "imx_cortexa53-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/imx/cortexa53/packages/packages.adb";
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
