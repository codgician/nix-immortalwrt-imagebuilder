# 25.12.0-rc1 mpc85xx/p1020
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mpc85xx/p1020/";
  sha256sums = {
    hash = "sha256-W5YawuWb3+4AigDSag9xuVdyuuBWCnyy4zDtmQT2aU8=";
    name = "mpc85xx_p1020-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mpc85xx/p1020/sha256sums";
  };
  imagebuilder = {
    sha256 = "ac0a68c49c9d1c019652a29ff801f360971bd10d0f95c38640c5d721e7b4f9cb";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-mpc85xx-p1020.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-yFkiAvULApD+2dI/dv8xSCxVjft4z35mXq8msP9JY7w=";
    name = "mpc85xx_p1020-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mpc85xx/p1020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "cef9885c2827e9d3149a4432c0071d58";
      version = "6.12.74";
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
    kmods_target = "6.12.74-1-cef9885c2827e9d3149a4432c0071d58";
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
  kmods."6.12.74-1-cef9885c2827e9d3149a4432c0071d58" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mpc85xx/p1020/kmods/6.12.74-1-cef9885c2827e9d3149a4432c0071d58/";
    sourceInfo = {
      hash = "sha256-q6EHGfVcsSQvrO1kY/UprluiYSlZMImXbRVR6K84v5c=";
      name = "kmods-mpc85xx_p1020-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mpc85xx/p1020/kmods/6.12.74-1-cef9885c2827e9d3149a4432c0071d58/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mpc85xx/p1020/packages/";
    sourceInfo = {
      hash = "sha256-o+eH0PERnhIkIAMKrgqmzAG4eCrEBfNjB4mf/nVn3Wo=";
      name = "mpc85xx_p1020-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mpc85xx/p1020/packages/packages.adb";
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
