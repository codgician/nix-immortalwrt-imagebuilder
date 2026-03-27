# 24.10.0 bcm4908/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm4908/generic/";
  sha256sums = {
    hash = "sha256-Z9qQAVw+Tqf/jeh4Pgi0jeVTbOjuQ8SmcWGIALGOTj0=";
    name = "bcm4908_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm4908/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "dd8fa4342737912ba23563edd1de6f3ceee1641c7b7a4e035af08e28a5389232";
    filename = "immortalwrt-imagebuilder-24.10.0-bcm4908-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-en4/157r6Cabb6p/7F2ENaaD7Mi7M7+vzOdVHAwXQvc=";
    name = "bcm4908_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm4908/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "b378cfc59ce3f3c5af144a02e9df870d";
      version = "6.6.73";
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
    kmods_target = "6.6.73-1-b378cfc59ce3f3c5af144a02e9df870d";
    profiles = {
      asus_gt-ac5300 = {
        device_packages = [ ];
      };
      netgear_r8000p = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.6.73-1-b378cfc59ce3f3c5af144a02e9df870d" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm4908/generic/kmods/6.6.73-1-b378cfc59ce3f3c5af144a02e9df870d/";
    sourceInfo = {
      hash = "sha256-dIfk7NbQNTNcs4zlpING3SGKQvNiAxORu49gGPpJEUg=";
      name = "kmods-bcm4908_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm4908/generic/kmods/6.6.73-1-b378cfc59ce3f3c5af144a02e9df870d/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm4908/generic/packages/";
    sourceInfo = {
      hash = "sha256-9jGumq8ewio3/WBFusCZ4LHpYl9woituBd65q3IUPpA=";
      name = "bcm4908_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm4908/generic/packages/Packages";
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
