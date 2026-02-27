# snapshot imx/cortexa53
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/imx/cortexa53/";
  sha256sums = {
    hash = "sha256-AVW+Q1F+p3qGpp/SJuju8BTmgontnPMRBVrUsAiVmnQ=";
    name = "imx_cortexa53-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/imx/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "74d549efa1f15a881d4ceb69758ba3cdc0aebe20d9e038368c1b3ba0ce23d3e3";
    filename = "immortalwrt-imagebuilder-imx-cortexa53.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-G6dUz+yJRhjFAESqPqxsc9ApCOAHrE61Wga0o/XdClw=";
    name = "imx_cortexa53-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/imx/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "d809a47a02e3983957bc4c3c49cda65e";
      version = "6.12.67";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "blkid"
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
    kmods_target = "6.12.67-1-d809a47a02e3983957bc4c3c49cda65e";
    profiles = {
      gateworks_venice = {
        device_packages = [
          "kmod-hwmon-gsc"
          "kmod-rtc-ds1672"
          "kmod-eeprom-at24"
          "kmod-gpio-button-hotplug"
          "kmod-leds-gpio"
          "kmod-pps-gpio"
          "kmod-lan743x"
          "kmod-sky2"
          "kmod-iio-st_accel-i2c"
          "kmod-can"
          "kmod-can-flexcan"
          "kmod-can-mcp251x"
        ];
      };
    };
  };
  kmods."6.12.67-1-d809a47a02e3983957bc4c3c49cda65e" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/imx/cortexa53/kmods/6.12.67-1-d809a47a02e3983957bc4c3c49cda65e/";
    sourceInfo = {
      hash = "sha256-F5pDvgHj9dGcJpQci5i/dFvd/owLNy3rhY8M3QArzEI=";
      name = "kmods-imx_cortexa53-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/imx/cortexa53/kmods/6.12.67-1-d809a47a02e3983957bc4c3c49cda65e/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/imx/cortexa53/packages/";
    sourceInfo = {
      hash = "sha256-7906F/JmVWokrb+SQkWpDSrGM135joFLleCOgT3lOQU=";
      name = "imx_cortexa53-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/imx/cortexa53/packages/packages.adb";
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
