# 23.05.6 bmips/bcm6318
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/bmips/bcm6318/";
  sha256sums = {
    hash = "sha256-0pFpWILfL5NcNucoai8QpPsiQTHVNMsLQ3MAvL9dy70=";
    name = "bmips_bcm6318-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/bmips/bcm6318/sha256sums";
  };
  imagebuilder = {
    sha256 = "b095bc3eaa9170281f5e2931f639b8cb8edcd03a488c5dc86a74a301f8ce212c";
    filename = "immortalwrt-imagebuilder-23.05.6-bmips-bcm6318.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-q6NLX4PJJhddFyUs7r0IZ4tJP10jGleUr5SAPw9bEiI=";
    name = "bmips_bcm6318-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/bmips/bcm6318/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "6f95cc64d7c1eb11e110fdbd16e30a54";
      version = "5.15.189";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "5.15.189-1-6f95cc64d7c1eb11e110fdbd16e30a54";
    profiles = {
      comtrend_ar-5315u = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43217-sprom"
          "kmod-leds-bcm6328"
          "iwinfo"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/bmips/bcm6318/packages/";
    sourceInfo = {
      hash = "sha256-feUR0Ht2wp9I8Khnl82KbwyVEmjryQsf8MlNgkGgzYw=";
      name = "bmips_bcm6318-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/bmips/bcm6318/packages/Packages";
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
