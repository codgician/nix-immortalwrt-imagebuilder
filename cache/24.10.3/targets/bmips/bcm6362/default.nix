# 24.10.3 bmips/bcm6362
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bmips/bcm6362/";
  sha256sums = {
    hash = "sha256-hRbcPpvpofh9/mbQykHYlxcTAxpq4UukGxcA/DQUqbI=";
    name = "bmips_bcm6362-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bmips/bcm6362/sha256sums";
  };
  imagebuilder = {
    sha256 = "52b7036d9d0d35a18efee155ae03307c2b446790f9cd3524b200d5a08146d131";
    filename = "immortalwrt-imagebuilder-24.10.3-bmips-bcm6362.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-PQbVyDJtDpg4ZHXzjHbs9QY1F1PbhXL7aJ7620+qU2U=";
    name = "bmips_bcm6362-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bmips/bcm6362/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "58be79c36241aa74b17046bbdca402df";
      version = "6.6.104";
    };
    default_packages = [
      "base-files"
      "block-mount"
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
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.104-1-58be79c36241aa74b17046bbdca402df";
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
  kmods."6.6.104-1-58be79c36241aa74b17046bbdca402df" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bmips/bcm6362/kmods/6.6.104-1-58be79c36241aa74b17046bbdca402df/";
    sourceInfo = {
      hash = "sha256-IB1YmMSMFVpg2HhUPV9mFIXiW8pV0rGxXQvVjiY/Ogw=";
      name = "kmods-bmips_bcm6362-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bmips/bcm6362/kmods/6.6.104-1-58be79c36241aa74b17046bbdca402df/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bmips/bcm6362/packages/";
    sourceInfo = {
      hash = "sha256-yee61Nm24ZpEeqy/P0jjVvZKL5QSpF0g5wBdrFAh0Cw=";
      name = "bmips_bcm6362-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bmips/bcm6362/packages/Packages";
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
