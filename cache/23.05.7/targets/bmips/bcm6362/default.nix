# 23.05.7 bmips/bcm6362
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bmips/bcm6362/";
  sha256sums = {
    hash = "sha256-4pCXVomGicQOMdj7fGRhSMNmwGAPlaBzJ7GQ8msPkoo=";
    name = "bmips_bcm6362-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bmips/bcm6362/sha256sums";
  };
  imagebuilder = {
    sha256 = "038f88e81abe1398250051e6936f804503d3cfd56782686703841e229e14d20c";
    filename = "immortalwrt-imagebuilder-23.05.7-bmips-bcm6362.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-oX3szgW6RPFYbbGPo48WdkT/PxLgauqg9OW6K/D+BR8=";
    name = "bmips_bcm6362-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bmips/bcm6362/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "6eef92ccea1f26878d0caa1dd84f8eab";
      version = "5.15.195";
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
    kmods_target = "5.15.195-1-6eef92ccea1f26878d0caa1dd84f8eab";
    profiles = {
      huawei_hg253s-v2 = {
        device_packages = [
          "nand-utils"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-leds-bcm6328"
          "kmod-leds-gpio"
        ];
      };
      netgear_dgnd3700-v2 = {
        device_packages = [
          "nand-utils"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-leds-bcm6328"
          "kmod-leds-gpio"
          "iwinfo"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bmips/bcm6362/packages/";
    sourceInfo = {
      hash = "sha256-805DNo8BW4fLYpDEE3IvLyYQaRe/xslhmlmbAJP3mjQ=";
      name = "bmips_bcm6362-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bmips/bcm6362/packages/Packages";
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
