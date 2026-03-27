# snapshot bmips/bcm6358
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6358/";
  sha256sums = {
    hash = "sha256-xg6nwtrplvFdHvUo3CLtKYZ0IWtPvrBDsZrgHkKfh0s=";
    name = "bmips_bcm6358-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6358/sha256sums";
  };
  imagebuilder = {
    sha256 = "c965f5970a77045e68ff063fb748ba812d28a6c0929a729d734a6c8a4a3948c7";
    filename = "immortalwrt-imagebuilder-bmips-bcm6358.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Acj+bRunDHBvUD8OKGSo/7snNhTQla/UIIbN0uJc7fA=";
    name = "bmips_bcm6358-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6358/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "7e99bad6c14f22c5922668d9cb864d1f";
      version = "6.12.77";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nft-offload"
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
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.77-1-7e99bad6c14f22c5922668d9cb864d1f";
    profiles = {
      huawei_hg553 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
        ];
      };
      huawei_hg556a-a = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
        ];
      };
      huawei_hg556a-b = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
        ];
      };
      huawei_hg556a-c = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-rt2800-pci"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
        ];
      };
    };
  };
  kmods."6.12.77-1-7e99bad6c14f22c5922668d9cb864d1f" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6358/kmods/6.12.77-1-7e99bad6c14f22c5922668d9cb864d1f/";
    sourceInfo = {
      hash = "sha256-5pyicWM0qk605qlyREk3DCrm5uQYpTNgOYUTsaI1v3w=";
      name = "kmods-bmips_bcm6358-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6358/kmods/6.12.77-1-7e99bad6c14f22c5922668d9cb864d1f/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6358/packages/";
    sourceInfo = {
      hash = "sha256-IYZLw0hd+7wXYoJZ532g7q3DlRwK3bnpGApRlShqwUg=";
      name = "bmips_bcm6358-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6358/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_mips32";
  feeds = import ./../../../packages/mips_mips32.nix;
}
