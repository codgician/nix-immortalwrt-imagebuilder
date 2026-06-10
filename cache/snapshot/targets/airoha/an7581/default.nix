# snapshot airoha/an7581
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7581/";
  sha256sums = {
    hash = "sha256-dOzxNSA4D3x7PPjqtmu01bNUBSiS+JgU3q40P/v1Dvk=";
    name = "airoha_an7581-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7581/sha256sums";
  };
  imagebuilder = {
    sha256 = "d27686a8f5fd29ba8fd4edca91e8e829c28a3c389022012f395f732db8c7d054";
    filename = "immortalwrt-imagebuilder-airoha-an7581.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-8CFoV8wJspnNilwsz06D0K7krB4RdOtq4rBI5aRd0UY=";
    name = "airoha_an7581-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7581/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "13c4baeaa3583ba04bd78fbf8a96d83a";
      version = "6.18.34";
    };
    default_packages = [
      "airoha-en7581-npu-firmware"
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nft-offload"
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
    ];
    kmods_target = "6.18.34-1-13c4baeaa3583ba04bd78fbf8a96d83a";
    profiles = {
      airoha_an7581-evb = {
        device_packages = [
          "kmod-leds-pwm"
          "kmod-i2c-an7581"
          "kmod-pwm-airoha"
          "kmod-input-gpio-keys-polled"
        ];
      };
      airoha_an7581-evb-emmc-eagle = {
        device_packages = [
          "kmod-i2c-an7581"
          "airoha-en7581-mt7996-npu-firmware"
          "kmod-mt7996-firmware"
          "wpad-openssl"
        ];
      };
      airoha_an7581-evb-emmc-kite = {
        device_packages = [
          "kmod-i2c-an7581"
          "airoha-en7581-npu-firmware"
          "kmod-mt7992-firmware"
          "wpad-openssl"
        ];
      };
      gemtek_w1700k-ubi = {
        device_packages = [
          "airoha-en7581-mt7996-npu-firmware"
          "fitblk"
          "kmod-i2c-an7581"
          "kmod-hwmon-nct7802"
          "kmod-mt7996-firmware"
          "wpad-openssl"
          "rtl8261n-firmware"
        ];
      };
      nokia_valyrian = {
        device_packages = [
          "kmod-spi-gpio"
          "kmod-gpio-nxp-74hc164"
          "kmod-leds-gpio"
          "kmod-i2c-an7581"
          "kmod-i2c-gpio"
          "kmod-iio-richtek-rtq6056"
          "kmod-sfp"
          "kmod-phy-aeonsemi-as21xxx"
          "kmod-mt7996-firmware"
        ];
      };
    };
  };
  kmods."6.18.34-1-13c4baeaa3583ba04bd78fbf8a96d83a" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7581/kmods/6.18.34-1-13c4baeaa3583ba04bd78fbf8a96d83a/";
    sourceInfo = {
      hash = "sha256-pKJ9S3DWx589EeJOnYsEjezYqH63LAo2RnI2os1xUJ8=";
      name = "kmods-airoha_an7581-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7581/kmods/6.18.34-1-13c4baeaa3583ba04bd78fbf8a96d83a/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7581/packages/";
    sourceInfo = {
      hash = "sha256-7yrvA0iQXSktuy/s2dVzhPv1E65np1/E/9oC3fr8/h0=";
      name = "airoha_an7581-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7581/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_cortex-a53";
  feeds = import ./../../../packages/aarch64_cortex-a53.nix;
}
