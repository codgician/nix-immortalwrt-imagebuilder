# snapshot bcm47xx/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/generic/";
  sha256sums = {
    hash = "sha256-Yd4L0f7rYG2Ef5y32DRf46KEtLltdHVlFNw3aTC815c=";
    name = "bcm47xx_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "b8067fbeaa3e088577b6de17ffefb04fadd0961a3896e70d94394b2640b8cce8";
    filename = "immortalwrt-imagebuilder-bcm47xx-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Khqb6X9c0WBy5mlOYe7Ies1ldg5UruqoxYXTDaF1koI=";
    name = "bcm47xx_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "87bffc2e38f2c3d94f6c48255f012ad9";
      version = "6.12.92";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mtd"
      "netifd"
      "nftables"
      "nvram"
      "odhcp6c"
      "odhcpd-ipv6only"
      "otrx"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "swconfig"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "6.12.92-1-87bffc2e38f2c3d94f6c48255f012ad9";
    profiles = {
      linksys_e3000-v1 = {
        device_packages = [
          "kmod-bgmac"
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      linksys_wrt610n-v1 = {
        device_packages = [
          "kmod-tg3"
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      linksys_wrt610n-v2 = {
        device_packages = [
          "kmod-bgmac"
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      standard = {
        device_packages = [
          "kmod-b44"
          "kmod-bgmac"
          "kmod-tg3"
        ];
      };
    };
  };
  kmods."6.12.92-1-87bffc2e38f2c3d94f6c48255f012ad9" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/generic/kmods/6.12.92-1-87bffc2e38f2c3d94f6c48255f012ad9/";
    sourceInfo = {
      hash = "sha256-BYFt/mFhsdZ/To2FU4RwvtEWNCTkLelGXw+p2AYeRLo=";
      name = "kmods-bcm47xx_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/generic/kmods/6.12.92-1-87bffc2e38f2c3d94f6c48255f012ad9/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/generic/packages/";
    sourceInfo = {
      hash = "sha256-wQapJHX4ErBlpfzvcfeBB4WHavKRvtl44b1VdqQ5pzo=";
      name = "bcm47xx_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/generic/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mipsel_mips32";
  feeds = import ./../../../packages/mipsel_mips32.nix;
}
