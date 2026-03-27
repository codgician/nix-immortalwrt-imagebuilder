# 24.10.4 bmips/bcm6358
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bmips/bcm6358/";
  sha256sums = {
    hash = "sha256-ZgjJKlPNNOlZ7Xbsbja3NnwtmezPGf6JuAzApqEez4Q=";
    name = "bmips_bcm6358-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bmips/bcm6358/sha256sums";
  };
  imagebuilder = {
    sha256 = "4e32dfaa8edee0a5685e660acb64183b485f8ac0c6ae00323890d2b381291298";
    filename = "immortalwrt-imagebuilder-24.10.4-bmips-bcm6358.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-buIJTovaexY0v7wdnHwR14/3nBhLDTlABIhVRYXBgQ8=";
    name = "bmips_bcm6358-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bmips/bcm6358/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "82908e7827eaaf81274b1f0c10c743f9";
      version = "6.6.110";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
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
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.110-1-82908e7827eaaf81274b1f0c10c743f9";
    profiles = {
      huawei_hg556a-b = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.110-1-82908e7827eaaf81274b1f0c10c743f9" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bmips/bcm6358/kmods/6.6.110-1-82908e7827eaaf81274b1f0c10c743f9/";
    sourceInfo = {
      hash = "sha256-5VXCT/wo3P1fE/NKvuDFMsmOxYq2RyURvlfCVjD0OXg=";
      name = "kmods-bmips_bcm6358-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bmips/bcm6358/kmods/6.6.110-1-82908e7827eaaf81274b1f0c10c743f9/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bmips/bcm6358/packages/";
    sourceInfo = {
      hash = "sha256-XYqWA/g1SJgmG1TJyho9NDhH5Os8UA2CYBEWqiBttXg=";
      name = "bmips_bcm6358-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bmips/bcm6358/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_mips32";
  feeds = import ./../../../packages/mips_mips32.nix;
}
