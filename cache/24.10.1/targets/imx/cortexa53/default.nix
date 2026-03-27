# 24.10.1 imx/cortexa53
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/imx/cortexa53/";
  sha256sums = {
    hash = "sha256-lyT1xqLLMeMBIhGaRCa779pXNMMmAttAVtvXyGePssk=";
    name = "imx_cortexa53-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/imx/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "ff616e0aad5a47a7a73ccb2e29dfee51095d4da9dab59b8183c72b865b60e202";
    filename = "immortalwrt-imagebuilder-24.10.1-imx-cortexa53.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-r2g0NXd5JkfP/CK9LyY7qKF50D46YrEAvbmcTd1xLP8=";
    name = "imx_cortexa53-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/imx/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "df57963a48825ee8f56f2ae0a0c72aa9";
      version = "6.6.86";
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
    kmods_target = "6.6.86-1-df57963a48825ee8f56f2ae0a0c72aa9";
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
  kmods."6.6.86-1-df57963a48825ee8f56f2ae0a0c72aa9" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/imx/cortexa53/kmods/6.6.86-1-df57963a48825ee8f56f2ae0a0c72aa9/";
    sourceInfo = {
      hash = "sha256-wccgINJhvJ9gl4z1FUQtrto6Vqut1CNpRS0plUwYj9k=";
      name = "kmods-imx_cortexa53-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/imx/cortexa53/kmods/6.6.86-1-df57963a48825ee8f56f2ae0a0c72aa9/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/imx/cortexa53/packages/";
    sourceInfo = {
      hash = "sha256-NHuBN+XM22n7W3vAlVHQOjBV/LsTqD1gGqxwxp3akww=";
      name = "imx_cortexa53-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/imx/cortexa53/packages/Packages";
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
