# 23.05.6 mpc85xx/p1010
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/mpc85xx/p1010/";
  sha256sums = {
    hash = "sha256-NfozPTPkebUpoiDnLfmhOBWSg/gBN5xVkXWKhTWb9jM=";
    name = "mpc85xx_p1010-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/mpc85xx/p1010/sha256sums";
  };
  imagebuilder = {
    sha256 = "09b1bd9e48d9566f68476c0fca00a9d9662ca0d3f8c15e979246d3196ccc5d68";
    filename = "immortalwrt-imagebuilder-23.05.6-mpc85xx-p1010.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-5UPWKTntuymWsqqshho0L4tnXY+Wsuhe3CKe7okOy1w=";
    name = "mpc85xx_p1010-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/mpc85xx/p1010/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "510c9aea0a67f22288e6acb61859dee8";
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
      "firewall4"
      "fstools"
      "kmod-ath9k"
      "kmod-button-hotplug"
      "kmod-input-core"
      "kmod-input-gpio-keys"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-usb2"
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
      "swconfig"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "5.15.189-1-510c9aea0a67f22288e6acb61859dee8";
    profiles = {
      aerohive_br200-wp = {
        device_packages = [ ];
      };
      enterasys_ws-ap3715i = {
        device_packages = [ ];
      };
      sophos_red-15w-rev1 = {
        device_packages = [ ];
      };
      tplink_tl-wdr4900-v1 = {
        device_packages = [ ];
      };
      watchguard_firebox-t10 = {
        device_packages = [
          "kmod-rtc-s35390a"
          "kmod-eeprom-at24"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/mpc85xx/p1010/packages/";
    sourceInfo = {
      hash = "sha256-R6fEDaIVVdK+ISqgfrSdhVhDt4d9lzjhpxf+FuAYQcs=";
      name = "mpc85xx_p1010-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/mpc85xx/p1010/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "powerpc_8548";
  feeds = import ./../../../packages/powerpc_8548.nix;
}
