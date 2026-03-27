# snapshot qoriq/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/qoriq/generic/";
  sha256sums = {
    hash = "sha256-clIggjz2VMAeuMTQniGS8Ff1bIel49VCO53VJ0Suigc=";
    name = "qoriq_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/qoriq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "2f848b9979a941d2d51558bc36f576ddd36c4c52e7c26a9a4d4e4e38e1485940";
    filename = "immortalwrt-imagebuilder-qoriq-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-YHm/CiEH3AJCPplUW3KtTchm7eZDH3JQNbrZ3Mewhgs=";
    name = "qoriq_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/qoriq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc64_e5500";
    linux_kernel = {
      release = "1";
      vermagic = "0fc202727e829c41aba9a04266ca181b";
      version = "6.12.77";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mkf2fs"
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
    kmods_target = "6.12.77-1-0fc202727e829c41aba9a04266ca181b";
    profiles = {
      fsl_T4240RDB = {
        device_packages = [
          "kmod-eeprom-at24"
          "kmod-gpio-button-hotplug"
          "kmod-hwmon-w83793"
          "kmod-leds-gpio"
          "kmod-ptp-qoriq"
          "kmod-rtc-ds1374"
        ];
      };
      watchguard_firebox-m300 = {
        device_packages = [
          "kmod-gpio-button-hotplug"
          "kmod-hwmon-w83793"
          "kmod-leds-gpio"
          "kmod-ptp-qoriq"
          "kmod-rtc-rs5c372a"
          "kmod-tpm-i2c-atmel"
          "kmod-dsa-mv88e6xxx"
        ];
      };
    };
  };
  kmods."6.12.77-1-0fc202727e829c41aba9a04266ca181b" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/qoriq/generic/kmods/6.12.77-1-0fc202727e829c41aba9a04266ca181b/";
    sourceInfo = {
      hash = "sha256-tZ73lwiUgiT8rQrgvfVmSLaoG5W6Vyed6RVOTBEhDzo=";
      name = "kmods-qoriq_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/qoriq/generic/kmods/6.12.77-1-0fc202727e829c41aba9a04266ca181b/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/qoriq/generic/packages/";
    sourceInfo = {
      hash = "sha256-ltq9DXPFzMdFSo5j6ttm5W2wvNkYdNGxRama+cyH+Qs=";
      name = "qoriq_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/qoriq/generic/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "powerpc64_e5500";
  feeds = import ./../../../packages/powerpc64_e5500.nix;
}
