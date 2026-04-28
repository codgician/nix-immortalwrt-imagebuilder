# 24.10.6 bcm4908/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm4908/generic/";
  sha256sums = {
    hash = "sha256-qXfr9Ca2ddHgrvYvJ+Tpl9GHF43DO8x2aGbFjP8NhB0=";
    name = "bcm4908_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm4908/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "c772b26f30342dca9c0f06ca15b03086d61dc71bf261198db838a437e0d69a76";
    filename = "immortalwrt-imagebuilder-24.10.6-bcm4908-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-SwrzCWZBjgdhxZSiowfo3yxvKN4cjEm2wI2FZOtYyLg=";
    name = "bcm4908_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm4908/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "f7cc8c56a5e7f81d663eefe78617d62a";
      version = "6.6.133";
    };
    default_packages = [
      "base-files"
      "bcm4908img"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "fdt-utils"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-usb-ledtrig-usbport"
      "kmod-usb-ohci"
      "kmod-usb2"
      "kmod-usb3"
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
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.133-1-f7cc8c56a5e7f81d663eefe78617d62a";
    profiles = {
      asus_gt-ac5300 = {
        device_packages = [ ];
      };
      netgear_r8000p = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.6.133-1-f7cc8c56a5e7f81d663eefe78617d62a" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm4908/generic/kmods/6.6.133-1-f7cc8c56a5e7f81d663eefe78617d62a/";
    sourceInfo = {
      hash = "sha256-aehHWc+QLM3ChAxevoGXuvilvUMnD1oArOXrfeU5Pdg=";
      name = "kmods-bcm4908_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm4908/generic/kmods/6.6.133-1-f7cc8c56a5e7f81d663eefe78617d62a/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm4908/generic/packages/";
    sourceInfo = {
      hash = "sha256-ynQSkqn+5L5uQ25GralK8qWFNAFlKF6f1LDuAuhwOo8=";
      name = "bcm4908_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm4908/generic/packages/Packages";
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
