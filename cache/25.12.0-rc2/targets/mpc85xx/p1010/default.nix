# 25.12.0-rc2 mpc85xx/p1010
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mpc85xx/p1010/";
  sha256sums = {
    hash = "sha256-Hp5iWYSBBQ517c63HCzUC0kKB1AnN4emXT1aj4t817c=";
    name = "mpc85xx_p1010-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mpc85xx/p1010/sha256sums";
  };
  imagebuilder = {
    sha256 = "61f7b6427cf620da06eb27e06c8b6efbea171bdd8685255f8ebc79c566727190";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-mpc85xx-p1010.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-vjlq13OHZMMw2JsOE+2vPpk5lNQJ7PWem3DkrAmt5BQ=";
    name = "mpc85xx_p1010-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mpc85xx/p1010/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "9577f8e614dc3930f788af88aeea436b";
      version = "6.12.79";
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
    kmods_target = "6.12.79-1-9577f8e614dc3930f788af88aeea436b";
    profiles = {
      aerohive_br200-wp = {
        device_packages = [ ];
      };
      enterasys_ws-ap3715i = {
        device_packages = [ ];
      };
      sophos_red-15w-rev1 = {
        device_packages = [ ];
      };
      tplink_tl-wdr4900-v1 = {
        device_packages = [ "kmod-usb-ledtrig-usbport" ];
      };
      watchguard_firebox-t10 = {
        device_packages = [
          "kmod-rtc-s35390a"
          "kmod-eeprom-at24"
        ];
      };
      watchguard_firebox-t15 = {
        device_packages = [
          "kmod-rtc-s35390a"
          "kmod-eeprom-at24"
        ];
      };
    };
  };
  kmods."6.12.79-1-9577f8e614dc3930f788af88aeea436b" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mpc85xx/p1010/kmods/6.12.79-1-9577f8e614dc3930f788af88aeea436b/";
    sourceInfo = {
      hash = "sha256-R1yMV89Kp/NY0cQLGEkHZLyKbZPifqYvh1TgyStpYV0=";
      name = "kmods-mpc85xx_p1010-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mpc85xx/p1010/kmods/6.12.79-1-9577f8e614dc3930f788af88aeea436b/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mpc85xx/p1010/packages/";
    sourceInfo = {
      hash = "sha256-2No6wN7rq/JWMFaTcapEbhSU9swb6U6bY8/X/VSyXOI=";
      name = "mpc85xx_p1010-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mpc85xx/p1010/packages/packages.adb";
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
