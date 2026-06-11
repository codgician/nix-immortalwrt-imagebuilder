# snapshot bcm4908/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm4908/generic/";
  sha256sums = {
    hash = "sha256-HMdDdeAncKAoXeZBLLAunZpFaybM12Gv99dux42RLtw=";
    name = "bcm4908_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm4908/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "49e8e50bdc50b637bbe4a0181b8bfe7e99cb2160b70bb24b19f335e1c18b92a1";
    filename = "immortalwrt-imagebuilder-bcm4908-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-D+52uYfKhuLB7c4OigAC50FIVCDRuDNIjQPsnqn+VEo=";
    name = "bcm4908_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm4908/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "826d6718301a57427219d426441ab286";
      version = "6.12.92";
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
    kmods_target = "6.12.92-1-826d6718301a57427219d426441ab286";
    profiles = {
      asus_gt-ac5300 = {
        device_packages = [ ];
      };
      netgear_r8000p = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.92-1-826d6718301a57427219d426441ab286" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm4908/generic/kmods/6.12.92-1-826d6718301a57427219d426441ab286/";
    sourceInfo = {
      hash = "sha256-pDQpuIFsq4pFWC+bl9NIDhR3z/xX4Xazp1gnjuIFyyw=";
      name = "kmods-bcm4908_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm4908/generic/kmods/6.12.92-1-826d6718301a57427219d426441ab286/packages.adb";
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
      hash = "sha256-KMLSmtNwMFiUDS7jQXJ8xBR15jkWTlPbr8cQc2/aQ3w=";
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
