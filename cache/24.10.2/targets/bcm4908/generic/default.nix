# 24.10.2 bcm4908/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm4908/generic/";
  sha256sums = {
    hash = "sha256-ZlIeaQ59MS+ejry+qHAUlcBj5w/yEIGDlFsttlJAn1Y=";
    name = "bcm4908_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm4908/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "08bb1b3c05871f1596844913366c408cae3e22ec71aff8ba423e3ee669c26e1d";
    filename = "immortalwrt-imagebuilder-24.10.2-bcm4908-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-MRmBM4GlC/xp78D4754jV0upZmZkdLoMvhS6aW9ozes=";
    name = "bcm4908_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm4908/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "76db5becf28bf4aa1b4c2dbf9666c607";
      version = "6.6.93";
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
    kmods_target = "6.6.93-1-76db5becf28bf4aa1b4c2dbf9666c607";
    profiles = {
      asus_gt-ac5300 = {
        device_packages = [ ];
      };
      netgear_r8000p = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.6.93-1-76db5becf28bf4aa1b4c2dbf9666c607" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm4908/generic/kmods/6.6.93-1-76db5becf28bf4aa1b4c2dbf9666c607/";
    sourceInfo = {
      hash = "sha256-08DIUjSL358kiKZpjpGL3HXEeZCYYO/Ph5N6muyQ24s=";
      name = "kmods-bcm4908_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm4908/generic/kmods/6.6.93-1-76db5becf28bf4aa1b4c2dbf9666c607/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm4908/generic/packages/";
    sourceInfo = {
      hash = "sha256-VyizXODeZnjJ2gLlPr9sHwrdRDGBASCrOlXOH6K0UeA=";
      name = "bcm4908_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm4908/generic/packages/Packages";
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
