# snapshot bcm4908/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm4908/generic/";
  sha256sums = {
    hash = "sha256-vPbGg0wC2bcvXZ4kUiYbAXo1fzbPctWtWzKAjQ8gSeo=";
    name = "bcm4908_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm4908/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "05ba01c2c24bf12fda35d7b067d53023fc685a57c598d37dce10b71c15b3d6da";
    filename = "immortalwrt-imagebuilder-bcm4908-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-+NR8rcacPoeGL2M/Ph8SWcO9ViP7ahM43Oqixb41FHo=";
    name = "bcm4908_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm4908/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "3288e25b781b581a4befc937a6c5008d";
      version = "6.12.108";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "bcm4908img"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "fdt-utils"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nft-offload"
      "kmod-usb-ledtrig-usbport"
      "kmod-usb-ohci"
      "kmod-usb2"
      "kmod-usb3"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
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
    kmods_target = "6.12.108-1-3288e25b781b581a4befc937a6c5008d";
    profiles = {
      asus_gt-ac5300 = {
        device_packages = [ ];
      };
      netgear_r8000p = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.108-1-3288e25b781b581a4befc937a6c5008d" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm4908/generic/kmods/6.12.108-1-3288e25b781b581a4befc937a6c5008d/";
    sourceInfo = {
      hash = "sha256-6g/xGocZLenqdiMQybZUcNCHLQouwIal0NX/dPWIGSs=";
      name = "kmods-bcm4908_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm4908/generic/kmods/6.12.108-1-3288e25b781b581a4befc937a6c5008d/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm4908/generic/packages/";
    sourceInfo = {
      hash = "sha256-WhwGp8qQ3hIYewN8XKZWDAyX8wQRzXeyFgNbUCmz02k=";
      name = "bcm4908_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm4908/generic/packages/packages.adb";
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
