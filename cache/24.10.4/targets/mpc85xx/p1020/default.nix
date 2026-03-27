# 24.10.4 mpc85xx/p1020
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mpc85xx/p1020/";
  sha256sums = {
    hash = "sha256-hClNo8Ryjy6SK4c2/OjWrFsy4rJH1YovZ+mYUIfMDgM=";
    name = "mpc85xx_p1020-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mpc85xx/p1020/sha256sums";
  };
  imagebuilder = {
    sha256 = "ad793eb3e307e362386e4103731f361ef156fee6374a39ac8686abe7b93fbe60";
    filename = "immortalwrt-imagebuilder-24.10.4-mpc85xx-p1020.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-3TcbSe+mEsa0QmPhgWf0/71s3y/Zu32GEopjwmouRGo=";
    name = "mpc85xx_p1020-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mpc85xx/p1020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "b27c01dd572c8ee3aeda394a661bcbd6";
      version = "6.6.110";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-ath9k"
      "kmod-button-hotplug"
      "kmod-crypto-hw-talitos"
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
      "swconfig"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "6.6.110-1-b27c01dd572c8ee3aeda394a661bcbd6";
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
  kmods."6.6.110-1-b27c01dd572c8ee3aeda394a661bcbd6" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mpc85xx/p1020/kmods/6.6.110-1-b27c01dd572c8ee3aeda394a661bcbd6/";
    sourceInfo = {
      hash = "sha256-hMVCg35ZeHm6DG7m3L5iJKwd+A5WYOe7VW6uvcBSz7o=";
      name = "kmods-mpc85xx_p1020-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mpc85xx/p1020/kmods/6.6.110-1-b27c01dd572c8ee3aeda394a661bcbd6/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mpc85xx/p1020/packages/";
    sourceInfo = {
      hash = "sha256-QdEHV9pM2rwlOyf0I16Uvl5kRWJNCW/ssZOVr4mFKYE=";
      name = "mpc85xx_p1020-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mpc85xx/p1020/packages/Packages";
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
