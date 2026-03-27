# 23.05.2 bcm4908/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.2/targets/bcm4908/generic/";
  sha256sums = {
    hash = "sha256-K1Ru0710a9Te17uqmf8UWL6t6DfeOMfCK8W6Fbqqvds=";
    name = "bcm4908_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/bcm4908/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "9c210690c24ec4c0533dab4128dc461490a1ee99a06ba75bb5d0044e088eed96";
    filename = "immortalwrt-imagebuilder-23.05.2-bcm4908-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-Xl8n4H2ThvRs/Gpa2Fs/47kMrS7ZcByi0gT56x2u6xc=";
    name = "bcm4908_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/bcm4908/generic/profiles.json";
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
      "luci-lib-fs"
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.2/targets/bcm4908/generic/packages/";
    sourceInfo = {
      hash = "sha256-RvqNhWpMo9WiWN4jFbPhFG9NpSffHMFd31tR0kMtDAo=";
      name = "bcm4908_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/bcm4908/generic/packages/Packages";
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
