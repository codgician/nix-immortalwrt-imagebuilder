# snapshot mpc85xx/p1020
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mpc85xx/p1020/";
  sha256sums = {
    hash = "sha256-6fpHksMsKhNTedoprUm8rgGUT8BQswsgrFkWnR+pXNI=";
    name = "mpc85xx_p1020-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mpc85xx/p1020/sha256sums";
  };
  imagebuilder = {
    sha256 = "c05ef0cbcc10173017dada39b002e174e6935ec8f5fa4e070cfd81de96924469";
    filename = "immortalwrt-imagebuilder-mpc85xx-p1020.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-zMqpW+vMU23fElD0JJFz4GBUNP0XpDEexyyjPSXyEkw=";
    name = "mpc85xx_p1020-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mpc85xx/p1020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "3b1c0ad97250ff09bac3742d5c4dda84";
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
    kmods_target = "6.12.67-1-3b1c0ad97250ff09bac3742d5c4dda84";
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
  kmods."6.12.67-1-3b1c0ad97250ff09bac3742d5c4dda84" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mpc85xx/p1020/kmods/6.12.67-1-3b1c0ad97250ff09bac3742d5c4dda84/";
    sourceInfo = {
      hash = "sha256-9YT3LF1mLEx/uwvpzH2NKHsBz0P5RafKEH0M0L3fhkg=";
      name = "kmods-mpc85xx_p1020-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mpc85xx/p1020/kmods/6.12.67-1-3b1c0ad97250ff09bac3742d5c4dda84/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mpc85xx/p1020/packages/";
    sourceInfo = {
      hash = "sha256-q5VfPJELRh0M5EgPWPy4SW1XQudJsOSb+HXDohFpsNU=";
      name = "mpc85xx_p1020-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mpc85xx/p1020/packages/packages.adb";
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
