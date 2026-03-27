# 23.05.3 mpc85xx/p1020
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/mpc85xx/p1020/";
  sha256sums = {
    hash = "sha256-ZireuXeUYkOWgOl0Cu+/CTTgCoVXYNL/4vs7UG6cn2Q=";
    name = "mpc85xx_p1020-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/mpc85xx/p1020/sha256sums";
  };
  imagebuilder = {
    sha256 = "3619e36de2030baa0b02f00b1877819b4ce202da168c9bac8845cee20a67f59b";
    filename = "immortalwrt-imagebuilder-23.05.3-mpc85xx-p1020.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-yMhjmdNeFqHfPQ5JTdXl/5ieI5UsPv7dyxMtbzQwfGY=";
    name = "mpc85xx_p1020-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/mpc85xx/p1020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = null;
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
      "ipv6helper"
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
    kmods_target = "null-null-null";
    profiles = {
      aerohive_hiveap-330 = {
        device_packages = [
          "kmod-tpm-i2c-atmel"
          "kmod-hwmon-lm70"
        ];
      };
      enterasys_ws-ap3710i = {
        device_packages = [ ];
      };
      extreme-networks_ws-ap3825i = {
        device_packages = [
          "kmod-ath10k-ct"
          "ath10k-firmware-qca988x-ct"
        ];
      };
      hpe_msm460 = {
        device_packages = [ ];
      };
      ocedo_panda = {
        device_packages = [ "kmod-rtc-ds1307" ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/mpc85xx/p1020/packages/";
    sourceInfo = {
      hash = "sha256-LEGJrQ+rjQF/zWwcxvhWon0wbtffrbgobNyiNdFtXr4=";
      name = "mpc85xx_p1020-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/mpc85xx/p1020/packages/Packages";
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
