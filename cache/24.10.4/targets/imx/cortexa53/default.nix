# 24.10.4 imx/cortexa53
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/imx/cortexa53/";
  sha256sums = {
    hash = "sha256-VR9CmC1IUkkBwMV4Ghq/FPnWiYqGTD34qnfNNnmw/es=";
    name = "imx_cortexa53-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/imx/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "655be65c52da9a945a744d5e0c42c0995d85b9fc8f352b439a99ec587a27b4e9";
    filename = "immortalwrt-imagebuilder-24.10.4-imx-cortexa53.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-PcQntDmUI2hNoTn3oq0nQbh1AR+lSkrJoaH5TUs/bFs=";
    name = "imx_cortexa53-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/imx/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "3505442b73217b5ee9339268fe31f465";
      version = "6.6.110";
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
    kmods_target = "6.6.110-1-3505442b73217b5ee9339268fe31f465";
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
  kmods."6.6.110-1-3505442b73217b5ee9339268fe31f465" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/imx/cortexa53/kmods/6.6.110-1-3505442b73217b5ee9339268fe31f465/";
    sourceInfo = {
      hash = "sha256-1LnX1UnA6hLF0WOXgiNmC71G4yGA/gA7K/qfN3Bzzcw=";
      name = "kmods-imx_cortexa53-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/imx/cortexa53/kmods/6.6.110-1-3505442b73217b5ee9339268fe31f465/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/imx/cortexa53/packages/";
    sourceInfo = {
      hash = "sha256-f8TyyDMRt523wpRtJbZHXwWanVac+mcUs9iGKJXt94o=";
      name = "imx_cortexa53-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/imx/cortexa53/packages/Packages";
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
