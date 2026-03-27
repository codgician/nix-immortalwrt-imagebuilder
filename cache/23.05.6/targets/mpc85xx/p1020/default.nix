# 23.05.6 mpc85xx/p1020
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/mpc85xx/p1020/";
  sha256sums = {
    hash = "sha256-nm7QmZZSyH6+3JrlzGvnkiDFwW5sQXgsw2vQs4csIyg=";
    name = "mpc85xx_p1020-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/mpc85xx/p1020/sha256sums";
  };
  imagebuilder = {
    sha256 = "422957e5ab4e611ecb9ca2ac9bf6ba4d08425e0b3dcb9bca39ee388ace884e0f";
    filename = "immortalwrt-imagebuilder-23.05.6-mpc85xx-p1020.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-grKnr7+7I6XlcUB+AwcFifCVoFJArMiqkboJQQ7euJM=";
    name = "mpc85xx_p1020-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/mpc85xx/p1020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "e195b222cc7827b978539252e3594bf9";
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
    kmods_target = "5.15.189-1-e195b222cc7827b978539252e3594bf9";
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/mpc85xx/p1020/packages/";
    sourceInfo = {
      hash = "sha256-+ypzDqHqwexb54/YUPk6vsh0OXaD+geitreGp0cLYUw=";
      name = "mpc85xx_p1020-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/mpc85xx/p1020/packages/Packages";
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
