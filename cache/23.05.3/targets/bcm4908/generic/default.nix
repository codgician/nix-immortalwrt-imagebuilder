# 23.05.3 bcm4908/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/bcm4908/generic/";
  sha256sums = {
    hash = "sha256-wAKpaQwDR5EQJ/fHGJEZ+LKbvKGKVfINmg5B7PgqYAA=";
    name = "bcm4908_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/bcm4908/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "1babdf95e010a8d8eb8c79a138cbaba57401de7486d30e5c819f9c9fb8d888d7";
    filename = "immortalwrt-imagebuilder-23.05.3-bcm4908-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-G3uqdC81ze4qHwX9uHgo4vRE8i+GSmOm5y5H392h3l0=";
    name = "bcm4908_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/bcm4908/generic/profiles.json";
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/bcm4908/generic/packages/";
    sourceInfo = {
      hash = "sha256-G8x2S6AOzeYe43hs8kdR2AHTWkwy4Q8A3e1bud2AIfE=";
      name = "bcm4908_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/bcm4908/generic/packages/Packages";
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
