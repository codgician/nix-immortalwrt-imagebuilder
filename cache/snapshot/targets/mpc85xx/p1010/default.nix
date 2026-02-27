# snapshot mpc85xx/p1010
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mpc85xx/p1010/";
  sha256sums = {
    hash = "sha256-EhFeu3iRq+UobIBU8CEAsCltykgNCjmmt73aLYG4l9A=";
    name = "mpc85xx_p1010-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mpc85xx/p1010/sha256sums";
  };
  imagebuilder = {
    sha256 = "29ce7169f8157e70b0fc4289b447bdbecabea4dd2254b3329765b3cade7718ec";
    filename = "immortalwrt-imagebuilder-mpc85xx-p1010.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-4pfGk0LwxDGaH247b/B6109EpC1pHosGJdPEpNkTGNY=";
    name = "mpc85xx_p1010-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mpc85xx/p1010/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "bf3ccfc728ecba1ba43d17c51ca97a5f";
      version = "6.12.67";
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
      "kmod-button-hotplug"
      "kmod-crypto-hw-talitos"
      "kmod-input-core"
      "kmod-input-gpio-keys"
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
      "swconfig"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "6.12.67-1-bf3ccfc728ecba1ba43d17c51ca97a5f";
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
  kmods."6.12.67-1-bf3ccfc728ecba1ba43d17c51ca97a5f" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mpc85xx/p1010/kmods/6.12.67-1-bf3ccfc728ecba1ba43d17c51ca97a5f/";
    sourceInfo = {
      hash = "sha256-PUXQRD5bGZTLUVSxp0tlrJqjQtCdiKiD82Spg53PKQc=";
      name = "kmods-mpc85xx_p1010-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mpc85xx/p1010/kmods/6.12.67-1-bf3ccfc728ecba1ba43d17c51ca97a5f/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mpc85xx/p1010/packages/";
    sourceInfo = {
      hash = "sha256-Kx9uuwSPWI40pUCf41Nv8B3THuToXWWsNPB6myMWP58=";
      name = "mpc85xx_p1010-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mpc85xx/p1010/packages/packages.adb";
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
