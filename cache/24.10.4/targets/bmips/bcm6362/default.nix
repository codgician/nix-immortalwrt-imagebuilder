# 24.10.4 bmips/bcm6362
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bmips/bcm6362/";
  sha256sums = {
    hash = "sha256-VG0RMqa03mQ5hTNKQV2vR5eb9UZdr8JATLpqeOxW4nM=";
    name = "bmips_bcm6362-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bmips/bcm6362/sha256sums";
  };
  imagebuilder = {
    sha256 = "b2d4f0c30d252f8b23cb8c3f22f84c876344e69a91c753dc606f726af7e47770";
    filename = "immortalwrt-imagebuilder-24.10.4-bmips-bcm6362.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-rbLRT9PkYaDbgoeJKxaxywMtrkGUk2QTg0tVjLT3yi8=";
    name = "bmips_bcm6362-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bmips/bcm6362/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "2e23c92d99d27dce0685a23a41679d0c";
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
    kmods_target = "6.6.110-1-2e23c92d99d27dce0685a23a41679d0c";
    profiles = {
      huawei_hg253s-v2 = {
        device_packages = [
          "nand-utils"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-leds-bcm6328"
          "kmod-leds-gpio"
        ];
      };
      netgear_dgnd3700-v2 = {
        device_packages = [
          "nand-utils"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-leds-bcm6328"
          "kmod-leds-gpio"
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.110-1-2e23c92d99d27dce0685a23a41679d0c" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bmips/bcm6362/kmods/6.6.110-1-2e23c92d99d27dce0685a23a41679d0c/";
    sourceInfo = {
      hash = "sha256-0Y5p0tYZL80ZseZ7NyBEqxnTx2YcNfFcy/ZKxLY3fvU=";
      name = "kmods-bmips_bcm6362-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bmips/bcm6362/kmods/6.6.110-1-2e23c92d99d27dce0685a23a41679d0c/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bmips/bcm6362/packages/";
    sourceInfo = {
      hash = "sha256-uApv9W5FceqQ6+J/+8ng/HqcfKtnmlu1qImKSDZez4w=";
      name = "bmips_bcm6362-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bmips/bcm6362/packages/Packages";
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
