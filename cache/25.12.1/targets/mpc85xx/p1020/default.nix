# 25.12.1 mpc85xx/p1020
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/mpc85xx/p1020/";
  sha256sums = {
    hash = "sha256-xqa0bLoTzDs0RSSsyY69lGrFJsX4IzgoTgNTRk2qThw=";
    name = "mpc85xx_p1020-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/mpc85xx/p1020/sha256sums";
  };
  imagebuilder = {
    sha256 = "a6dd838fa615767da88523933b5f0b1134b21829ebe83725ea3162fc42b48331";
    filename = "immortalwrt-imagebuilder-25.12.1-mpc85xx-p1020.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-OZpN8HIZfrTzjAvzScNTl4NhoDs6lwvjAj0SuEFHBHI=";
    name = "mpc85xx_p1020-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/mpc85xx/p1020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "8e8164b868fe3a8ac0b15d66e059ff1d";
      version = "6.12.94";
    };
    default_packages = [
      "apk-openssl"
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
      "kmod-nft-offload"
      "kmod-usb2"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
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
    kmods_target = "6.12.94-1-8e8164b868fe3a8ac0b15d66e059ff1d";
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
  kmods."6.12.94-1-8e8164b868fe3a8ac0b15d66e059ff1d" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/mpc85xx/p1020/kmods/6.12.94-1-8e8164b868fe3a8ac0b15d66e059ff1d/";
    sourceInfo = {
      hash = "sha256-3JsHWgQqJHF7v9NtUsEzTod9BS//Ebcx2I9FwAgrGO0=";
      name = "kmods-mpc85xx_p1020-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/mpc85xx/p1020/kmods/6.12.94-1-8e8164b868fe3a8ac0b15d66e059ff1d/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/mpc85xx/p1020/packages/";
    sourceInfo = {
      hash = "sha256-2eJYq+c9to/hAIQd7tAvqNV/Y4eIy9fnlCiO0k1kMek=";
      name = "mpc85xx_p1020-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/mpc85xx/p1020/packages/packages.adb";
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
