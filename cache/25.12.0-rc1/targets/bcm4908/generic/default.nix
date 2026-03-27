# 25.12.0-rc1 bcm4908/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm4908/generic/";
  sha256sums = {
    hash = "sha256-tLChmCE8CsptthEmMCSNHY9eVcAH/U9wC0lf4fAnA5A=";
    name = "bcm4908_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm4908/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "2ba677e544247289e7febd56bd1790cc4cfce68181d5a77ffeb4dd2833dcc596";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-bcm4908-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-pDPZKHpE2k1I+sBjclAOtNRLuwGkK9NZszqpPIhuIEI=";
    name = "bcm4908_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm4908/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "46da12841bf5480b7ea3aa602781b9df";
      version = "6.12.74";
    };
    default_packages = [
      "apk-openssl"
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
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.74-1-46da12841bf5480b7ea3aa602781b9df";
    profiles = {
      asus_gt-ac5300 = {
        device_packages = [ ];
      };
      netgear_r8000p = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.74-1-46da12841bf5480b7ea3aa602781b9df" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm4908/generic/kmods/6.12.74-1-46da12841bf5480b7ea3aa602781b9df/";
    sourceInfo = {
      hash = "sha256-lfOFyRqAzzrgPQetHAJsSm50LpJj0o93x0yFuUiPvPU=";
      name = "kmods-bcm4908_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm4908/generic/kmods/6.12.74-1-46da12841bf5480b7ea3aa602781b9df/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm4908/generic/packages/";
    sourceInfo = {
      hash = "sha256-ffcl/ZcSBBcCT3MV6szllxcg5pbUWiKa7Ku/sQFJvZQ=";
      name = "bcm4908_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm4908/generic/packages/packages.adb";
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
