# 25.12.0 mpc85xx/p1010
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mpc85xx/p1010/";
  sha256sums = {
    hash = "sha256-ke9v/3j6aFdre3Fg03yNkovpYJzBoSofwKYqt+OdlsY=";
    name = "mpc85xx_p1010-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mpc85xx/p1010/sha256sums";
  };
  imagebuilder = {
    sha256 = "3040c42857408599272948ce1a036c80a253c86db184249c93172eacb9f36e97";
    filename = "immortalwrt-imagebuilder-25.12.0-mpc85xx-p1010.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-RBV8NaDcBCw6pk8qKdVKW48lK7LDw6/ht2WpzYTmrzY=";
    name = "mpc85xx_p1010-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mpc85xx/p1010/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "a565c5c8b34f8fab06ebab93a323604d";
      version = "6.12.87";
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
    kmods_target = "6.12.87-1-a565c5c8b34f8fab06ebab93a323604d";
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
  kmods."6.12.87-1-a565c5c8b34f8fab06ebab93a323604d" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mpc85xx/p1010/kmods/6.12.87-1-a565c5c8b34f8fab06ebab93a323604d/";
    sourceInfo = {
      hash = "sha256-eX1sclnTG6DVQdwcnwVLglqWQvOUTPHcSMyq+SASJ3E=";
      name = "kmods-mpc85xx_p1010-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mpc85xx/p1010/kmods/6.12.87-1-a565c5c8b34f8fab06ebab93a323604d/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mpc85xx/p1010/packages/";
    sourceInfo = {
      hash = "sha256-2tV4verZR5ORVqg85Wkl16TKfYry++NDp0H8rVe+bi0=";
      name = "mpc85xx_p1010-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mpc85xx/p1010/packages/packages.adb";
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
