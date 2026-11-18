# snapshot mpc85xx/p1010
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1010/";
  sha256sums = {
    hash = "sha256-S/vMYLD1ug2D2PnYUMw4t7XuUUrypYym+6UcGDtWwA0=";
    name = "mpc85xx_p1010-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1010/sha256sums";
  };
  imagebuilder = {
    sha256 = "ce7e0db0da5632410ef98472910f8517e6f45014eb20eb6e327f725922a2d696";
    filename = "immortalwrt-imagebuilder-mpc85xx-p1010.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-85OIuYER6y+2szKnhfdZY/OIbHCwzzRQgMURfhE3tCg=";
    name = "mpc85xx_p1010-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1010/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "44175cb45c54406f4cf6c85babcea300";
      version = "6.18.60";
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
    kmods_target = "6.18.60-1-44175cb45c54406f4cf6c85babcea300";
    profiles = {
      aerohive_br200-wp = {
        device_packages = [ "kmod-dsa-qca8k" ];
      };
      enterasys_ws-ap3715i = {
        device_packages = [ "kmod-phy-at803x" ];
      };
      sophos_red-15w-rev1 = {
        device_packages = [ "kmod-phy-realtek" ];
      };
      tplink_tl-wdr4900-v1 = {
        device_packages = [
          "kmod-usb-ledtrig-usbport"
          "kmod-dsa-qca8k"
        ];
      };
      watchguard_firebox-t10 = {
        device_packages = [
          "kmod-rtc-s35390a"
          "kmod-eeprom-at24"
          "kmod-phy-at803x"
        ];
      };
      watchguard_firebox-t15 = {
        device_packages = [
          "kmod-rtc-s35390a"
          "kmod-eeprom-at24"
          "kmod-phy-at803x"
        ];
      };
    };
  };
  kmods."6.18.60-1-44175cb45c54406f4cf6c85babcea300" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1010/kmods/6.18.60-1-44175cb45c54406f4cf6c85babcea300/";
    sourceInfo = {
      hash = "sha256-mLeYYpCSwsyE4tHAi6wjer33TPXxIWNdy5SYs62syw0=";
      name = "kmods-mpc85xx_p1010-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1010/kmods/6.18.60-1-44175cb45c54406f4cf6c85babcea300/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1010/packages/";
    sourceInfo = {
      hash = "sha256-1D9sS9KchQ3LlmkX4L5NfZptCzyLaTcx9nidEBX4SrU=";
      name = "mpc85xx_p1010-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1010/packages/packages.adb";
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
