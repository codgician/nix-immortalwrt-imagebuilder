# snapshot mpc85xx/p1020
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1020/";
  sha256sums = {
    hash = "sha256-1g3aL03MKm4IWxLAIoZcxjJbtjxXyVHnJX9tvIerSYI=";
    name = "mpc85xx_p1020-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1020/sha256sums";
  };
  imagebuilder = {
    sha256 = "b3bc7f5a7dfb9fdb01e12bb294b00aa1187146a78a787dfdaef8cb36ae1c9d06";
    filename = "immortalwrt-imagebuilder-mpc85xx-p1020.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-fUyxeFSqYRjCnIxQziFIbfsXj6fycXKrRgQW6u6OMn4=";
    name = "mpc85xx_p1020-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "186fad60cf3bdeec394cff1ae0a88baa";
      version = "6.18.52";
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
    kmods_target = "6.18.52-1-186fad60cf3bdeec394cff1ae0a88baa";
    profiles = {
      aerohive_hiveap-330 = {
        device_packages = [
          "kmod-tpm-i2c-atmel"
          "kmod-hwmon-lm70"
          "kmod-phy-at803x"
        ];
      };
      enterasys_ws-ap3710i = {
        device_packages = [ "kmod-phy-at803x" ];
      };
      extreme-networks_ws-ap3825i = {
        device_packages = [
          "kmod-ath10k-ct"
          "ath10k-firmware-qca988x-ct"
          "kmod-phy-at803x"
        ];
      };
      hpe_msm460 = {
        device_packages = [ "kmod-phy-marvell" ];
      };
      ocedo_panda = {
        device_packages = [
          "kmod-rtc-ds1307"
          "kmod-dsa-b53-mdio"
          "kmod-phy-broadcom"
        ];
      };
    };
  };
  kmods."6.18.52-1-186fad60cf3bdeec394cff1ae0a88baa" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1020/kmods/6.18.52-1-186fad60cf3bdeec394cff1ae0a88baa/";
    sourceInfo = {
      hash = "sha256-POQAfTE/eU2VtcUJKw1EOUNqNXTOArEBcEYE1vcFhXY=";
      name = "kmods-mpc85xx_p1020-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1020/kmods/6.18.52-1-186fad60cf3bdeec394cff1ae0a88baa/packages.adb";
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
      hash = "sha256-cevkzlSSLePLTANb1iIhl3C5Hu2Z06TNOzeyQr/mMUY=";
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
