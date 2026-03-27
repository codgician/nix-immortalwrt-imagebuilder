# 23.05.6 bmips/bcm6358
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/bmips/bcm6358/";
  sha256sums = {
    hash = "sha256-jl0Xcb3+Zc704/ydgcl95EQ8n+i5H6BP0sO6jBi8K5s=";
    name = "bmips_bcm6358-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/bmips/bcm6358/sha256sums";
  };
  imagebuilder = {
    sha256 = "677f95c073cf9184feb0b7052445def6433d32a90d7633ad4435980d42d01140";
    filename = "immortalwrt-imagebuilder-23.05.6-bmips-bcm6358.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-C3Np0J3IMsh7g39XXj7rmuhOTI6Jr+HI5pwClwi9PKk=";
    name = "bmips_bcm6358-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/bmips/bcm6358/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "d5de7589d70f22ca3bee62a19101ffc7";
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
    kmods_target = "5.15.189-1-d5de7589d70f22ca3bee62a19101ffc7";
    profiles = {
      huawei_hg556a-b = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
          "iwinfo"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/bmips/bcm6358/packages/";
    sourceInfo = {
      hash = "sha256-pCBYlbRm4fUkmOMXj8B45B9M+ncn9A6YuHvNt0qwmk4=";
      name = "bmips_bcm6358-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/bmips/bcm6358/packages/Packages";
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
