# 23.05.4 bcm4908/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.4/targets/bcm4908/generic/";
  sha256sums = {
    hash = "sha256-POKD+q+R9KhlD+5Tthwbn+eOppIt+ve1ADH/yEhUIA0=";
    name = "bcm4908_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/bcm4908/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "ae84ae778c33b82f9bfe35d49114777b9d7d0ea8ef0e4a916e3a8a32249d8228";
    filename = "immortalwrt-imagebuilder-23.05.4-bcm4908-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-QqkaqjHerFDpsvRpxUSAElIJaJmozKR0fHnwuNudZZs=";
    name = "bcm4908_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/bcm4908/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = null;
    default_packages = [
      "base-files"
      "bcm4908img"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "fdt-utils"
      "firewall4"
      "fstools"
      "ipv6helper"
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
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nftables"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
    profiles = {
      asus_gt-ac5300 = {
        device_packages = [ ];
      };
      netgear_r8000p = {
        device_packages = [ ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.4/targets/bcm4908/generic/packages/";
    sourceInfo = {
      hash = "sha256-CtLIV3g6o19VwoucBE7HgkusUaNe5w+lrS7F6nEP1hc=";
      name = "bcm4908_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/bcm4908/generic/packages/Packages";
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
