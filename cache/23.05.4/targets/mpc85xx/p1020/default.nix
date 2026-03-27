# 23.05.4 mpc85xx/p1020
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.4/targets/mpc85xx/p1020/";
  sha256sums = {
    hash = "sha256-lK/tbZoj/10K+eH0z7v3YI2stI3RguM0oiVBLsG7kz0=";
    name = "mpc85xx_p1020-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/mpc85xx/p1020/sha256sums";
  };
  imagebuilder = {
    sha256 = "6753f53e5608519ae9371e8a9161e933a58cc590cd5dc829b61ed647484f3a36";
    filename = "immortalwrt-imagebuilder-23.05.4-mpc85xx-p1020.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-yCTGg+W61NBJD6BKaD5CXcXag3VohxtIk4vsyWOD2Zs=";
    name = "mpc85xx_p1020-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/mpc85xx/p1020/profiles.json";
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.4/targets/mpc85xx/p1020/packages/";
    sourceInfo = {
      hash = "sha256-fl4zb8TzeGs/K5r4YSydyNrmmcg8D0BGybczr/HL/tQ=";
      name = "mpc85xx_p1020-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/mpc85xx/p1020/packages/Packages";
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
