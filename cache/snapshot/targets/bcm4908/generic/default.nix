# snapshot bcm4908/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm4908/generic/";
  sha256sums = {
    hash = "sha256-0pHTBJyZpl3jQPjMqG6PgMkn3qr/rC00CqPet6IZ/6I=";
    name = "bcm4908_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm4908/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "8dc8dcd66f6ab54a8fc7dd2b446f6d1eb6b9a32043de3e2dde844e4136f85516";
    filename = "immortalwrt-imagebuilder-bcm4908-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-5t/LytyLzkf3ZY94bbaXASC07CO9mkKGoCwOiPDtelA=";
    name = "bcm4908_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm4908/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "255d6a3953a198514bafff2b89394a26";
      version = "6.18.60";
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
    kmods_target = "6.18.60-1-255d6a3953a198514bafff2b89394a26";
    profiles = {
      asus_gt-ac5300 = {
        device_packages = [ ];
      };
      netgear_r8000p = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.18.60-1-255d6a3953a198514bafff2b89394a26" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm4908/generic/kmods/6.18.60-1-255d6a3953a198514bafff2b89394a26/";
    sourceInfo = {
      hash = "sha256-xaDdI6pPR86sCpWWjpBtIoPA0WZj5cmO6MBW7zaZFeA=";
      name = "kmods-bcm4908_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm4908/generic/kmods/6.18.60-1-255d6a3953a198514bafff2b89394a26/packages.adb";
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
      hash = "sha256-Z8dwqBIR1pntJkw70Zb6xBR0OZRmRIopjxorxPrB83I=";
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
