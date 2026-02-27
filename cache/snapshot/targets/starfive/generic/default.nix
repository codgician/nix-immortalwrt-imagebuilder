# snapshot starfive/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/starfive/generic/";
  sha256sums = {
    hash = "sha256-19o7i0bpN99CjGolfAv3TRgXbI4vN5SkFEs0zbLDiIM=";
    name = "starfive_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/starfive/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "fdec24471ed5f462a226f70306ee7d1607e0dbb0f82bc79c8f7bc403948074bf";
    filename = "immortalwrt-imagebuilder-starfive-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-tHPcdUywUqhzHfJGm3o+H+CsYcHLGTwkGTcWTyyA8uU=";
    name = "starfive_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/starfive/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "30979d8047c9cc873a00469cd5bbb8e1";
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
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.67-1-30979d8047c9cc873a00469cd5bbb8e1";
    profiles = {
      beaglev-starlight = {
        device_packages = [ ];
      };
      visionfive-v1 = {
        device_packages = [
          "kmod-eeprom-at24"
          "kmod-brcmfmac"
          "cypress-firmware-43430-sdio"
          "wpad-openssl"
        ];
      };
      "visionfive2-v1.2a" = {
        device_packages = [ "kmod-eeprom-at24" ];
      };
      "visionfive2-v1.3b" = {
        device_packages = [ "kmod-eeprom-at24" ];
      };
    };
  };
  kmods."6.12.67-1-30979d8047c9cc873a00469cd5bbb8e1" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/starfive/generic/kmods/6.12.67-1-30979d8047c9cc873a00469cd5bbb8e1/";
    sourceInfo = {
      hash = "sha256-7ABS/ZYro4ERVCWp2dm0I7N9/LAwgb+NnIDMtWMk7Vo=";
      name = "kmods-starfive_generic-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/starfive/generic/kmods/6.12.67-1-30979d8047c9cc873a00469cd5bbb8e1/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/starfive/generic/packages/";
    sourceInfo = {
      hash = "sha256-sWRl4t0uNyNQfyw+HX//oMMrrKqNbf0Ov+0qmblCi1s=";
      name = "starfive_generic-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/starfive/generic/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "riscv64_generic";
  feeds = import ./../../../packages/riscv64_generic.nix;
}
