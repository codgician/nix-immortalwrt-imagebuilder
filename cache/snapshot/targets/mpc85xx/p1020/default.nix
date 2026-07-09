# snapshot mpc85xx/p1020
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1020/";
  sha256sums = {
    hash = "sha256-UWnToEMYCfPxGhBg+8456ICeztNyX3eDt+6yg29QdLA=";
    name = "mpc85xx_p1020-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1020/sha256sums";
  };
  imagebuilder = {
    sha256 = "a58099ef5340e4dc28b5d145983656a695ee02f347c093908da347d42a68ef80";
    filename = "immortalwrt-imagebuilder-mpc85xx-p1020.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-2FBfh6shdA7xn1Bj6l3gQeQSoPJlX/CJPO9rCR468H0=";
    name = "mpc85xx_p1020-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "fd3ddf35155d535dafa10db39d872971";
      version = "6.12.94";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-ath9k"
      "kmod-crypto-hw-talitos"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nft-offload"
      "kmod-usb2"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "6.12.94-1-fd3ddf35155d535dafa10db39d872971";
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
  kmods."6.12.94-1-fd3ddf35155d535dafa10db39d872971" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1020/kmods/6.12.94-1-fd3ddf35155d535dafa10db39d872971/";
    sourceInfo = {
      hash = "sha256-HaKy3lTFMGsfeUaGQvEOLk94IKKJ93iB38jar6p9fYI=";
      name = "kmods-mpc85xx_p1020-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1020/kmods/6.12.94-1-fd3ddf35155d535dafa10db39d872971/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1020/packages/";
    sourceInfo = {
      hash = "sha256-zGJAa9Luq5CfxejtGeVc5IIt6MW7wuIl+mEcFIYuBOs=";
      name = "mpc85xx_p1020-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1020/packages/packages.adb";
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
