# snapshot bcm4908/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm4908/generic/";
  sha256sums = {
    hash = "sha256-flINojpo9Wl29aH0SgCIS0C3476gEFeGwxARNAe9oK0=";
    name = "bcm4908_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm4908/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "30db09f32d4bebf6a5586c23984826c82b59c88ea09d433170caba4f51b16ca6";
    filename = "immortalwrt-imagebuilder-bcm4908-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-DIHHAceda7cuvbDt1YV/GSxnDRDjlUuUKRl9bzTs2lM=";
    name = "bcm4908_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm4908/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "b3eb54231e77940d4cb92b038ae762c9";
      version = "6.12.94";
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
    kmods_target = "6.12.94-1-b3eb54231e77940d4cb92b038ae762c9";
    profiles = {
      asus_gt-ac5300 = {
        device_packages = [ ];
      };
      netgear_r8000p = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.94-1-b3eb54231e77940d4cb92b038ae762c9" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm4908/generic/kmods/6.12.94-1-b3eb54231e77940d4cb92b038ae762c9/";
    sourceInfo = {
      hash = "sha256-c9O0clmcbfzm4t1E6hGgjLq4fLFIo7JB9KuBPB/coNo=";
      name = "kmods-bcm4908_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm4908/generic/kmods/6.12.94-1-b3eb54231e77940d4cb92b038ae762c9/packages.adb";
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
      hash = "sha256-jz7FRfaWLkDAYuPaDz3lLSIypXX+/3a1nk4lq+pJqjY=";
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
