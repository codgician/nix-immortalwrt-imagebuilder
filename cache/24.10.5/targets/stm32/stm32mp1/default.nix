# 24.10.5 stm32/stm32mp1
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/stm32/stm32mp1/";
  sha256sums = {
    hash = "sha256-vRvJQbXDlVOtZYmiGLUvQvmGH0Rc2haZvyFkH7cuRJ8=";
    name = "stm32_stm32mp1-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/stm32/stm32mp1/sha256sums";
  };
  imagebuilder = {
    sha256 = "b062c5b5f77ea11bc3d9d79f1f21ee9c7f228008211f509c579a662e03c51fc4";
    filename = "immortalwrt-imagebuilder-24.10.5-stm32-stm32mp1.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-RPjvkw/Q86rfy76QMN2MNl1UiauEDq/wb6/v+/1NaEo=";
    name = "stm32_stm32mp1-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/stm32/stm32mp1/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "9dd7a3f9c9dfd468bf11c8264dd9a07e";
      version = "6.6.122";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "blockdev"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.122-1-9dd7a3f9c9dfd468bf11c8264dd9a07e";
    profiles = {
      stm32mp135f-dk = {
        device_packages = [
          "kmod-brcmfmac"
          "murata-firmware-43430-sdio"
          "murata-nvram-43430-sdio"
          "wpad-basic-openssl"
          "kmod-phy-stm32-usbphyc"
          "kmod-usb2"
          "kmod-usb-storage"
          "kmod-usb-ledtrig-usbport"
          "-mtd"
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.122-1-9dd7a3f9c9dfd468bf11c8264dd9a07e" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/stm32/stm32mp1/kmods/6.6.122-1-9dd7a3f9c9dfd468bf11c8264dd9a07e/";
    sourceInfo = {
      hash = "sha256-i3q12sb3Eqhmz5r3uXSyj1iAboMFgggMaroyEgo+rYQ=";
      name = "kmods-stm32_stm32mp1-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/stm32/stm32mp1/kmods/6.6.122-1-9dd7a3f9c9dfd468bf11c8264dd9a07e/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/stm32/stm32mp1/packages/";
    sourceInfo = {
      hash = "sha256-JgClS7OUcp9tu+j3MH8wByoub6yObyJPFqhgbplIs3k=";
      name = "stm32_stm32mp1-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/stm32/stm32mp1/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a7_neon-vfpv4";
  feeds = import ./../../../packages/arm_cortex-a7_neon-vfpv4.nix;
}
