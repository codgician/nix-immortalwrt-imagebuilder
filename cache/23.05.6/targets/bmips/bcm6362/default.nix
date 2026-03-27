# 23.05.6 bmips/bcm6362
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/bmips/bcm6362/";
  sha256sums = {
    hash = "sha256-0c7IRTDNfl6nQkIEKLtopnBQ3amXkHW4mG1YRWm2ARg=";
    name = "bmips_bcm6362-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/bmips/bcm6362/sha256sums";
  };
  imagebuilder = {
    sha256 = "347f70e77767907358f129330ee66aad20dce29ff291daccc13b62dc122df818";
    filename = "immortalwrt-imagebuilder-23.05.6-bmips-bcm6362.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-MpuMqNJDhcmkMdnoJkcRVXfqMvb5VK3GmuryRijHXfA=";
    name = "bmips_bcm6362-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/bmips/bcm6362/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "6eef92ccea1f26878d0caa1dd84f8eab";
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
    kmods_target = "5.15.189-1-6eef92ccea1f26878d0caa1dd84f8eab";
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/bmips/bcm6362/packages/";
    sourceInfo = {
      hash = "sha256-9TLVTRgX3crforM7NJ5L+6to9+GWnVg7AEl2SUtiTko=";
      name = "bmips_bcm6362-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/bmips/bcm6362/packages/Packages";
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
