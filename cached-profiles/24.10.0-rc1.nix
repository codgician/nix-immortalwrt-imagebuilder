{
  apm821xx = {
    nand = {
      arch_packages = "powerpc_464fp";
      default_packages = [
        "base-files"
        "block-mount"
        "busybox"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-ath9k"
        "kmod-gpio-button-hotplug"
        "kmod-hw-crypto-4xx"
        "kmod-i2c-core"
        "kmod-leds-gpio"
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
        "procd"
        "procd-seccomp"
        "procd-ujail"
        "swconfig"
        "uboot-envtools"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
        "wpad-basic-openssl"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "7596d307213880332ccd2d61cd8dffe2";
        version = "6.6.63";
      };
      metadata_version = 1;
      profiles = {
        meraki_mr24 = {
          device_packages = [
            "kmod-spi-gpio"
            "-swconfig"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-apm821xx-nand-meraki_mr24";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-apm821xx-nand-meraki_mr24-initramfs-kernel.bin";
              sha256 = "a72ba0aef666dcff1bee8fdd28b3cbb7b8c405df645bf4e935c2dc801a2446d6";
              sha256_unsigned = "a72ba0aef666dcff1bee8fdd28b3cbb7b8c405df645bf4e935c2dc801a2446d6";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-apm821xx-nand-meraki_mr24-squashfs-sysupgrade.bin";
              sha256 = "c5424516e3707335583dcaec2b0f244b29b90a27a1d74da6216a7973119b23d3";
              sha256_unsigned = "95375ec8cfda714a92ea47c978b1c073f5b1cc388cd7ee0862864224df401019";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "meraki,mr24"
            "mr24"
          ];
          titles = [
            {
              model = "MR24";
              vendor = "Cisco Meraki";
            }
          ];
        };
        meraki_mx60 = {
          device_packages = [
            "kmod-spi-gpio"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb-dwc2"
            "kmod-usb-storage"
            "block-mount"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-apm821xx-nand-meraki_mx60";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-apm821xx-nand-meraki_mx60-initramfs-kernel.bin";
              sha256 = "b2f7b063d52e6f2a44b18acf2cdf11be4dc41db564fc1d4d450ffc07107279f3";
              sha256_unsigned = "b2f7b063d52e6f2a44b18acf2cdf11be4dc41db564fc1d4d450ffc07107279f3";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-apm821xx-nand-meraki_mx60-squashfs-sysupgrade.bin";
              sha256 = "531c666033c19ea45ec3c913fe59e23a8e217ae1ad90055ff5006daaa31ea586";
              sha256_unsigned = "f2d5468b1d263caf9db8f1ec62f9d759dbb240a4eb4d8befe776fc5733d39107";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "meraki,mx60"
          ];
          titles = [
            {
              model = "MX60";
              vendor = "Cisco Meraki";
            }
            {
              model = "MX60W";
              vendor = "Cisco Meraki";
            }
          ];
        };
        netgear_wndap620 = {
          device_packages = [
            "kmod-eeprom-at24"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-apm821xx-nand-netgear_wndap620";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-apm821xx-nand-netgear_wndap620-squashfs-sysupgrade.bin";
              sha256 = "ab644daeaf8a0a0032bf5cf9ac1396bf45017cbdd71b6875b5b02c778b1dcf08";
              sha256_unsigned = "c0bfaadc8adf749e5458a95184ec61e358988ab93269286f991a6872f41ab197";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-apm821xx-nand-netgear_wndap620-initramfs-kernel.bin";
              sha256 = "fd8385ca269e02ec73431f42effebc4888d28f74982d71634f8bf60b6df70cdf";
              sha256_unsigned = "fd8385ca269e02ec73431f42effebc4888d28f74982d71634f8bf60b6df70cdf";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-apm821xx-nand-netgear_wndap620-squashfs-factory.img";
              sha256 = "bb7a90e01055fe23031ff7c408fefa4ca476ebf8d52b2504a84456dbfee4ec01";
              sha256_unsigned = "bb7a90e01055fe23031ff7c408fefa4ca476ebf8d52b2504a84456dbfee4ec01";
              type = "factory";
            }
          ];
          supported_devices = [
            "netgear,wndap620"
          ];
          titles = [
            {
              model = "WNDAP620 (Premium Wireless-N)";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndap660 = {
          device_packages = [
            "kmod-eeprom-at24"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-apm821xx-nand-netgear_wndap660";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-apm821xx-nand-netgear_wndap660-squashfs-sysupgrade.bin";
              sha256 = "0a7b5f55cdce1504a4f285ee7c12dbe31ebe40f93679dc1cc5000248fc86e54c";
              sha256_unsigned = "541725a36b404eb21b5b9ff565694a07fc55faf5be81652217db8b7ee1c1f448";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-apm821xx-nand-netgear_wndap660-squashfs-factory.img";
              sha256 = "ca080f784844f71dd0ef71d295552dbc202772c85c7471b5d9955b2d8a2c436e";
              sha256_unsigned = "ca080f784844f71dd0ef71d295552dbc202772c85c7471b5d9955b2d8a2c436e";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-apm821xx-nand-netgear_wndap660-initramfs-kernel.bin";
              sha256 = "a72b8f51074d25229b6a35049e580d22d0509b9251d99273a3807c85b1d7550f";
              sha256_unsigned = "a72b8f51074d25229b6a35049e580d22d0509b9251d99273a3807c85b1d7550f";
              type = "kernel";
            }
          ];
          supported_devices = [
            "netgear,wndap660"
          ];
          titles = [
            {
              model = "WNDAP660 (Dual Radio Dual Band Wireless-N)";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr4700 = {
          device_packages = [
            "badblocks"
            "block-mount"
            "e2fsprogs"
            "kmod-hwmon-drivetemp"
            "kmod-dm"
            "kmod-fs-ext4"
            "kmod-fs-vfat"
            "kmod-usb-ledtrig-usbport"
            "kmod-md-mod"
            "kmod-nls-cp437"
            "kmod-nls-iso8859-1"
            "kmod-nls-iso8859-15"
            "kmod-nls-utf8"
            "kmod-usb3"
            "kmod-usb-dwc2"
            "kmod-usb-storage"
            "partx-utils"
            "kmod-ata-dwc"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-apm821xx-nand-netgear_wndr4700";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-apm821xx-nand-netgear_wndr4700-initramfs-kernel.bin";
              sha256 = "dcfddbdf08261cb0484515271ee8f3cf0bbc4e4434abd6e51bc322cea9d97306";
              sha256_unsigned = "dcfddbdf08261cb0484515271ee8f3cf0bbc4e4434abd6e51bc322cea9d97306";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-apm821xx-nand-netgear_wndr4700-squashfs-factory.img";
              sha256 = "6d3819cd0697eb4107053f0c55b0a3b3d14219420c7778a70c22b4e4dd0e9be2";
              sha256_unsigned = "6d3819cd0697eb4107053f0c55b0a3b3d14219420c7778a70c22b4e4dd0e9be2";
              type = "factory";
            }
            {
              name = "immortalwrt-24.10.0-rc1-apm821xx-nand-netgear_wndr4700-device-tree.dtb";
              sha256 = "315657817fd6df865cdec957ddd6619e9c85e4b7005353fefd96eecda570764b";
              sha256_unsigned = "315657817fd6df865cdec957ddd6619e9c85e4b7005353fefd96eecda570764b";
              type = "device-tree.dtb";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-apm821xx-nand-netgear_wndr4700-squashfs-sysupgrade.bin";
              sha256 = "48810e1270591491321879af91ba89959edaed329e117b381ae1153712373bdf";
              sha256_unsigned = "73ae9c51239106cd6c0b1d9d8ac8f07bf13415ff4c8d8abf208f682521d18228";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,wndr4700"
            "wndr4700"
          ];
          titles = [
            {
              model = "Centria N900 WNDR4700";
              vendor = "NETGEAR";
            }
            {
              model = "Centria N900 WNDR4720";
              vendor = "NETGEAR";
            }
          ];
        };
      };
      source_date_epoch = 1733038943;
      target = "apm821xx/nand";
      version_code = "r32509-ed4f046c3537";
      version_number = "24.10.0-rc1";
    };
    sata = {
      arch_packages = "powerpc_464fp";
      default_packages = [
        "badblocks"
        "base-files"
        "block-mount"
        "block-mount"
        "block-mount"
        "busybox"
        "ca-bundle"
        "default-settings-chn"
        "dropbear"
        "e2fsprogs"
        "f2fsck"
        "fdisk"
        "fstools"
        "kmod-dm"
        "kmod-gpio-button-hotplug"
        "kmod-hw-crypto-4xx"
        "kmod-hwmon-drivetemp"
        "kmod-i2c-core"
        "kmod-leds-gpio"
        "kmod-md-mod"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "libc"
        "libgcc"
        "libustream-openssl"
        "logd"
        "lsblk"
        "luci-app-package-manager"
        "luci-compat"
        "luci-lib-base"
        "luci-lib-ipkg"
        "luci-light"
        "mdadm"
        "mkf2fs"
        "mtd"
        "netifd"
        "opkg"
        "partx-utils"
        "procd"
        "procd-seccomp"
        "procd-ujail"
        "uboot-envtools"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "aa852333884ed167abe369e0b726014e";
        version = "6.6.63";
      };
      metadata_version = 1;
      profiles = {
        wd_mybooklive = {
          device_packages = [
            "kmod-usb-dwc2"
            "kmod-ata-dwc"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb-storage"
            "kmod-fs-vfat"
            "wpad-basic-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-apm821xx-sata-wd_mybooklive";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-apm821xx-sata-wd_mybooklive-initramfs-kernel.bin";
              sha256 = "c1276a989122d79993d0da4d169ca91617432eddb5355c1597322ebc07d3ab62";
              sha256_unsigned = "c1276a989122d79993d0da4d169ca91617432eddb5355c1597322ebc07d3ab62";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-apm821xx-sata-wd_mybooklive-squashfs-factory.img.gz";
              sha256 = "c5d5daeaf61352f2b17a33775ffb41fa789dcee8beb1e35508c2f3204d8e2f5c";
              sha256_unsigned = "c5d5daeaf61352f2b17a33775ffb41fa789dcee8beb1e35508c2f3204d8e2f5c";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-apm821xx-sata-wd_mybooklive-ext4-sysupgrade.img.gz";
              sha256 = "7b040993eb0c32139685c648a9b1af2a039f9baed7a257a03e5db112980ef7c4";
              sha256_unsigned = "7b1de74ea506682f1faa5d31a708b4ad21cbf7b00af62b620cbc3d9ebfa2703e";
              type = "sysupgrade";
            }
            {
              name = "immortalwrt-24.10.0-rc1-apm821xx-sata-wd_mybooklive-apollo3g.dtb";
              sha256 = "8d8fbe80392732e15d8d7439cead6b71b9f3fac9a8248ad5e02cf35869b2ad19";
              sha256_unsigned = "8d8fbe80392732e15d8d7439cead6b71b9f3fac9a8248ad5e02cf35869b2ad19";
              type = "apollo3g.dtb";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-apm821xx-sata-wd_mybooklive-ext4-factory.img.gz";
              sha256 = "327aff089f9be9f49af14ef66221f309e1cb72d629df2a58c475d2ff57fc18d4";
              sha256_unsigned = "327aff089f9be9f49af14ef66221f309e1cb72d629df2a58c475d2ff57fc18d4";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-apm821xx-sata-wd_mybooklive-squashfs-sysupgrade.img.gz";
              sha256 = "e8562b538d2e7d8861895b52fa24723207af4b4be3014b529f13dc8794aee01f";
              sha256_unsigned = "2f8384eebf3a7cc19cbae691f11d0543ec2971c71e16b1173b22020b6df036f1";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "wd,mybooklive"
            "mbl"
            "wd,mybooklive-duo"
          ];
          titles = [
            {
              model = "My Book Live";
              vendor = "Western Digital";
            }
            {
              model = "My Book Live Duo";
              vendor = "Western Digital";
            }
          ];
        };
      };
      source_date_epoch = 1733038943;
      target = "apm821xx/sata";
      version_code = "r32509-ed4f046c3537";
      version_number = "24.10.0-rc1";
    };
  };
  armsr = {
    armv7 = {
      arch_packages = "arm_cortex-a15_neon-vfpv4";
      default_packages = [
        "autocore"
        "automount"
        "base-files"
        "blkid"
        "block-mount"
        "busybox"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "e2fsprogs"
        "firewall4"
        "fstools"
        "kmod-fs-vfat"
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
        "mkf2fs"
        "mtd"
        "netifd"
        "nftables"
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "ppp"
        "ppp-mod-pppoe"
        "procd"
        "procd-seccomp"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "e62b0ac4ecccc1f357456880faff35a6";
        version = "6.6.63";
      };
      metadata_version = 1;
      profiles = {
        generic = {
          device_packages = [
            "kmod-amazon-ena"
            "kmod-e1000e"
            "kmod-vmxnet3"
            "kmod-rtc-rx8025"
            "kmod-i2c-mux-pca954x"
            "kmod-gpio-pca953x"
            "partx-utils"
            "kmod-wdt-sp805"
            "kmod-mvneta"
            "kmod-mvpp2"
            "kmod-fsl-dpaa1-net"
            "kmod-fsl-dpaa2-net"
            "kmod-fsl-enetc-net"
            "kmod-dwmac-imx"
            "kmod-fsl-fec"
            "kmod-dwmac-rockchip"
            "kmod-dwmac-sun8i"
            "kmod-phy-aquantia"
            "kmod-phy-broadcom"
            "kmod-phy-marvell"
            "kmod-phy-marvell-10g"
            "kmod-sfp"
            "kmod-atlantic"
            "kmod-bcmgenet"
            "kmod-octeontx2-net"
            "kmod-renesas-net-avb"
            "kmod-phy-realtek"
            "kmod-phy-smsc"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-armsr-armv7-generic";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-armsr-armv7-generic-ext4-combined-efi.vmdk";
              sha256 = "9ad1176c5fc2677773ddacb67a24254cbb2b26950572114c21f110b2e9eeb322";
              sha256_unsigned = "9ad1176c5fc2677773ddacb67a24254cbb2b26950572114c21f110b2e9eeb322";
              type = "combined-efi";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-armsr-armv7-generic-ext4-rootfs.img.gz";
              sha256 = "592e391a33cec4ea013a32a498224ea2fe959e42efbc21de528a1e8046b88571";
              sha256_unsigned = "592e391a33cec4ea013a32a498224ea2fe959e42efbc21de528a1e8046b88571";
              type = "rootfs";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-armsr-armv7-generic-initramfs-kernel.bin";
              sha256 = "43687d673d54a6641057f0652b057b71032e27cb912f6b44cda315ccafe9fc61";
              sha256_unsigned = "43687d673d54a6641057f0652b057b71032e27cb912f6b44cda315ccafe9fc61";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-armsr-armv7-generic-squashfs-combined-efi.img.gz";
              sha256 = "1e63f76853331d0fd54fbbb409ef3c0fa0a30353622c8e9d55dee8533bc30a24";
              sha256_unsigned = "6a4ea999bf1aeaeac9a8993fa9e853779bf5ae5262bf0a1d5e8a74362077313c";
              type = "combined-efi";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-armsr-armv7-generic-squashfs-combined-efi.vmdk";
              sha256 = "8a453fb018053e9155dfa1dbd96f4329cc09a35edcc431ebbaffd8c432ff26b3";
              sha256_unsigned = "8a453fb018053e9155dfa1dbd96f4329cc09a35edcc431ebbaffd8c432ff26b3";
              type = "combined-efi";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-armsr-armv7-generic-squashfs-combined-efi.qcow2";
              sha256 = "f6c2d9dac1ab6abfa8cedc4d1a909d1292fb3f54e6289d18f62d74ae6fe20188";
              sha256_unsigned = "f6c2d9dac1ab6abfa8cedc4d1a909d1292fb3f54e6289d18f62d74ae6fe20188";
              type = "combined-efi";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-armsr-armv7-generic-ext4-combined-efi.qcow2";
              sha256 = "e94c2ec88568e4c8ab8dda95c99238f56a89058e7058f0e50e09e7f660a6ffc0";
              sha256_unsigned = "e94c2ec88568e4c8ab8dda95c99238f56a89058e7058f0e50e09e7f660a6ffc0";
              type = "combined-efi";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-armsr-armv7-generic-ext4-combined-efi.img.gz";
              sha256 = "9fa1d29837d169d0aca8aa66cb8891101e5c36e7cd6f7204b51974dbb6c76bba";
              sha256_unsigned = "5eeff7f0777c040172ee229b6946b55ad7281d56ad44cf914ad2d1d5db7335c3";
              type = "combined-efi";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-armsr-armv7-generic-squashfs-rootfs.img.gz";
              sha256 = "1872869e3296b6a3093b7faeff78fde3e57a2d643e2ed59df75526213011a818";
              sha256_unsigned = "1872869e3296b6a3093b7faeff78fde3e57a2d643e2ed59df75526213011a818";
              type = "rootfs";
            }
          ];
          supported_devices = [ ];
          titles = [
            {
              title = "Generic EFI Boot";
            }
          ];
        };
      };
      source_date_epoch = 1733038943;
      target = "armsr/armv7";
      version_code = "r32509-ed4f046c3537";
      version_number = "24.10.0-rc1";
    };
    armv8 = {
      arch_packages = "aarch64_generic";
      default_packages = [
        "autocore"
        "automount"
        "base-files"
        "blkid"
        "block-mount"
        "busybox"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "e2fsprogs"
        "firewall4"
        "fstools"
        "kmod-fs-vfat"
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
        "mkf2fs"
        "mtd"
        "netifd"
        "nftables"
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "ppp"
        "ppp-mod-pppoe"
        "procd"
        "procd-seccomp"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "2bc263e53f46ad4fb35cfa95e99ed966";
        version = "6.6.63";
      };
      metadata_version = 1;
      profiles = {
        generic = {
          device_packages = [
            "kmod-amazon-ena"
            "kmod-e1000e"
            "kmod-vmxnet3"
            "kmod-rtc-rx8025"
            "kmod-i2c-mux-pca954x"
            "kmod-gpio-pca953x"
            "partx-utils"
            "kmod-wdt-sp805"
            "kmod-mvneta"
            "kmod-mvpp2"
            "kmod-fsl-dpaa1-net"
            "kmod-fsl-dpaa2-net"
            "kmod-fsl-enetc-net"
            "kmod-dwmac-imx"
            "kmod-fsl-fec"
            "kmod-dwmac-rockchip"
            "kmod-dwmac-sun8i"
            "kmod-phy-aquantia"
            "kmod-phy-broadcom"
            "kmod-phy-marvell"
            "kmod-phy-marvell-10g"
            "kmod-sfp"
            "kmod-atlantic"
            "kmod-bcmgenet"
            "kmod-octeontx2-net"
            "kmod-renesas-net-avb"
            "kmod-phy-realtek"
            "kmod-phy-smsc"
            "kmod-thunderx-net"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-armsr-armv8-generic";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-armsr-armv8-generic-ext4-combined-efi.img.gz";
              sha256 = "ba6bef03e92a111b310334d6f5b1b67fe61ae0c40cd5f2d6e8d423c1427e45ae";
              sha256_unsigned = "ad7625a12f68edd050bbb4ddb3d34249c3e805ee1fafa5fe0eaae52525638099";
              type = "combined-efi";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-armsr-armv8-generic-ext4-combined-efi.vmdk";
              sha256 = "c6d2583f31be2f8976410595233ed8a89600f813df157f29414fc275c550e67e";
              sha256_unsigned = "c6d2583f31be2f8976410595233ed8a89600f813df157f29414fc275c550e67e";
              type = "combined-efi";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-armsr-armv8-generic-squashfs-rootfs.img.gz";
              sha256 = "9ea8c7826dbe1dd0a3bdcd702da189137d038c87cd802be57e8518ba96afff5d";
              sha256_unsigned = "9ea8c7826dbe1dd0a3bdcd702da189137d038c87cd802be57e8518ba96afff5d";
              type = "rootfs";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-armsr-armv8-generic-ext4-rootfs.img.gz";
              sha256 = "0f790b4af447e499de066b1692528b1dcd2bfce35e01b7409ba29607978b944b";
              sha256_unsigned = "0f790b4af447e499de066b1692528b1dcd2bfce35e01b7409ba29607978b944b";
              type = "rootfs";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-armsr-armv8-generic-squashfs-combined-efi.qcow2";
              sha256 = "ad57ceb40945508372a8df1cb06b3cef9736dba825dd503be16f3c478440a345";
              sha256_unsigned = "ad57ceb40945508372a8df1cb06b3cef9736dba825dd503be16f3c478440a345";
              type = "combined-efi";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-armsr-armv8-generic-squashfs-combined-efi.vmdk";
              sha256 = "fe5332c1dfb786d4db7ffc9a82fb159b7d84bb52cafdbe7885f836d7763b57d3";
              sha256_unsigned = "fe5332c1dfb786d4db7ffc9a82fb159b7d84bb52cafdbe7885f836d7763b57d3";
              type = "combined-efi";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-armsr-armv8-generic-ext4-combined-efi.qcow2";
              sha256 = "b83af91b87be0af17f6f499dfab0b547ac491fb420853b4cf82d446bcaa74007";
              sha256_unsigned = "b83af91b87be0af17f6f499dfab0b547ac491fb420853b4cf82d446bcaa74007";
              type = "combined-efi";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-armsr-armv8-generic-squashfs-combined-efi.img.gz";
              sha256 = "06aaa578683988204771de6414ca300b98694eff3f499a7b063da108dd00fb70";
              sha256_unsigned = "125ae80f446d77afbcbd4bf43c06b4907b2c5af2925e39b512ed7277fe07f4ac";
              type = "combined-efi";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-armsr-armv8-generic-initramfs-kernel.bin";
              sha256 = "7ce78407ef8744cffc538c66ef1dd95b2fdd2131d12b6a1ded37e691ff2d7496";
              sha256_unsigned = "7ce78407ef8744cffc538c66ef1dd95b2fdd2131d12b6a1ded37e691ff2d7496";
              type = "kernel";
            }
          ];
          supported_devices = [ ];
          titles = [
            {
              title = "Generic EFI Boot";
            }
          ];
        };
      };
      source_date_epoch = 1733038943;
      target = "armsr/armv8";
      version_code = "r32509-ed4f046c3537";
      version_number = "24.10.0-rc1";
    };
  };
  at91 = {
    sam9x = {
      arch_packages = "arm_arm926ej-s";
      default_packages = [
        "base-files"
        "block-mount"
        "busybox"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-at91-udc"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-usb-gadget-eth"
        "kmod-usb-ohci"
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
        "procd"
        "procd-seccomp"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "6b682c4d3147178099179ae1c012d85a";
        version = "6.6.63";
      };
      metadata_version = 1;
      profiles = {
        atmel_at91sam9263ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc1-at91-sam9x-atmel_at91sam9263ek";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-atmel_at91sam9263ek-ubifs-root.ubi";
              sha256 = "5bc20a8e991c271fbf6d4d6d8f227e7ce7c438f196a9241067d1099c04e621d3";
              sha256_unsigned = "5bc20a8e991c271fbf6d4d6d8f227e7ce7c438f196a9241067d1099c04e621d3";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-atmel_at91sam9263ek-ext4-root.ubi";
              sha256 = "44e3c8a6434dcfe3de664f287de22048185942faa1f793c705321c1ff15bfa2d";
              sha256_unsigned = "44e3c8a6434dcfe3de664f287de22048185942faa1f793c705321c1ff15bfa2d";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-atmel_at91sam9263ek-squashfs-root.ubi";
              sha256 = "d9cfe45b06341d28aedd053975cd33ebf94ed36b4e15037185728fefe8681be5";
              sha256_unsigned = "d9cfe45b06341d28aedd053975cd33ebf94ed36b4e15037185728fefe8681be5";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9263ek"
          ];
          titles = [
            {
              model = "AT91SAM9263-EK";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9g15ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc1-at91-sam9x-atmel_at91sam9g15ek";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-atmel_at91sam9g15ek-ubifs-root.ubi";
              sha256 = "5bc20a8e991c271fbf6d4d6d8f227e7ce7c438f196a9241067d1099c04e621d3";
              sha256_unsigned = "5bc20a8e991c271fbf6d4d6d8f227e7ce7c438f196a9241067d1099c04e621d3";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-atmel_at91sam9g15ek-ext4-root.ubi";
              sha256 = "44e3c8a6434dcfe3de664f287de22048185942faa1f793c705321c1ff15bfa2d";
              sha256_unsigned = "44e3c8a6434dcfe3de664f287de22048185942faa1f793c705321c1ff15bfa2d";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-atmel_at91sam9g15ek-squashfs-root.ubi";
              sha256 = "d9cfe45b06341d28aedd053975cd33ebf94ed36b4e15037185728fefe8681be5";
              sha256_unsigned = "d9cfe45b06341d28aedd053975cd33ebf94ed36b4e15037185728fefe8681be5";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9g15ek"
          ];
          titles = [
            {
              model = "AT91SAM9G15-EK";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9g20ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc1-at91-sam9x-atmel_at91sam9g20ek";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-atmel_at91sam9g20ek-squashfs-root.ubi";
              sha256 = "d9cfe45b06341d28aedd053975cd33ebf94ed36b4e15037185728fefe8681be5";
              sha256_unsigned = "d9cfe45b06341d28aedd053975cd33ebf94ed36b4e15037185728fefe8681be5";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-atmel_at91sam9g20ek-ext4-root.ubi";
              sha256 = "44e3c8a6434dcfe3de664f287de22048185942faa1f793c705321c1ff15bfa2d";
              sha256_unsigned = "44e3c8a6434dcfe3de664f287de22048185942faa1f793c705321c1ff15bfa2d";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-atmel_at91sam9g20ek-ubifs-root.ubi";
              sha256 = "5bc20a8e991c271fbf6d4d6d8f227e7ce7c438f196a9241067d1099c04e621d3";
              sha256_unsigned = "5bc20a8e991c271fbf6d4d6d8f227e7ce7c438f196a9241067d1099c04e621d3";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9g20ek"
          ];
          titles = [
            {
              model = "AT91SAM9G20-EK";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9g20ek-2mmc = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc1-at91-sam9x-atmel_at91sam9g20ek-2mmc";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-atmel_at91sam9g20ek-2mmc-ext4-root.ubi";
              sha256 = "44e3c8a6434dcfe3de664f287de22048185942faa1f793c705321c1ff15bfa2d";
              sha256_unsigned = "44e3c8a6434dcfe3de664f287de22048185942faa1f793c705321c1ff15bfa2d";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-atmel_at91sam9g20ek-2mmc-squashfs-root.ubi";
              sha256 = "d9cfe45b06341d28aedd053975cd33ebf94ed36b4e15037185728fefe8681be5";
              sha256_unsigned = "d9cfe45b06341d28aedd053975cd33ebf94ed36b4e15037185728fefe8681be5";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-atmel_at91sam9g20ek-2mmc-ubifs-root.ubi";
              sha256 = "5bc20a8e991c271fbf6d4d6d8f227e7ce7c438f196a9241067d1099c04e621d3";
              sha256_unsigned = "5bc20a8e991c271fbf6d4d6d8f227e7ce7c438f196a9241067d1099c04e621d3";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9g20ek_2mmc"
          ];
          titles = [
            {
              model = "AT91SAM9G20-EK";
              variant = "2MMC";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9g25ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc1-at91-sam9x-atmel_at91sam9g25ek";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-atmel_at91sam9g25ek-ext4-root.ubi";
              sha256 = "44e3c8a6434dcfe3de664f287de22048185942faa1f793c705321c1ff15bfa2d";
              sha256_unsigned = "44e3c8a6434dcfe3de664f287de22048185942faa1f793c705321c1ff15bfa2d";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-atmel_at91sam9g25ek-squashfs-root.ubi";
              sha256 = "d9cfe45b06341d28aedd053975cd33ebf94ed36b4e15037185728fefe8681be5";
              sha256_unsigned = "d9cfe45b06341d28aedd053975cd33ebf94ed36b4e15037185728fefe8681be5";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-atmel_at91sam9g25ek-ubifs-root.ubi";
              sha256 = "5bc20a8e991c271fbf6d4d6d8f227e7ce7c438f196a9241067d1099c04e621d3";
              sha256_unsigned = "5bc20a8e991c271fbf6d4d6d8f227e7ce7c438f196a9241067d1099c04e621d3";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9g25ek"
          ];
          titles = [
            {
              model = "AT91SAM9G25-EK";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9g35ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc1-at91-sam9x-atmel_at91sam9g35ek";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-atmel_at91sam9g35ek-ubifs-root.ubi";
              sha256 = "5bc20a8e991c271fbf6d4d6d8f227e7ce7c438f196a9241067d1099c04e621d3";
              sha256_unsigned = "5bc20a8e991c271fbf6d4d6d8f227e7ce7c438f196a9241067d1099c04e621d3";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-atmel_at91sam9g35ek-squashfs-root.ubi";
              sha256 = "d9cfe45b06341d28aedd053975cd33ebf94ed36b4e15037185728fefe8681be5";
              sha256_unsigned = "d9cfe45b06341d28aedd053975cd33ebf94ed36b4e15037185728fefe8681be5";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-atmel_at91sam9g35ek-ext4-root.ubi";
              sha256 = "44e3c8a6434dcfe3de664f287de22048185942faa1f793c705321c1ff15bfa2d";
              sha256_unsigned = "44e3c8a6434dcfe3de664f287de22048185942faa1f793c705321c1ff15bfa2d";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9g35ek"
          ];
          titles = [
            {
              model = "AT91SAM9G35-EK";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9m10g45ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc1-at91-sam9x-atmel_at91sam9m10g45ek";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-atmel_at91sam9m10g45ek-squashfs-root.ubi";
              sha256 = "d9cfe45b06341d28aedd053975cd33ebf94ed36b4e15037185728fefe8681be5";
              sha256_unsigned = "d9cfe45b06341d28aedd053975cd33ebf94ed36b4e15037185728fefe8681be5";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-atmel_at91sam9m10g45ek-ubifs-root.ubi";
              sha256 = "5bc20a8e991c271fbf6d4d6d8f227e7ce7c438f196a9241067d1099c04e621d3";
              sha256_unsigned = "5bc20a8e991c271fbf6d4d6d8f227e7ce7c438f196a9241067d1099c04e621d3";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-atmel_at91sam9m10g45ek-ext4-root.ubi";
              sha256 = "44e3c8a6434dcfe3de664f287de22048185942faa1f793c705321c1ff15bfa2d";
              sha256_unsigned = "44e3c8a6434dcfe3de664f287de22048185942faa1f793c705321c1ff15bfa2d";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9m10g45ek"
          ];
          titles = [
            {
              model = "AT91SAM9M10G45-EK";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9x25ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc1-at91-sam9x-atmel_at91sam9x25ek";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-atmel_at91sam9x25ek-squashfs-root.ubi";
              sha256 = "d9cfe45b06341d28aedd053975cd33ebf94ed36b4e15037185728fefe8681be5";
              sha256_unsigned = "d9cfe45b06341d28aedd053975cd33ebf94ed36b4e15037185728fefe8681be5";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-atmel_at91sam9x25ek-ext4-sdcard.img.gz";
              sha256 = "db0f7969e95b17337c585d8e650bf9b427587b0c92f8395eb561c225e58bb95a";
              sha256_unsigned = "db0f7969e95b17337c585d8e650bf9b427587b0c92f8395eb561c225e58bb95a";
              type = "sdcard";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-atmel_at91sam9x25ek-ubifs-root.ubi";
              sha256 = "5bc20a8e991c271fbf6d4d6d8f227e7ce7c438f196a9241067d1099c04e621d3";
              sha256_unsigned = "5bc20a8e991c271fbf6d4d6d8f227e7ce7c438f196a9241067d1099c04e621d3";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-atmel_at91sam9x25ek-ext4-root.ubi";
              sha256 = "44e3c8a6434dcfe3de664f287de22048185942faa1f793c705321c1ff15bfa2d";
              sha256_unsigned = "44e3c8a6434dcfe3de664f287de22048185942faa1f793c705321c1ff15bfa2d";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9x25ek"
          ];
          titles = [
            {
              model = "AT91SAM9X25-EK";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9x35ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc1-at91-sam9x-atmel_at91sam9x35ek";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-atmel_at91sam9x35ek-ext4-root.ubi";
              sha256 = "44e3c8a6434dcfe3de664f287de22048185942faa1f793c705321c1ff15bfa2d";
              sha256_unsigned = "44e3c8a6434dcfe3de664f287de22048185942faa1f793c705321c1ff15bfa2d";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-atmel_at91sam9x35ek-ubifs-root.ubi";
              sha256 = "5bc20a8e991c271fbf6d4d6d8f227e7ce7c438f196a9241067d1099c04e621d3";
              sha256_unsigned = "5bc20a8e991c271fbf6d4d6d8f227e7ce7c438f196a9241067d1099c04e621d3";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-atmel_at91sam9x35ek-ext4-sdcard.img.gz";
              sha256 = "6ec77b4f12fe6066d559c4d882037e35534a8df787445389c8441552299bed53";
              sha256_unsigned = "6ec77b4f12fe6066d559c4d882037e35534a8df787445389c8441552299bed53";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-atmel_at91sam9x35ek-squashfs-root.ubi";
              sha256 = "d9cfe45b06341d28aedd053975cd33ebf94ed36b4e15037185728fefe8681be5";
              sha256_unsigned = "d9cfe45b06341d28aedd053975cd33ebf94ed36b4e15037185728fefe8681be5";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9x35ek"
          ];
          titles = [
            {
              model = "AT91SAM9X35-EK";
              vendor = "Atmel";
            }
          ];
        };
        calamp_lmu5000 = {
          device_packages = [
            "kmod-rtc-pcf2123"
            "kmod-usb-acm"
            "kmod-usb-serial-option"
            "kmod-usb-serial-sierrawireless"
            "kmod-pinctrl-mcp23s08-spi"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-at91-sam9x-calamp_lmu5000";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-calamp_lmu5000-ubifs-factory.bin";
              sha256 = "84312acf5ebc5e4efe52d04f14a4c1c30a75234c7835e8b4116e760505f857cd";
              sha256_unsigned = "84312acf5ebc5e4efe52d04f14a4c1c30a75234c7835e8b4116e760505f857cd";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-calamp_lmu5000-ext4-factory.bin";
              sha256 = "2475f13d169aedc8dd193b768685518c47192311c614c1bdfc68981538d4693b";
              sha256_unsigned = "2475f13d169aedc8dd193b768685518c47192311c614c1bdfc68981538d4693b";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-calamp_lmu5000-squashfs-factory.bin";
              sha256 = "d7a2b5cf8ff8b8d0e5301cfc9fbe8ff13e7d850f677067cd618c8034ef401ba3";
              sha256_unsigned = "d7a2b5cf8ff8b8d0e5301cfc9fbe8ff13e7d850f677067cd618c8034ef401ba3";
              type = "factory";
            }
          ];
          supported_devices = [
            "calamp,lmu5000"
          ];
          titles = [
            {
              model = "LMU5000";
              vendor = "CalAmp";
            }
          ];
        };
        calao_tny-a9260 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc1-at91-sam9x-calao_tny-a9260";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-calao_tny-a9260-ext4-factory.bin";
              sha256 = "29959978061356e218b03231fce0eb684bf735fad6af8762398901b69267efa9";
              sha256_unsigned = "29959978061356e218b03231fce0eb684bf735fad6af8762398901b69267efa9";
              type = "factory";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-calao_tny-a9260-ubifs-factory.bin";
              sha256 = "9d115bb0bb8b460b8b927dd42dd804e8b42ea9aab0386a406c8d032bf486a1d5";
              sha256_unsigned = "9d115bb0bb8b460b8b927dd42dd804e8b42ea9aab0386a406c8d032bf486a1d5";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-calao_tny-a9260-squashfs-factory.bin";
              sha256 = "b12da8fcdd00cb5e5db4a6178bfe1dd7dda022f2b2226503684748336695c192";
              sha256_unsigned = "b12da8fcdd00cb5e5db4a6178bfe1dd7dda022f2b2226503684748336695c192";
              type = "factory";
            }
          ];
          supported_devices = [
            "calao,tny-a9260"
          ];
          titles = [
            {
              model = "TNY A9260";
              vendor = "Calao";
            }
          ];
        };
        calao_tny-a9263 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc1-at91-sam9x-calao_tny-a9263";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-calao_tny-a9263-ubifs-factory.bin";
              sha256 = "8179411a9092b03d22520296619663c3c555f65f8f1e9a24bb60cff6ce3941fc";
              sha256_unsigned = "8179411a9092b03d22520296619663c3c555f65f8f1e9a24bb60cff6ce3941fc";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-calao_tny-a9263-ext4-factory.bin";
              sha256 = "d74e6f08ba768f0c44c18c309dd6b57838a6c848458fc49118a795bccfbec457";
              sha256_unsigned = "d74e6f08ba768f0c44c18c309dd6b57838a6c848458fc49118a795bccfbec457";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-calao_tny-a9263-squashfs-factory.bin";
              sha256 = "531f32440f7d866e24f22b9122703c86ef505e5e1804fe92a162ad5aeada571b";
              sha256_unsigned = "531f32440f7d866e24f22b9122703c86ef505e5e1804fe92a162ad5aeada571b";
              type = "factory";
            }
          ];
          supported_devices = [
            "atmel,tny-a9263"
          ];
          titles = [
            {
              model = "TNY A9263";
              vendor = "Calao";
            }
          ];
        };
        calao_tny-a9g20 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc1-at91-sam9x-calao_tny-a9g20";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-calao_tny-a9g20-squashfs-factory.bin";
              sha256 = "9fbbe6d51517554593490297f43d93bc0afdb34171ac2722503b99bb19014f5f";
              sha256_unsigned = "9fbbe6d51517554593490297f43d93bc0afdb34171ac2722503b99bb19014f5f";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-calao_tny-a9g20-ext4-factory.bin";
              sha256 = "bec7c1697b32ca1711a4a42697a5371199fc8f7ffe20c3f8fdb97190d91f2b8a";
              sha256_unsigned = "bec7c1697b32ca1711a4a42697a5371199fc8f7ffe20c3f8fdb97190d91f2b8a";
              type = "factory";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-calao_tny-a9g20-ubifs-factory.bin";
              sha256 = "f40aa577636bc3b521a43ececb20bc6d144077500626e814c5afba4f0761da2b";
              sha256_unsigned = "f40aa577636bc3b521a43ececb20bc6d144077500626e814c5afba4f0761da2b";
              type = "factory";
            }
          ];
          supported_devices = [
            "calao,tny-a9g20"
          ];
          titles = [
            {
              model = "TNY A9G20";
              vendor = "Calao";
            }
          ];
        };
        calao_usb-a9260 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc1-at91-sam9x-calao_usb-a9260";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-calao_usb-a9260-ubifs-factory.bin";
              sha256 = "7b154ad583ab78d0cc70d2a49ef94938067c09e7d93466a109baf27283a31784";
              sha256_unsigned = "7b154ad583ab78d0cc70d2a49ef94938067c09e7d93466a109baf27283a31784";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-calao_usb-a9260-ext4-factory.bin";
              sha256 = "0c623610494ea05190e9b3c7d1f83b25b838a216995f8d289d7cf57ded11741f";
              sha256_unsigned = "0c623610494ea05190e9b3c7d1f83b25b838a216995f8d289d7cf57ded11741f";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-calao_usb-a9260-squashfs-factory.bin";
              sha256 = "253a49aebd70a3f251f49f9d652a0c60266b855d914e0346b5547a5b81b86927";
              sha256_unsigned = "253a49aebd70a3f251f49f9d652a0c60266b855d914e0346b5547a5b81b86927";
              type = "factory";
            }
          ];
          supported_devices = [
            "calao,usb-a9260"
          ];
          titles = [
            {
              model = "USB A9260";
              vendor = "Calao";
            }
          ];
        };
        calao_usb-a9263 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc1-at91-sam9x-calao_usb-a9263";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-calao_usb-a9263-squashfs-factory.bin";
              sha256 = "3305dfdfd828d1897a15966db97b239325269471b68534ec62f31ee9695bf892";
              sha256_unsigned = "3305dfdfd828d1897a15966db97b239325269471b68534ec62f31ee9695bf892";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-calao_usb-a9263-ext4-factory.bin";
              sha256 = "7a00c757cc97546aa0db31da7adc63e89126ea7492240966c584117bb7d025bc";
              sha256_unsigned = "7a00c757cc97546aa0db31da7adc63e89126ea7492240966c584117bb7d025bc";
              type = "factory";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-calao_usb-a9263-ubifs-factory.bin";
              sha256 = "f07bf75c926c15f75373412dca0ffbb5e9a1fdd09d4f1162944cacdb01024914";
              sha256_unsigned = "f07bf75c926c15f75373412dca0ffbb5e9a1fdd09d4f1162944cacdb01024914";
              type = "factory";
            }
          ];
          supported_devices = [
            "atmel,usb-a9263"
          ];
          titles = [
            {
              model = "USB A9263";
              vendor = "Calao";
            }
          ];
        };
        calao_usb-a9g20 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc1-at91-sam9x-calao_usb-a9g20";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-calao_usb-a9g20-ubifs-factory.bin";
              sha256 = "d2ebd5caf635f41bbce5f0bd7a8010089b667c9c535d55d637e5e3aee9775b85";
              sha256_unsigned = "d2ebd5caf635f41bbce5f0bd7a8010089b667c9c535d55d637e5e3aee9775b85";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-calao_usb-a9g20-ext4-factory.bin";
              sha256 = "c668b3132716e495366864d5d2f9e552a632474a8a2a19465240d5a0c1a0c738";
              sha256_unsigned = "c668b3132716e495366864d5d2f9e552a632474a8a2a19465240d5a0c1a0c738";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-calao_usb-a9g20-squashfs-factory.bin";
              sha256 = "df700f0fa49179591b822e3d08bbe5b36b771865221e0c147ecdcf93330fb40c";
              sha256_unsigned = "df700f0fa49179591b822e3d08bbe5b36b771865221e0c147ecdcf93330fb40c";
              type = "factory";
            }
          ];
          supported_devices = [
            "calao,usb-a9g20"
          ];
          titles = [
            {
              model = "USB A9G20";
              vendor = "Calao";
            }
          ];
        };
        egnite_ethernut5 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc1-at91-sam9x-egnite_ethernut5";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-egnite_ethernut5-ubifs-root.ubi";
              sha256 = "b9b523136a8686e1d0c2021e204f7004f2bc1355f6620acdc930791b55c20453";
              sha256_unsigned = "b9b523136a8686e1d0c2021e204f7004f2bc1355f6620acdc930791b55c20453";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-egnite_ethernut5-squashfs-root.ubi";
              sha256 = "ee45ee62ecb18a1e9ac2a3e72aede3478417486246d67712c22c890782d45df2";
              sha256_unsigned = "ee45ee62ecb18a1e9ac2a3e72aede3478417486246d67712c22c890782d45df2";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-egnite_ethernut5-ext4-root.ubi";
              sha256 = "3c1c48fb10e46b6e27fcdb2e4049fe681ebe58d1c263e46213bcbae498c5acc5";
              sha256_unsigned = "3c1c48fb10e46b6e27fcdb2e4049fe681ebe58d1c263e46213bcbae498c5acc5";
              type = "root";
            }
          ];
          supported_devices = [
            "egnite,ethernut5"
          ];
          titles = [
            {
              model = "Ethernut 5";
              vendor = "egnite";
            }
          ];
        };
        laird_wb45n = {
          device_packages = [
            "kmod-mmc-at91"
            "kmod-ath6kl-sdio"
            "ath6k-firmware"
            "kmod-usb-storage"
            "kmod-fs-vfat"
            "kmod-fs-msdos"
            "kmod-leds-gpio"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-at91-sam9x-laird_wb45n";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-laird_wb45n-ext4-root.ubi";
              sha256 = "cc0acf9798015f873aabdeb362bbce6ce15570c56f4e9df7623e8d7e1ee5856f";
              sha256_unsigned = "cc0acf9798015f873aabdeb362bbce6ce15570c56f4e9df7623e8d7e1ee5856f";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-laird_wb45n-ubifs-root.ubi";
              sha256 = "d00cc2ad815322b166f1cbfbf83ceea8cf51efa5d31fc1e2ec377696a9802503";
              sha256_unsigned = "d00cc2ad815322b166f1cbfbf83ceea8cf51efa5d31fc1e2ec377696a9802503";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-laird_wb45n-squashfs-root.ubi";
              sha256 = "0278919e7aae60e1a00f9de5c1f635b685a05c713b5da137fb83f0dd87399154";
              sha256_unsigned = "0278919e7aae60e1a00f9de5c1f635b685a05c713b5da137fb83f0dd87399154";
              type = "root";
            }
          ];
          supported_devices = [
            "laird,wb45n"
          ];
          titles = [
            {
              model = "WB45N";
              vendor = "Laird";
            }
          ];
        };
        microchip_sam9x60ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc1-at91-sam9x-microchip_sam9x60ek";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-microchip_sam9x60ek-ubifs-root.ubi";
              sha256 = "5bc20a8e991c271fbf6d4d6d8f227e7ce7c438f196a9241067d1099c04e621d3";
              sha256_unsigned = "5bc20a8e991c271fbf6d4d6d8f227e7ce7c438f196a9241067d1099c04e621d3";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-microchip_sam9x60ek-ext4-root.ubi";
              sha256 = "44e3c8a6434dcfe3de664f287de22048185942faa1f793c705321c1ff15bfa2d";
              sha256_unsigned = "44e3c8a6434dcfe3de664f287de22048185942faa1f793c705321c1ff15bfa2d";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-microchip_sam9x60ek-squashfs-root.ubi";
              sha256 = "d9cfe45b06341d28aedd053975cd33ebf94ed36b4e15037185728fefe8681be5";
              sha256_unsigned = "d9cfe45b06341d28aedd053975cd33ebf94ed36b4e15037185728fefe8681be5";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-at91-sam9x-microchip_sam9x60ek-ext4-sdcard.img.gz";
              sha256 = "398f73b30156da8f17f7d985cd7adc98b15de37c67386d2778b2a2a01201e821";
              sha256_unsigned = "398f73b30156da8f17f7d985cd7adc98b15de37c67386d2778b2a2a01201e821";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "microchip,sam9x60ek"
          ];
          titles = [
            {
              model = "SAM9X60-EK";
              vendor = "Microchip";
            }
          ];
        };
      };
      source_date_epoch = 1733038943;
      target = "at91/sam9x";
      version_code = "r32509-ed4f046c3537";
      version_number = "24.10.0-rc1";
    };
    sama5 = {
      arch_packages = "arm_cortex-a5_vfpv4";
      default_packages = [
        "base-files"
        "block-mount"
        "busybox"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-at91-udc"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-usb-gadget-eth"
        "kmod-usb-ohci"
        "kmod-usb2"
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
        "procd"
        "procd-seccomp"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "91e60695e81d6349eb7391784d0b707b";
        version = "6.6.63";
      };
      metadata_version = 1;
      profiles = {
        microchip_sama5d2-icp = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc1-at91-sama5-microchip_sama5d2-icp";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-at91-sama5-microchip_sama5d2-icp-squashfs-root.ubi";
              sha256 = "b0d684a25b857b2dff4bf749c4250bdd85af6aa829665d9b8aece6086d3e7c79";
              sha256_unsigned = "b0d684a25b857b2dff4bf749c4250bdd85af6aa829665d9b8aece6086d3e7c79";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-at91-sama5-microchip_sama5d2-icp-ext4-sdcard.img.gz";
              sha256 = "0da311704d73c182bd3d98b95f74b1579386dc5c195301f8cf548588cd928a4e";
              sha256_unsigned = "0da311704d73c182bd3d98b95f74b1579386dc5c195301f8cf548588cd928a4e";
              type = "sdcard";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-at91-sama5-microchip_sama5d2-icp-ext4-root.ubi";
              sha256 = "2ee9b316a865813492557308946f190ac88f5b60f9847db6ca21fa7e98b19362";
              sha256_unsigned = "2ee9b316a865813492557308946f190ac88f5b60f9847db6ca21fa7e98b19362";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc1-at91-sama5-microchip_sama5d2-icp-ubifs-root.ubi";
              sha256 = "dedbb3929afd5f79d16c8af114c0d7be49a4e6a9cdabf76c433e2818707242c0";
              sha256_unsigned = "dedbb3929afd5f79d16c8af114c0d7be49a4e6a9cdabf76c433e2818707242c0";
              type = "root";
            }
          ];
          supported_devices = [
            "microchip,sama5d2-icp"
          ];
          titles = [
            {
              model = "SAMA5D2 ICP";
              vendor = "Microchip";
            }
          ];
        };
        microchip_sama5d2-ptc-ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc1-at91-sama5-microchip_sama5d2-ptc-ek";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-at91-sama5-microchip_sama5d2-ptc-ek-ext4-root.ubi";
              sha256 = "2ee9b316a865813492557308946f190ac88f5b60f9847db6ca21fa7e98b19362";
              sha256_unsigned = "2ee9b316a865813492557308946f190ac88f5b60f9847db6ca21fa7e98b19362";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc1-at91-sama5-microchip_sama5d2-ptc-ek-ubifs-root.ubi";
              sha256 = "dedbb3929afd5f79d16c8af114c0d7be49a4e6a9cdabf76c433e2818707242c0";
              sha256_unsigned = "dedbb3929afd5f79d16c8af114c0d7be49a4e6a9cdabf76c433e2818707242c0";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-at91-sama5-microchip_sama5d2-ptc-ek-squashfs-root.ubi";
              sha256 = "b0d684a25b857b2dff4bf749c4250bdd85af6aa829665d9b8aece6086d3e7c79";
              sha256_unsigned = "b0d684a25b857b2dff4bf749c4250bdd85af6aa829665d9b8aece6086d3e7c79";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-at91-sama5-microchip_sama5d2-ptc-ek-ext4-sdcard.img.gz";
              sha256 = "e47927595fb16e557a292450261d6af5a02d2bddc101e5df09044671b3a61389";
              sha256_unsigned = "e47927595fb16e557a292450261d6af5a02d2bddc101e5df09044671b3a61389";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "atmel,sama5d2-ptc_ek"
          ];
          titles = [
            {
              model = "SAMA5D2 PTC Ek";
              vendor = "Microchip";
            }
          ];
        };
        microchip_sama5d2-xplained = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc1-at91-sama5-microchip_sama5d2-xplained";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-at91-sama5-microchip_sama5d2-xplained-ext4-root.ubi";
              sha256 = "2ee9b316a865813492557308946f190ac88f5b60f9847db6ca21fa7e98b19362";
              sha256_unsigned = "2ee9b316a865813492557308946f190ac88f5b60f9847db6ca21fa7e98b19362";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-at91-sama5-microchip_sama5d2-xplained-squashfs-root.ubi";
              sha256 = "b0d684a25b857b2dff4bf749c4250bdd85af6aa829665d9b8aece6086d3e7c79";
              sha256_unsigned = "b0d684a25b857b2dff4bf749c4250bdd85af6aa829665d9b8aece6086d3e7c79";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-at91-sama5-microchip_sama5d2-xplained-ext4-sdcard.img.gz";
              sha256 = "69788713c46bf13382b313cdd687ac8d15cc787c334ae32ae4c9e7b3a1ccd30c";
              sha256_unsigned = "69788713c46bf13382b313cdd687ac8d15cc787c334ae32ae4c9e7b3a1ccd30c";
              type = "sdcard";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc1-at91-sama5-microchip_sama5d2-xplained-ubifs-root.ubi";
              sha256 = "dedbb3929afd5f79d16c8af114c0d7be49a4e6a9cdabf76c433e2818707242c0";
              sha256_unsigned = "dedbb3929afd5f79d16c8af114c0d7be49a4e6a9cdabf76c433e2818707242c0";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,sama5d2-xplained"
          ];
          titles = [
            {
              model = "SAMA5D2 Xplained";
              vendor = "Microchip";
            }
          ];
        };
        microchip_sama5d27-som1-ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc1-at91-sama5-microchip_sama5d27-som1-ek";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-at91-sama5-microchip_sama5d27-som1-ek-ext4-root.ubi";
              sha256 = "2ee9b316a865813492557308946f190ac88f5b60f9847db6ca21fa7e98b19362";
              sha256_unsigned = "2ee9b316a865813492557308946f190ac88f5b60f9847db6ca21fa7e98b19362";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-at91-sama5-microchip_sama5d27-som1-ek-squashfs-root.ubi";
              sha256 = "b0d684a25b857b2dff4bf749c4250bdd85af6aa829665d9b8aece6086d3e7c79";
              sha256_unsigned = "b0d684a25b857b2dff4bf749c4250bdd85af6aa829665d9b8aece6086d3e7c79";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc1-at91-sama5-microchip_sama5d27-som1-ek-ubifs-root.ubi";
              sha256 = "dedbb3929afd5f79d16c8af114c0d7be49a4e6a9cdabf76c433e2818707242c0";
              sha256_unsigned = "dedbb3929afd5f79d16c8af114c0d7be49a4e6a9cdabf76c433e2818707242c0";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-at91-sama5-microchip_sama5d27-som1-ek-ext4-sdcard.img.gz";
              sha256 = "0e8a256b59dd9af9fcfd52797942a4efd0b6936ec30c9bbd50e87040a8f27f27";
              sha256_unsigned = "0e8a256b59dd9af9fcfd52797942a4efd0b6936ec30c9bbd50e87040a8f27f27";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "atmel,sama5d27-som1-ek"
          ];
          titles = [
            {
              model = "SAMA5D27 SOM1 Ek";
              vendor = "Microchip";
            }
          ];
        };
        microchip_sama5d27-wlsom1-ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc1-at91-sama5-microchip_sama5d27-wlsom1-ek";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-at91-sama5-microchip_sama5d27-wlsom1-ek-squashfs-root.ubi";
              sha256 = "b0d684a25b857b2dff4bf749c4250bdd85af6aa829665d9b8aece6086d3e7c79";
              sha256_unsigned = "b0d684a25b857b2dff4bf749c4250bdd85af6aa829665d9b8aece6086d3e7c79";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-at91-sama5-microchip_sama5d27-wlsom1-ek-ext4-root.ubi";
              sha256 = "2ee9b316a865813492557308946f190ac88f5b60f9847db6ca21fa7e98b19362";
              sha256_unsigned = "2ee9b316a865813492557308946f190ac88f5b60f9847db6ca21fa7e98b19362";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-at91-sama5-microchip_sama5d27-wlsom1-ek-ext4-sdcard.img.gz";
              sha256 = "f748db5aa85457b6086bd5b16f92e096837988d700185a7e4303801841f186d5";
              sha256_unsigned = "f748db5aa85457b6086bd5b16f92e096837988d700185a7e4303801841f186d5";
              type = "sdcard";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc1-at91-sama5-microchip_sama5d27-wlsom1-ek-ubifs-root.ubi";
              sha256 = "dedbb3929afd5f79d16c8af114c0d7be49a4e6a9cdabf76c433e2818707242c0";
              sha256_unsigned = "dedbb3929afd5f79d16c8af114c0d7be49a4e6a9cdabf76c433e2818707242c0";
              type = "root";
            }
          ];
          supported_devices = [
            "microchip,sama5d27-wlsom1-ek"
          ];
          titles = [
            {
              model = "SAMA5D27 WSOM1 Ek";
              vendor = "Microchip";
            }
          ];
        };
        microchip_sama5d3-xplained = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc1-at91-sama5-microchip_sama5d3-xplained";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc1-at91-sama5-microchip_sama5d3-xplained-ubifs-root.ubi";
              sha256 = "dedbb3929afd5f79d16c8af114c0d7be49a4e6a9cdabf76c433e2818707242c0";
              sha256_unsigned = "dedbb3929afd5f79d16c8af114c0d7be49a4e6a9cdabf76c433e2818707242c0";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-at91-sama5-microchip_sama5d3-xplained-ext4-root.ubi";
              sha256 = "2ee9b316a865813492557308946f190ac88f5b60f9847db6ca21fa7e98b19362";
              sha256_unsigned = "2ee9b316a865813492557308946f190ac88f5b60f9847db6ca21fa7e98b19362";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-at91-sama5-microchip_sama5d3-xplained-squashfs-root.ubi";
              sha256 = "b0d684a25b857b2dff4bf749c4250bdd85af6aa829665d9b8aece6086d3e7c79";
              sha256_unsigned = "b0d684a25b857b2dff4bf749c4250bdd85af6aa829665d9b8aece6086d3e7c79";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-at91-sama5-microchip_sama5d3-xplained-ext4-sdcard.img.gz";
              sha256 = "b7cb406d71085670a47518caf6b057f659ce6d6f6d765fc8f30b7334b4dcf135";
              sha256_unsigned = "b7cb406d71085670a47518caf6b057f659ce6d6f6d765fc8f30b7334b4dcf135";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "atmel,sama5d3-xplained"
          ];
          titles = [
            {
              model = "SAMA5D3 Xplained";
              vendor = "Microchip";
            }
          ];
        };
        microchip_sama5d4-xplained = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc1-at91-sama5-microchip_sama5d4-xplained";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc1-at91-sama5-microchip_sama5d4-xplained-ubifs-root.ubi";
              sha256 = "baaa2fa02c476af35c989f17f8aa71f500cdd7364be85cb474423f72e75275af";
              sha256_unsigned = "baaa2fa02c476af35c989f17f8aa71f500cdd7364be85cb474423f72e75275af";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-at91-sama5-microchip_sama5d4-xplained-ext4-root.ubi";
              sha256 = "d70ec3b7d6656a2a50e28caf9afcd6f46eda3656cbebe92511613d736f55ecf2";
              sha256_unsigned = "d70ec3b7d6656a2a50e28caf9afcd6f46eda3656cbebe92511613d736f55ecf2";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-at91-sama5-microchip_sama5d4-xplained-squashfs-root.ubi";
              sha256 = "1b1b1ff872514f132fac130ab07e2531f0902d73727772f5c1f7c64eda22aeaf";
              sha256_unsigned = "1b1b1ff872514f132fac130ab07e2531f0902d73727772f5c1f7c64eda22aeaf";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-at91-sama5-microchip_sama5d4-xplained-ext4-sdcard.img.gz";
              sha256 = "1da6e8b2cbe652c6fdd159188d0cda580bcd9c6a2b7ece341d0654dbe82a20f0";
              sha256_unsigned = "1da6e8b2cbe652c6fdd159188d0cda580bcd9c6a2b7ece341d0654dbe82a20f0";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "atmel,sama5d4-xplained"
          ];
          titles = [
            {
              model = "SAMA5D4 Xplained";
              vendor = "Microchip";
            }
          ];
        };
      };
      source_date_epoch = 1733038943;
      target = "at91/sama5";
      version_code = "r32509-ed4f046c3537";
      version_number = "24.10.0-rc1";
    };
    sama7 = {
      arch_packages = "arm_cortex-a7_vfpv4";
      default_packages = [
        "base-files"
        "block-mount"
        "busybox"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-at91-udc"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-usb-gadget-eth"
        "kmod-usb-ohci"
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
        "procd"
        "procd-seccomp"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "6a50764878308d2caeec9e7b9d391433";
        version = "6.6.63";
      };
      metadata_version = 1;
      profiles = {
        microchip_sama7g5-ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-rc1-at91-sama7-microchip_sama7g5-ek";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-at91-sama7-microchip_sama7g5-ek-squashfs-root.ubi";
              sha256 = "c012b1628c2ab1cb9be787792d760757df485c98a0892c7a5135176d307311d5";
              sha256_unsigned = "c012b1628c2ab1cb9be787792d760757df485c98a0892c7a5135176d307311d5";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-at91-sama7-microchip_sama7g5-ek-ext4-root.ubi";
              sha256 = "48d437dde278a8d2d9f545b50878a6e9618f3a7282b309d1cf83d8a5ef527e39";
              sha256_unsigned = "48d437dde278a8d2d9f545b50878a6e9618f3a7282b309d1cf83d8a5ef527e39";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-rc1-at91-sama7-microchip_sama7g5-ek-ubifs-root.ubi";
              sha256 = "80eba810c946141377a6baa4e7f587f2c7b7450e4564675cd2996b243678c0cf";
              sha256_unsigned = "80eba810c946141377a6baa4e7f587f2c7b7450e4564675cd2996b243678c0cf";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-at91-sama7-microchip_sama7g5-ek-ext4-sdcard.img.gz";
              sha256 = "fa1194b1cceaa7e023d25c6f649356e4037f8cbaca50296a2d3ac06ecc8a3ef3";
              sha256_unsigned = "fa1194b1cceaa7e023d25c6f649356e4037f8cbaca50296a2d3ac06ecc8a3ef3";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "microchip,sama7g5ek"
          ];
          titles = [
            {
              model = "SAMA7G5-EK";
              vendor = "Microchip";
            }
          ];
        };
      };
      source_date_epoch = 1733038943;
      target = "at91/sama7";
      version_code = "r32509-ed4f046c3537";
      version_number = "24.10.0-rc1";
    };
  };
  ath79 = {
    mikrotik = {
      arch_packages = "mips_24kc";
      default_packages = [
        "base-files"
        "block-mount"
        "busybox"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-ath9k"
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
        "procd"
        "procd-seccomp"
        "procd-ujail"
        "swconfig"
        "uboot-envtools"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
        "wpad-basic-openssl"
        "yafut"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "1c2dfd2788319526be474415954e43b4";
        version = "6.6.63";
      };
      metadata_version = 1;
      profiles = {
        mikrotik_routerboard-493g = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-493g";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-493g-initramfs-kernel.bin";
              sha256 = "e6d8cb87b4c4be54b2f34fe773aa4782bec6b06c6ea044d0b9922ded82ad7587";
              sha256_unsigned = "e6d8cb87b4c4be54b2f34fe773aa4782bec6b06c6ea044d0b9922ded82ad7587";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-493g-squashfs-sysupgrade.bin";
              sha256 = "a84b60e8c2de6a7d2d8b55cb13bc90cfee7c455311b39c5ef602d5a4032a3477";
              sha256_unsigned = "c9ffa2d79dc2c1d49b34a563412d689d617c6bf1a67ca6f6f46177f885048445";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-493g"
            "rb-493g"
          ];
          titles = [
            {
              model = "RouterBOARD 493G";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-750-r2 = {
          device_packages = [
            "-yafut"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-750-r2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-750-r2-squashfs-sysupgrade.bin";
              sha256 = "78d0375ee051f0ad99995db69c11f03c850d005b16d45ec95baa9ae93b808bad";
              sha256_unsigned = "a63e6a3debff1cad40431b5077ddc996f49f855fdaea51907fd60aaf37274eb0";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-750-r2-initramfs-kernel.bin";
              sha256 = "5085f3404eaa53b5539c110a0432ddde47752660af55815efffc0c1e2ca262bb";
              sha256_unsigned = "5085f3404eaa53b5539c110a0432ddde47752660af55815efffc0c1e2ca262bb";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-750-r2"
            "rb-750-r2"
          ];
          titles = [
            {
              model = "RouterBOARD 750 r2 (hEX lite)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-911-lite = {
          device_packages = [
            "-yafut"
            "rssileds"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-911-lite";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-911-lite-squashfs-sysupgrade.bin";
              sha256 = "3964703d3a144dedd9ed368aebb502631da1a162f16b763d48816e487d2267dd";
              sha256_unsigned = "fdad971608d7e87b902e644528f063d2bd0ba13e347a0fd4b895c7fc431a20b6";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-911-lite-initramfs-kernel.bin";
              sha256 = "e83e4936b2aca173fc5e4d7cf5d364b1b7c377b76a94d0943dd7e11a77622443";
              sha256_unsigned = "e83e4936b2aca173fc5e4d7cf5d364b1b7c377b76a94d0943dd7e11a77622443";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-911-lite"
            "rb-911-2hn"
            "rb-911-5hn"
          ];
          titles = [
            {
              model = "RouterBOARD 911 Lite2/Lite5 (2Hn/5Hn)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-911g-5hpacd = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-911g-5hpacd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-911g-5hpacd-squashfs-sysupgrade.bin";
              sha256 = "064290cf3ce646c4e1c1810abbef9f9af98709c2699a8153f0e620e587b44715";
              sha256_unsigned = "168351166de2189eac1c91a08ed2fe05d11337fbb65de1a24468ca46e8712d43";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-911g-5hpacd-initramfs-kernel.bin";
              sha256 = "1808aca8fdd3f4a034b084be663409811164deb8bd7acd91e62057175579108f";
              sha256_unsigned = "1808aca8fdd3f4a034b084be663409811164deb8bd7acd91e62057175579108f";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-911g-5hpacd"
            "rb-921gs-5hpacd-r2"
          ];
          titles = [
            {
              model = "RouterBOARD 911G-5HPacD";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-911g-xhpnd = {
          device_packages = [
            "rssileds"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-911g-xhpnd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-911g-xhpnd-initramfs-kernel.bin";
              sha256 = "f069aed76d606350523c9e6f772181be80b86d4dd2014f5cbe1dfc7152dd552b";
              sha256_unsigned = "f069aed76d606350523c9e6f772181be80b86d4dd2014f5cbe1dfc7152dd552b";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-911g-xhpnd-squashfs-sysupgrade.bin";
              sha256 = "2482ceccd887f375aeb8e69ad0f27997feaae8c6f0c109ff633b25410e7cbda4";
              sha256_unsigned = "18c83820d812e9792d95a544612cca5a838cac91d74ad8343737107c527829de";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-911g-xhpnd"
            "rb-912uag-2hpnd"
          ];
          titles = [
            {
              model = "RouterBOARD 911G-2HPnD";
              vendor = "MikroTik";
            }
            {
              model = "RouterBOARD 911G-5HPnD";
              vendor = "Mikrotik";
            }
          ];
        };
        mikrotik_routerboard-912uag-2hpnd = {
          device_packages = [
            "kmod-usb-ehci"
            "kmod-usb2"
            "rssileds"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-912uag-2hpnd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-912uag-2hpnd-squashfs-sysupgrade.bin";
              sha256 = "f478e0a2cffaa5f223d4a86195cd5c15e15aad697c2b0f66a88a60a07272bb94";
              sha256_unsigned = "65ed97c08f2cbfcce2c915fb9bd2967bd121fc7c1718687521ac0dbfbe20a63b";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-912uag-2hpnd-initramfs-kernel.bin";
              sha256 = "05f9fef50f0b54e15672777b7186491744385a31fc729e76d64c37821758d862";
              sha256_unsigned = "05f9fef50f0b54e15672777b7186491744385a31fc729e76d64c37821758d862";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-912uag-2hpnd"
            "rb-912uag-2hpnd"
          ];
          titles = [
            {
              model = "RouterBOARD 912UAG-2HPnD";
              vendor = "MikroTik";
            }
            {
              model = "RouterBOARD 912UAG-5HPnD";
              vendor = "Mikrotik";
            }
          ];
        };
        mikrotik_routerboard-921gs-5hpacd-15s = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "kmod-i2c-gpio"
            "kmod-sfp"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-921gs-5hpacd-15s";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-921gs-5hpacd-15s-squashfs-sysupgrade.bin";
              sha256 = "d02d332f1723a9652eaf9a21cf112a7217d947fe3677d0be7b3dc09c19b29da1";
              sha256_unsigned = "dc1422480d67a1d08107afcefc5bfaf17a5e5a6b9a40771718e33d1231474ae7";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-921gs-5hpacd-15s-initramfs-kernel.bin";
              sha256 = "d228f1b00a4da81243f48ae292f42c7b17686710856a2e2285e9994002507949";
              sha256_unsigned = "d228f1b00a4da81243f48ae292f42c7b17686710856a2e2285e9994002507949";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-921gs-5hpacd-15s"
            "rb-921gs-5hpacd-r2"
          ];
          titles = [
            {
              model = "RouterBOARD 921GS-5HPacD-15s (mANTBox 15s)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-922uags-5hpacd = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "kmod-usb2"
            "kmod-i2c-gpio"
            "kmod-sfp"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-922uags-5hpacd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-922uags-5hpacd-initramfs-kernel.bin";
              sha256 = "a09b84bb8833828b0eb30a9db4b5f34f063d454a33d5708029aa110a4e2b1885";
              sha256_unsigned = "a09b84bb8833828b0eb30a9db4b5f34f063d454a33d5708029aa110a4e2b1885";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-922uags-5hpacd-squashfs-sysupgrade.bin";
              sha256 = "57d67a61d15324d5d8467ebcd1240b7e79c4d9bd04ce5433c4c2c77115682d6e";
              sha256_unsigned = "a696c3f6c16a4ca3cebc6c84c857f76bea3eb3606d627eab6d6487253d8cdb0b";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-922uags-5hpacd"
            "rb-922uags-5hpacd"
          ];
          titles = [
            {
              model = "RouterBOARD 922UAGS-5HPacD";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-951g-2hnd = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-951g-2hnd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-951g-2hnd-squashfs-sysupgrade.bin";
              sha256 = "39d1edf82d944076e80bc209cbf08c7df8a9aa32c13c17c20bafa86e6b308b67";
              sha256_unsigned = "488fac7fc5bbb12a56203d1800056d181f13b81000c317495a5863475be93f23";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-951g-2hnd-initramfs-kernel.bin";
              sha256 = "bab8aa9d1fa961ba4b823fc5dfc991038fb3bfb02ce2604aa8309bb77fe3afe0";
              sha256_unsigned = "bab8aa9d1fa961ba4b823fc5dfc991038fb3bfb02ce2604aa8309bb77fe3afe0";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-951g-2hnd"
            "rb-951g-2hnd"
          ];
          titles = [
            {
              model = "RouterBOARD 951G-2HnD";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-951ui-2hnd = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-951ui-2hnd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-951ui-2hnd-squashfs-sysupgrade.bin";
              sha256 = "25f725a0e2871cf8577ebab9c45620f5581aeb468d466e505d121c65284ad661";
              sha256_unsigned = "3eb3c1d64ed2e4785b461a6bf107c1c538e8a01238313c368c1a2debd0721ebd";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-951ui-2hnd-initramfs-kernel.bin";
              sha256 = "7840661513f16326799c02547638c3363e75b2c33179cfdbf70d980384ee85e7";
              sha256_unsigned = "7840661513f16326799c02547638c3363e75b2c33179cfdbf70d980384ee85e7";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-951ui-2hnd"
            "rb-951ui-2hnd"
          ];
          titles = [
            {
              model = "RouterBOARD 951Ui-2HnD";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-951ui-2nd = {
          device_packages = [
            "-yafut"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-951ui-2nd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-951ui-2nd-squashfs-sysupgrade.bin";
              sha256 = "0b87875be40dbbb54e4190050937446c4f71631d1c6cb64e8b92073d2263d2d5";
              sha256_unsigned = "832e8612139632b85237d5182caf922b500e3f969afd4d9a865b65b8e85d6047";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-951ui-2nd-initramfs-kernel.bin";
              sha256 = "1dea4758ace9cdba952a8fff1945b5898096d3e2f2ee7beef9d630975a982189";
              sha256_unsigned = "1dea4758ace9cdba952a8fff1945b5898096d3e2f2ee7beef9d630975a982189";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-951ui-2nd"
            "rb-951ui-2nd"
          ];
          titles = [
            {
              model = "RouterBOARD 951Ui-2nD (hAP)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-952ui-5ac2nd = {
          device_packages = [
            "-yafut"
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca9887-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-952ui-5ac2nd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-952ui-5ac2nd-initramfs-kernel.bin";
              sha256 = "8bd4b2d37c7b758c118fa0e7f375e26ec8854de4c88705ae641c1d21ac4fc64f";
              sha256_unsigned = "8bd4b2d37c7b758c118fa0e7f375e26ec8854de4c88705ae641c1d21ac4fc64f";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-952ui-5ac2nd-squashfs-sysupgrade.bin";
              sha256 = "1f0119accac48596f3fdae0f611c228b98d9156b6d3ea663a6e1dbb891a5c083";
              sha256_unsigned = "6dde60ea08c4859bfe9df98c1f0a1684dd4d08cdb5fee5625dde663105809a90";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-952ui-5ac2nd"
            "rb-952ui-5ac2nd"
          ];
          titles = [
            {
              model = "RouterBOARD 952Ui-5ac2nD (hAP ac lite)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-962uigs-5hact2hnt = {
          device_packages = [
            "-yafut"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "kmod-usb2"
            "kmod-i2c-gpio"
            "kmod-sfp"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-962uigs-5hact2hnt";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-962uigs-5hact2hnt-initramfs-kernel.bin";
              sha256 = "8683947eed804438b95bb7d5eea0e56956f7938add729a430abcb5254f3a0ac9";
              sha256_unsigned = "8683947eed804438b95bb7d5eea0e56956f7938add729a430abcb5254f3a0ac9";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-962uigs-5hact2hnt-squashfs-sysupgrade.bin";
              sha256 = "6e04ae792ed92e8db17c92cdb77fc38b94b67f34faa521d5eaefc54e1718698c";
              sha256_unsigned = "5c459a8a5f34b250b98f4e5f06ce8d7d6a3213d299b388df8feb8f1bb57a88da";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-962uigs-5hact2hnt"
            "rb-962uigs-5hact2hnt"
          ];
          titles = [
            {
              model = "RouterBOARD 962UiGS-5HacT2HnT (hAP ac)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-lhg-2nd = {
          device_packages = [
            "-yafut"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-lhg-2nd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-lhg-2nd-squashfs-sysupgrade.bin";
              sha256 = "b99b457ff22c2019f7cd198b1b4c8d14b02ecb86a1f5f0952eeea3ce78b1102d";
              sha256_unsigned = "f72f92ae1258d90ad7bcead24e1590f04b5c3db75e86b92677d15bcbe0d87943";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-lhg-2nd-initramfs-kernel.bin";
              sha256 = "0eae63050733c243deb840708a7eee36c2f6ea87bd7d92b3df3912d04e0ff974";
              sha256_unsigned = "0eae63050733c243deb840708a7eee36c2f6ea87bd7d92b3df3912d04e0ff974";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-lhg-2nd"
          ];
          titles = [
            {
              model = "RouterBOARD LHG 2nD (LHG 2)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-lhg-5nd = {
          device_packages = [
            "-yafut"
            "rssileds"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-lhg-5nd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-lhg-5nd-initramfs-kernel.bin";
              sha256 = "ed65a713b73a896dc7e25c93fc0a56e6e984578e7dcc7b050e3099a04e30f995";
              sha256_unsigned = "ed65a713b73a896dc7e25c93fc0a56e6e984578e7dcc7b050e3099a04e30f995";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-lhg-5nd-squashfs-sysupgrade.bin";
              sha256 = "14b4821f388a9c3bdd7d579e4f4cf130cfe28b91266b8a25a3d3745bcfebcd4b";
              sha256_unsigned = "1d9a1436f6bc65c68e17cf8be2088242b949a6b725c3440072307e21e5d0571f";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-lhg-5nd"
          ];
          titles = [
            {
              model = "RouterBOARD LHG 5nD (LHG 5)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-map-2nd = {
          device_packages = [
            "-yafut"
            "kmod-usb2"
            "kmod-ledtrig-gpio"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-map-2nd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-map-2nd-initramfs-kernel.bin";
              sha256 = "7db4073ca7b730475c5d8096c0543726c69f60b4d3fdc6136971638c60e29f95";
              sha256_unsigned = "7db4073ca7b730475c5d8096c0543726c69f60b4d3fdc6136971638c60e29f95";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-map-2nd-squashfs-sysupgrade.bin";
              sha256 = "654a2d507b96d477297c752373b8088fd23e4e0e52807a658ae1bf41bc1d8f59";
              sha256_unsigned = "f63aa57dd2897f8887898823830737decf617a1aa156bdddeda26c8cc7f9b50d";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-map-2nd"
          ];
          titles = [
            {
              model = "RouterBOARD mAP-2nD (mAP)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-mapl-2nd = {
          device_packages = [
            "-yafut"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-mapl-2nd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-mapl-2nd-squashfs-sysupgrade.bin";
              sha256 = "1e318a036ef6710512672127ec7011463887f157416121096fdaa9ca445d8168";
              sha256_unsigned = "74e776fe72952745c290daa58208582714257e8cd8779f263336362bf8b23d47";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-mapl-2nd-initramfs-kernel.bin";
              sha256 = "887671cb55726560633206d404c8c7baf5c0c96672530402cbbec15975350a19";
              sha256_unsigned = "887671cb55726560633206d404c8c7baf5c0c96672530402cbbec15975350a19";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-mapl-2nd"
          ];
          titles = [
            {
              model = "RouterBOARD mAPL-2nD (mAP lite)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-sxt-5nd-r2 = {
          device_packages = [
            "rssileds"
            "kmod-gpio-beeper"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-sxt-5nd-r2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-sxt-5nd-r2-squashfs-sysupgrade.bin";
              sha256 = "57a6728424bbe5b7807a69add86ef05eaccd145afaee88ab58d95e5bd50d2e01";
              sha256_unsigned = "3b7ccf98186e38a24960c25857172050d9a3e20ff4ed20a771be0f2defe29d93";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-sxt-5nd-r2-initramfs-kernel.bin";
              sha256 = "556e7bb3862c1e79868bf0ca94e15109bf6e87776e69e4fa19630ab83d62ecdb";
              sha256_unsigned = "556e7bb3862c1e79868bf0ca94e15109bf6e87776e69e4fa19630ab83d62ecdb";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-sxt-5nd-r2"
            "rb-sxt5n"
          ];
          titles = [
            {
              model = "RouterBOARD SXT 5nD r2 (SXT Lite5)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-wap-2nd = {
          device_packages = [
            "-yafut"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-wap-2nd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-wap-2nd-squashfs-sysupgrade.bin";
              sha256 = "8c190b4cacc61db1b65684de7154c74cb323f630de92f6a41089c769af69901d";
              sha256_unsigned = "7dd8d10a14e52ca1f419c471c835f0a42fad03ad95e179ffe12767a9ca6b99e6";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-wap-2nd-initramfs-kernel.bin";
              sha256 = "5c7776902b52911adbde645dd9f3e006b997e8f8a49f0414f0b21fffecda18f3";
              sha256_unsigned = "5c7776902b52911adbde645dd9f3e006b997e8f8a49f0414f0b21fffecda18f3";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-wap-2nd"
          ];
          titles = [
            {
              model = "RouterBOARD wAP-2nD (wAP)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-wap-g-5hact2hnd = {
          device_packages = [
            "-yafut"
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-wap-g-5hact2hnd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-wap-g-5hact2hnd-initramfs-kernel.bin";
              sha256 = "d5994d59bcb3b5222e7e3c433b8c69ab9cf0abc2f42d68cb7961d2413800406f";
              sha256_unsigned = "d5994d59bcb3b5222e7e3c433b8c69ab9cf0abc2f42d68cb7961d2413800406f";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-wap-g-5hact2hnd-squashfs-sysupgrade.bin";
              sha256 = "1913d1e627775d14df425376c36f9064dd1c0bc5d183a56d0dbd47b42c38aeae";
              sha256_unsigned = "635e1f3f555499719ae938c9fde452c2ecdbad95e31450542d4580c35ca7c627";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-wap-g-5hact2hnd"
            "rb-wapg-5hact2hnd"
          ];
          titles = [
            {
              model = "RouterBOARD wAP G-5HacT2HnD (wAP AC)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-wapr-2nd = {
          device_packages = [
            "-yafut"
            "kmod-usb2"
            "rssileds"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-wapr-2nd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-wapr-2nd-squashfs-sysupgrade.bin";
              sha256 = "812fa7e431edbc6abead2b95afa10ab9b11f4293024c26937cdee6a5ba336cef";
              sha256_unsigned = "8b09e84b99f24180cb54b05ef4507468cb3165267a422085a8145602ce87774a";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-mikrotik-mikrotik_routerboard-wapr-2nd-initramfs-kernel.bin";
              sha256 = "783dac0d52c36d6651755fb4c11bee41b19228889786178a3e1321c35e5374bf";
              sha256_unsigned = "783dac0d52c36d6651755fb4c11bee41b19228889786178a3e1321c35e5374bf";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-wapr-2nd"
          ];
          titles = [
            {
              model = "RouterBOARD wAPR-2nD (wAP R)";
              vendor = "MikroTik";
            }
          ];
        };
      };
      source_date_epoch = 1733038943;
      target = "ath79/mikrotik";
      version_code = "r32509-ed4f046c3537";
      version_number = "24.10.0-rc1";
    };
    nand = {
      arch_packages = "mips_24kc";
      default_packages = [
        "base-files"
        "block-mount"
        "busybox"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-ath9k"
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
        "procd"
        "procd-seccomp"
        "procd-ujail"
        "swconfig"
        "uboot-envtools"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
        "wpad-basic-openssl"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "0f0f5332d5461c58bfbe8982125b2275";
        version = "6.6.63";
      };
      metadata_version = 1;
      profiles = {
        "8dev_rambutan" = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-nand-8dev_rambutan";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-8dev_rambutan-squashfs-sysupgrade.tar";
              sha256 = "678f1f684f91fbabf7d65bf3b0d77bf4004082e9c412071ef44863d2b9b81b5c";
              sha256_unsigned = "d4edab4fd1fd6d08e3908568b7797396618285603d4c90f097106441fa04d9dd";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-8dev_rambutan-initramfs-kernel.bin";
              sha256 = "a3b5d2f235ffcc1a8a6e1573b4ee64de0c6114539f089fa6857d3f41864ff87e";
              sha256_unsigned = "a3b5d2f235ffcc1a8a6e1573b4ee64de0c6114539f089fa6857d3f41864ff87e";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-8dev_rambutan-squashfs-factory.bin";
              sha256 = "f98b2f8d1c3e07d5644525b19956eab3d1217a5465032d99f3b040490b2a8d9c";
              sha256_unsigned = "f98b2f8d1c3e07d5644525b19956eab3d1217a5465032d99f3b040490b2a8d9c";
              type = "factory";
            }
          ];
          supported_devices = [
            "8dev,rambutan"
          ];
          titles = [
            {
              model = "Rambutan";
              vendor = "8devices";
            }
          ];
        };
        aerohive_hiveap-121 = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-nand-aerohive_hiveap-121";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-aerohive_hiveap-121-squashfs-sysupgrade.bin";
              sha256 = "6e2d072d8c88b0daaac19542879229770d802bfb2d197d3caa7f6bd5d21136d0";
              sha256_unsigned = "a48f048fdae9b614ce1983b6b2e746a2e71202453e95d4f1f802c4ba1ea29837";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-aerohive_hiveap-121-initramfs-kernel.bin";
              sha256 = "fefc15067a3d557498e2026e04f756acad936289ced338c333737ad9cabbdcf5";
              sha256_unsigned = "fefc15067a3d557498e2026e04f756acad936289ced338c333737ad9cabbdcf5";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-aerohive_hiveap-121-squashfs-factory.bin";
              sha256 = "769dace126fb96d84d4e64696f0085378fe49abc348950d13a68c645c3b4fa0c";
              sha256_unsigned = "769dace126fb96d84d4e64696f0085378fe49abc348950d13a68c645c3b4fa0c";
              type = "factory";
            }
          ];
          supported_devices = [
            "aerohive,hiveap-121"
            "hiveap-121"
          ];
          titles = [
            {
              model = "HiveAP 121";
              vendor = "Aerohive";
            }
          ];
        };
        domywifi_dw33d = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-storage"
            "kmod-usb-ledtrig-usbport"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-nand-domywifi_dw33d";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-domywifi_dw33d-initramfs-kernel.bin";
              sha256 = "24f9636a211326f380a742a1758a4a5ecafcc8431e2ae6391f4caf3c41ea05f5";
              sha256_unsigned = "24f9636a211326f380a742a1758a4a5ecafcc8431e2ae6391f4caf3c41ea05f5";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-domywifi_dw33d-squashfs-factory.bin";
              sha256 = "4e2417cce690042ffb584ec6977585d0589799b22d4347010c4f69d2ef0fe3aa";
              sha256_unsigned = "4e2417cce690042ffb584ec6977585d0589799b22d4347010c4f69d2ef0fe3aa";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-domywifi_dw33d-squashfs-sysupgrade.bin";
              sha256 = "f0fc6b2fe834116c4de3670109f10a1732208c788b428455509987e93ceb301b";
              sha256_unsigned = "264f600bc50fd2406212261cd58219f0fc185723598af2dba31e1d79a7c9e18d";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "domywifi,dw33d"
          ];
          titles = [
            {
              model = "DW33D";
              vendor = "DomyWifi";
            }
          ];
        };
        dongwon_dw02-412h-128m = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-nand-dongwon_dw02-412h-128m";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-dongwon_dw02-412h-128m-initramfs-kernel.bin";
              sha256 = "ff2a3851b5f1473bfc08936994e31ee04366b667a8d5f9337fa4f72be92c61d2";
              sha256_unsigned = "ff2a3851b5f1473bfc08936994e31ee04366b667a8d5f9337fa4f72be92c61d2";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-dongwon_dw02-412h-128m-squashfs-sysupgrade.bin";
              sha256 = "4e8c25169c28dac043a870e377407e1934719d9b41c75986baade74b659bd23b";
              sha256_unsigned = "86fd17aed3b2d342abba4270b8300d53611098dad4ff6582129f71bcb88ff409";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-dongwon_dw02-412h-128m-squashfs-factory.img";
              sha256 = "c68a1f686eb58c4edebc1358502abe0ae907387f3610bcae6bd1cf9060bde6bb";
              sha256_unsigned = "c68a1f686eb58c4edebc1358502abe0ae907387f3610bcae6bd1cf9060bde6bb";
              type = "factory";
            }
          ];
          supported_devices = [
            "dongwon,dw02-412h-128m"
          ];
          titles = [
            {
              model = "DW02-412H";
              variant = "(128M)";
              vendor = "Dongwon T&I";
            }
            {
              model = "GiGA WiFi home";
              variant = "(128M)";
              vendor = "KT";
            }
          ];
        };
        dongwon_dw02-412h-64m = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-nand-dongwon_dw02-412h-64m";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-dongwon_dw02-412h-64m-squashfs-sysupgrade.bin";
              sha256 = "4e097740705feb67ce5695245dd72cfc92b66254a237ee6289eaf2c75ddecd40";
              sha256_unsigned = "2e427b90babc68ddff6015e122df40485bb52c8723da7997ca98095815af54a0";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-dongwon_dw02-412h-64m-squashfs-factory.img";
              sha256 = "e12b9f64bd05aa89019d74a6529c2bd360cdbb322df348f47487b181413eafd1";
              sha256_unsigned = "e12b9f64bd05aa89019d74a6529c2bd360cdbb322df348f47487b181413eafd1";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-dongwon_dw02-412h-64m-initramfs-kernel.bin";
              sha256 = "18026a1d116182041255d5918225a0e4baca74392898529444136501fa8e86c3";
              sha256_unsigned = "18026a1d116182041255d5918225a0e4baca74392898529444136501fa8e86c3";
              type = "kernel";
            }
          ];
          supported_devices = [
            "dongwon,dw02-412h-64m"
          ];
          titles = [
            {
              model = "DW02-412H";
              variant = "(64M)";
              vendor = "Dongwon T&I";
            }
            {
              model = "GiGA WiFi home";
              variant = "(64M)";
              vendor = "KT";
            }
          ];
        };
        glinet_gl-ar300m-nand = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-nand-glinet_gl-ar300m-nand";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-glinet_gl-ar300m-nand-initramfs-kernel.bin";
              sha256 = "15a2eb1f40c768928b4d159fb9c17094e85b410c1a2b9ffe2eae202dd147bd1b";
              sha256_unsigned = "15a2eb1f40c768928b4d159fb9c17094e85b410c1a2b9ffe2eae202dd147bd1b";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-glinet_gl-ar300m-nand-squashfs-sysupgrade.bin";
              sha256 = "0574d6c2e36eb922bdbbcc245226aeb4f6528b1ad92f6e1ffe5256da642a7166";
              sha256_unsigned = "c0d342af79b05f49e0b1eddcc6e6475802354f60953c84e98efb7e550f00717b";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-glinet_gl-ar300m-nand-squashfs-factory.img";
              sha256 = "c72892200b9733f795b163a81612c0944c79349d1f526d18628b1e5bbabf99bb";
              sha256_unsigned = "c72892200b9733f795b163a81612c0944c79349d1f526d18628b1e5bbabf99bb";
              type = "factory";
            }
          ];
          supported_devices = [
            "glinet,gl-ar300m-nand"
            "glinet,gl-ar300m-nor"
          ];
          titles = [
            {
              model = "GL-AR300M";
              variant = "NAND";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_gl-ar300m-nor = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-nand-glinet_gl-ar300m-nor";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-glinet_gl-ar300m-nor-initramfs-kernel.bin";
              sha256 = "f08dc69ef17e8a1e6d81c9f55a1523cbb2675cce799e64c928667249e60a16d5";
              sha256_unsigned = "f08dc69ef17e8a1e6d81c9f55a1523cbb2675cce799e64c928667249e60a16d5";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-glinet_gl-ar300m-nor-squashfs-sysupgrade.bin";
              sha256 = "f0de05338bb614fcc48b9f0346dc247572a273f8f60c1af6c75b00b2bffca50d";
              sha256_unsigned = "9ab728ce3bbcb115cb7909dac4a8a139ab873d62fd3fd971bb56bebd78fbe374";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "glinet,gl-ar300m-nor"
            "glinet,gl-ar300m-nand"
            "gl-ar300m"
          ];
          titles = [
            {
              model = "GL-AR300M";
              variant = "NOR";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_gl-ar750s-nor = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9887-ct"
            "kmod-usb2"
            "kmod-usb-storage"
            "block-mount"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-nand-glinet_gl-ar750s-nor";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-glinet_gl-ar750s-nor-initramfs-kernel.bin";
              sha256 = "428ad551865ceca06ccb55608675deaecb0e7713823c31894eb329ef9c9d7691";
              sha256_unsigned = "428ad551865ceca06ccb55608675deaecb0e7713823c31894eb329ef9c9d7691";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-glinet_gl-ar750s-nor-squashfs-sysupgrade.bin";
              sha256 = "9b5fb5c7bc8580ca78d3130a83a3db41532130714e6ec3602d28aab8c6a63403";
              sha256_unsigned = "fdf99a7ba5a9caf7f0035303910a2e395c46bc0a9bcae65ffd5c3bdd1b595ff7";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "glinet,gl-ar750s-nor"
            "gl-ar750s"
            "glinet,gl-ar750s"
            "glinet,gl-ar750s-nor-nand"
          ];
          titles = [
            {
              model = "GL-AR750S";
              variant = "NOR";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_gl-ar750s-nor-nand = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9887-ct"
            "kmod-usb2"
            "kmod-usb-storage"
            "block-mount"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-nand-glinet_gl-ar750s-nor-nand";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-glinet_gl-ar750s-nor-nand-squashfs-sysupgrade.bin";
              sha256 = "4bb783e48f49ee694fecc2008b9f097d02020226571632aca53c1e02d5812046";
              sha256_unsigned = "829b6348c0f86701d8bdd6ac5e5a4ea3c3e065c2ca33241def8991040b5ad605";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-glinet_gl-ar750s-nor-nand-initramfs-kernel.bin";
              sha256 = "d843161914909b40dfd89e14da6de7f9602a9afb0c75b6db49e3ae03e4b5c68a";
              sha256_unsigned = "d843161914909b40dfd89e14da6de7f9602a9afb0c75b6db49e3ae03e4b5c68a";
              type = "kernel";
            }
          ];
          supported_devices = [
            "glinet,gl-ar750s-nor-nand"
            "glinet,gl-ar750s-nor"
          ];
          titles = [
            {
              model = "GL-AR750S";
              variant = "NOR/NAND";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_gl-e750 = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9887-ct"
            "kmod-usb2"
            "kmod-usb-net-qmi-wwan"
            "kmod-usb-serial-option"
            "uqmi"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-nand-glinet_gl-e750";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-glinet_gl-e750-initramfs-kernel.bin";
              sha256 = "083c2f5f693dfaa93093485dc5079b2f3158e18290000bc580e118f355f53140";
              sha256_unsigned = "083c2f5f693dfaa93093485dc5079b2f3158e18290000bc580e118f355f53140";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-glinet_gl-e750-squashfs-factory.img";
              sha256 = "5022bd76838ddda6be268f9a3e5ab1abc933831114e1ffc4aea465c12c651aca";
              sha256_unsigned = "5022bd76838ddda6be268f9a3e5ab1abc933831114e1ffc4aea465c12c651aca";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-glinet_gl-e750-squashfs-sysupgrade.bin";
              sha256 = "e7797c649d3f1a26109e16c22227b7e68090b0dfc9b2ac801ae1f3d8227fdb8b";
              sha256_unsigned = "cf74c9fe3e6c6448503f13e0cb22f661d135c93e2e99af01254104b5e06dc6b6";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "glinet,gl-e750"
            "gl-e750"
          ];
          titles = [
            {
              model = "GL-E750";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_gl-s200-nor = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-serial-ch341"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-nand-glinet_gl-s200-nor";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-glinet_gl-s200-nor-squashfs-sysupgrade.bin";
              sha256 = "f4b0b7a203ba275e54618b98ace88e334e8e575df285853a316dcc7574020d63";
              sha256_unsigned = "db85ce603b171f9734985222c2704d3c29cbf927070c5e1892d1449ab96ae87f";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-glinet_gl-s200-nor-initramfs-kernel.bin";
              sha256 = "0508e1b7f65bb1083ae5f91c6f67e0c04c709f3b5580b0bb80fd03941cd23ee1";
              sha256_unsigned = "0508e1b7f65bb1083ae5f91c6f67e0c04c709f3b5580b0bb80fd03941cd23ee1";
              type = "kernel";
            }
          ];
          supported_devices = [
            "glinet,gl-s200-nor"
            "gl-s200"
            "glinet,gl-s200"
          ];
          titles = [
            {
              model = "GL-S200";
              variant = "NOR";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_gl-s200-nor-nand = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-serial-ch341"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-nand-glinet_gl-s200-nor-nand";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-glinet_gl-s200-nor-nand-squashfs-factory.img";
              sha256 = "dc5854a70055fedbda39dc1b0a88f11d4017febd2d4cd34cb986b87f5f5d32a9";
              sha256_unsigned = "dc5854a70055fedbda39dc1b0a88f11d4017febd2d4cd34cb986b87f5f5d32a9";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-glinet_gl-s200-nor-nand-initramfs-kernel.bin";
              sha256 = "ea4f3048949c1faacd75e76ee259091fb2dc23278406c91ccf4383a34fe800e1";
              sha256_unsigned = "ea4f3048949c1faacd75e76ee259091fb2dc23278406c91ccf4383a34fe800e1";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-glinet_gl-s200-nor-nand-squashfs-sysupgrade.bin";
              sha256 = "f4e9f1b9842fcf1c7b94d27a60e544e4be76183fdff9d411fc798c29c0206e47";
              sha256_unsigned = "3654bd8945d096415ec3b4c480c31042bd2c9b5ad84eeb3f2b86be883a414d3f";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "glinet,gl-s200-nor-nand"
            "gl-s200"
            "glinet,gl-s200"
            "gl-s200"
            "glinet,gl-s200"
          ];
          titles = [
            {
              model = "GL-S200";
              variant = "NOR/NAND";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_gl-x1200-nor = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct-htt"
            "kmod-usb2"
            "kmod-usb-storage"
            "block-mount"
            "kmod-usb-net-qmi-wwan"
            "uqmi"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-nand-glinet_gl-x1200-nor";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-glinet_gl-x1200-nor-initramfs-kernel.bin";
              sha256 = "d7e7253ffa6f84b9c70dd169acf78155bb7df68c735a3491cdd78740e14327ac";
              sha256_unsigned = "d7e7253ffa6f84b9c70dd169acf78155bb7df68c735a3491cdd78740e14327ac";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-glinet_gl-x1200-nor-squashfs-sysupgrade.bin";
              sha256 = "7d73b5d8b0ef412a76d0cd8d4c6a3b0f764ab3626625a2fbd9b42698b3fd5a0e";
              sha256_unsigned = "285b6841481a8e5fa992442eaaca21bff224679409949c8fee91d28da69b6a1e";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "glinet,gl-x1200-nor"
          ];
          titles = [
            {
              model = "GL-X1200";
              variant = "NOR";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_gl-x1200-nor-nand = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct-htt"
            "kmod-usb2"
            "kmod-usb-storage"
            "block-mount"
            "kmod-usb-net-qmi-wwan"
            "uqmi"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-nand-glinet_gl-x1200-nor-nand";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-glinet_gl-x1200-nor-nand-squashfs-factory.img";
              sha256 = "cd0573aa5e52e253896ed83e308f83686fc13b2b76370cfa32ba5a5f7e19cc55";
              sha256_unsigned = "cd0573aa5e52e253896ed83e308f83686fc13b2b76370cfa32ba5a5f7e19cc55";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-glinet_gl-x1200-nor-nand-initramfs-kernel.bin";
              sha256 = "022a215fedf458de5b7d77e392e5c0bb270c88a1b60021a82ad475eb0785fad7";
              sha256_unsigned = "022a215fedf458de5b7d77e392e5c0bb270c88a1b60021a82ad475eb0785fad7";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-glinet_gl-x1200-nor-nand-squashfs-sysupgrade.bin";
              sha256 = "bdea4036e5766170b6dd4b17f4554f5b36c04540bfdd3e09cc8ae921e15aad34";
              sha256_unsigned = "53b95e17d653527335052af62568e8b56a47902c83f156913ebbebab05fb78d9";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "glinet,gl-x1200-nor-nand"
          ];
          titles = [
            {
              model = "GL-X1200";
              variant = "NOR/NAND";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_gl-xe300 = {
          device_packages = [
            "kmod-usb2"
            "block-mount"
            "kmod-usb-serial-ch341"
            "kmod-usb-serial-option"
            "kmod-usb-net-qmi-wwan"
            "uqmi"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-nand-glinet_gl-xe300";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-glinet_gl-xe300-squashfs-sysupgrade.bin";
              sha256 = "648afdc3fbea1c072f020474cf6a43f8bc74be55dd7f38b2b0d66df82e11addf";
              sha256_unsigned = "03c048d802129c33c5b7fbc04c31445ce893a303db7bb4e06d9bbfc537a6e8e5";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-glinet_gl-xe300-initramfs-kernel.bin";
              sha256 = "7cfcb457eb21d289eab29087ac425f84f2a3447a074565c088330956b3a97fd2";
              sha256_unsigned = "7cfcb457eb21d289eab29087ac425f84f2a3447a074565c088330956b3a97fd2";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-glinet_gl-xe300-squashfs-factory.img";
              sha256 = "eb8f4839da73337c2f67f33d7d013a826646cc2076c759c59ff78187092a4c55";
              sha256_unsigned = "eb8f4839da73337c2f67f33d7d013a826646cc2076c759c59ff78187092a4c55";
              type = "factory";
            }
          ];
          supported_devices = [
            "glinet,gl-xe300"
          ];
          titles = [
            {
              model = "GL-XE300";
              vendor = "GL.iNet";
            }
          ];
        };
        linksys_ea4500-v3 = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-nand-linksys_ea4500-v3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-linksys_ea4500-v3-squashfs-factory.img";
              sha256 = "79e42b8b31f638e07b42d8c56c51ad6b67e4e6ece3a580d7523f8a876b7c2858";
              sha256_unsigned = "79e42b8b31f638e07b42d8c56c51ad6b67e4e6ece3a580d7523f8a876b7c2858";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-linksys_ea4500-v3-initramfs-kernel.bin";
              sha256 = "19751ea9a184b2ccc7b8877760227f87a262ab82d4a28a068d484610825f8d12";
              sha256_unsigned = "19751ea9a184b2ccc7b8877760227f87a262ab82d4a28a068d484610825f8d12";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-linksys_ea4500-v3-squashfs-sysupgrade.bin";
              sha256 = "fafebe17fe2bd3f5a6a3cfe879afb9d7b57543019b2113d9db9c3905430c0e11";
              sha256_unsigned = "c2a9afc32a94031a02b1d1fa9472a5ed1094af13a02765007569ae0eb3552404";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "linksys,ea4500-v3"
          ];
          titles = [
            {
              model = "EA4500";
              variant = "v3";
              vendor = "Linksys";
            }
          ];
        };
        meraki_mr18 = {
          device_packages = [
            "kmod-leds-uleds"
            "kmod-spi-gpio"
            "nu801"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-nand-meraki_mr18";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-meraki_mr18-squashfs-sysupgrade.bin";
              sha256 = "e4920c6ec1bdf3822f6c75e1a7b021e6094536556a1351fe816540975736faa8";
              sha256_unsigned = "79b41b101e18c2d2be67668ab1acf838898f3dea19048237f098ab87157b8cea";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "meraki,mr18"
            "mr18"
          ];
          titles = [
            {
              model = "MR18";
              vendor = "Meraki";
            }
          ];
        };
        netgear_pgzng1 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-i2c-gpio"
            "kmod-leds-pca955x"
            "kmod-rtc-isl1208"
            "kmod-spi-dev"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-nand-netgear_pgzng1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-netgear_pgzng1-initramfs-kernel.bin";
              sha256 = "78ae54df58c971e54a11cc8d004d88bdf94cef833370c048dcbd355e21e6934d";
              sha256_unsigned = "78ae54df58c971e54a11cc8d004d88bdf94cef833370c048dcbd355e21e6934d";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-netgear_pgzng1-squashfs-sysupgrade.bin";
              sha256 = "ecb05ab77d9467a6389a9e0d5a72b94b6f0992a92b15093a8fec14191e1d69c6";
              sha256_unsigned = "12c541e7e39586be9b1bb208055809954da419aafd552e18ee48190cf58d17a1";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,pgzng1"
          ];
          titles = [
            {
              model = "PGZNG1";
              vendor = "NETGEAR";
            }
            {
              model = "Pulse Gateway";
              vendor = "ADT";
            }
          ];
        };
        netgear_r6100 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-nand-netgear_r6100";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-netgear_r6100-initramfs-kernel.bin";
              sha256 = "16d2b3d28ef891e8b7964b2a9a132ccce47ead6683ae66477b15608ff1b23399";
              sha256_unsigned = "16d2b3d28ef891e8b7964b2a9a132ccce47ead6683ae66477b15608ff1b23399";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-netgear_r6100-squashfs-factory.img";
              sha256 = "5cf3714f054fec3628cea2e7a364f5d23ad1301df12ea8edad85304171289d37";
              sha256_unsigned = "5cf3714f054fec3628cea2e7a364f5d23ad1301df12ea8edad85304171289d37";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-netgear_r6100-squashfs-sysupgrade.bin";
              sha256 = "745ff90dba253dfb96837bd6265d42f5703490c1ab3143d1de65f7a9cfdc5d33";
              sha256_unsigned = "81e0d62bf834689ebef39bae03d14da055a8b05f5fe00c24d5f62d3f8c3c739e";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,r6100"
          ];
          titles = [
            {
              model = "R6100";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr3700-v4 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-nand-netgear_wndr3700-v4";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-netgear_wndr3700-v4-initramfs-kernel.bin";
              sha256 = "9156a7a7cdade8650d19fdbaa1b4cfb7fe6ed64270c9532f54c1f218624481a5";
              sha256_unsigned = "9156a7a7cdade8650d19fdbaa1b4cfb7fe6ed64270c9532f54c1f218624481a5";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-netgear_wndr3700-v4-squashfs-sysupgrade.bin";
              sha256 = "f4df105cddc5efcb86f6e717c74b8d7cca9551e903c9d282d180468b53001d83";
              sha256_unsigned = "73ba28a120b70a9d8d83d76b555781ea76723994ed5840df3273ae08e2380f1a";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-netgear_wndr3700-v4-squashfs-factory.img";
              sha256 = "7b2161fc190edc9a3b81765a1aca330dbe4f7a1696c9bb32cbb3f03982f578a2";
              sha256_unsigned = "7b2161fc190edc9a3b81765a1aca330dbe4f7a1696c9bb32cbb3f03982f578a2";
              type = "factory";
            }
          ];
          supported_devices = [
            "netgear,wndr3700-v4"
          ];
          titles = [
            {
              model = "WNDR3700";
              variant = "v4";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr4300 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-nand-netgear_wndr4300";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-netgear_wndr4300-squashfs-sysupgrade.bin";
              sha256 = "da183b2d05c5d9cc21ea5b3dd0f0713be6cd519068c5b950fc6ca274296edaed";
              sha256_unsigned = "bb30b8470c6fa7cf6699ce30501021c0167ace49d03a7794cc4c86320a7b994a";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-netgear_wndr4300-squashfs-factory.img";
              sha256 = "e88c0c54f3ba8f27b7ba3ad3899592f2166f4e16d04a9ab211c94c12c86b9db2";
              sha256_unsigned = "e88c0c54f3ba8f27b7ba3ad3899592f2166f4e16d04a9ab211c94c12c86b9db2";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-netgear_wndr4300-initramfs-kernel.bin";
              sha256 = "1e11a9419c3a045b6b99b64880256413ce87ffe70c4cf9410126065e6c3322b6";
              sha256_unsigned = "1e11a9419c3a045b6b99b64880256413ce87ffe70c4cf9410126065e6c3322b6";
              type = "kernel";
            }
          ];
          supported_devices = [
            "netgear,wndr4300"
          ];
          titles = [
            {
              model = "WNDR4300";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr4300-v2 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-nand-netgear_wndr4300-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-netgear_wndr4300-v2-squashfs-sysupgrade.bin";
              sha256 = "3c4ba8e721991bd1ef8071a909425d24a51c442f2bb32769c0da63dbd4cb8e76";
              sha256_unsigned = "de00aaa1093d225aa3db1f0b3908d9737163bbc56057278c9e798e5780897b62";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-netgear_wndr4300-v2-initramfs-kernel.bin";
              sha256 = "f7016d8331e89dcdace8f0b46e7c992320fe0b46acaf43b5ea93b008b99e8bfb";
              sha256_unsigned = "f7016d8331e89dcdace8f0b46e7c992320fe0b46acaf43b5ea93b008b99e8bfb";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-netgear_wndr4300-v2-squashfs-factory.img";
              sha256 = "cb22998c31f602bcb385c3e89956198aececc7bebe9c77ac67c3704d8a53908c";
              sha256_unsigned = "cb22998c31f602bcb385c3e89956198aececc7bebe9c77ac67c3704d8a53908c";
              type = "factory";
            }
          ];
          supported_devices = [
            "netgear,wndr4300-v2"
          ];
          titles = [
            {
              model = "WNDR4300";
              variant = "v2";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr4300sw = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-nand-netgear_wndr4300sw";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-netgear_wndr4300sw-initramfs-kernel.bin";
              sha256 = "ba3d87cda35fdce1af1db5f703f53cfe1b4ad0ed01bc4867be1971e2e773b779";
              sha256_unsigned = "ba3d87cda35fdce1af1db5f703f53cfe1b4ad0ed01bc4867be1971e2e773b779";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-netgear_wndr4300sw-squashfs-factory.img";
              sha256 = "f356e7b5dcc2d144a3483e69adb9cb092727f16f609d08c1378c259985454107";
              sha256_unsigned = "f356e7b5dcc2d144a3483e69adb9cb092727f16f609d08c1378c259985454107";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-netgear_wndr4300sw-squashfs-sysupgrade.bin";
              sha256 = "81c6f9361e5fb89b1cc6b054cd8eaeecf6d041dd564587c23e1e0e05305a8c40";
              sha256_unsigned = "3fc9f7580591c225a0529762b81e8ed767ea0bc3611fb1db3c042c203408e532";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,wndr4300sw"
          ];
          titles = [
            {
              model = "WNDR4300SW";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr4300tn = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-nand-netgear_wndr4300tn";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-netgear_wndr4300tn-initramfs-kernel.bin";
              sha256 = "ea05762f2c82f76ad6f258dcc191d28cf309b069586c20d885b942ba9969e13b";
              sha256_unsigned = "ea05762f2c82f76ad6f258dcc191d28cf309b069586c20d885b942ba9969e13b";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-netgear_wndr4300tn-squashfs-factory.img";
              sha256 = "08516e7ce9ef6fe73f30bf58746caa756c861b278db8e8ef9a613b8ae9f724fd";
              sha256_unsigned = "08516e7ce9ef6fe73f30bf58746caa756c861b278db8e8ef9a613b8ae9f724fd";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-netgear_wndr4300tn-squashfs-sysupgrade.bin";
              sha256 = "beeaa2cbc79f2d0d09fde1489d3146b860712348a7ce3b0abdcf0ba8af03f361";
              sha256_unsigned = "3d39919b0e89e47cf787614d674933625b2565627af9fd351aa80f09f0edb0c6";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,wndr4300tn"
          ];
          titles = [
            {
              model = "WNDR4300TN";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr4500-v3 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-nand-netgear_wndr4500-v3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-netgear_wndr4500-v3-squashfs-factory.img";
              sha256 = "23ee7c165b39a5b941487ff621d8c1de368ab8d7b86a3ebb0501441e65f01255";
              sha256_unsigned = "23ee7c165b39a5b941487ff621d8c1de368ab8d7b86a3ebb0501441e65f01255";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-netgear_wndr4500-v3-initramfs-kernel.bin";
              sha256 = "86c1190267da4d2a7b10c6c37d5ad86b6f10db2f92661497a9e6373a47d4e11e";
              sha256_unsigned = "86c1190267da4d2a7b10c6c37d5ad86b6f10db2f92661497a9e6373a47d4e11e";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-netgear_wndr4500-v3-squashfs-sysupgrade.bin";
              sha256 = "a0d9f78adcbf554aec2725a516898257622d251a977cf8ed3edf59270c57b7db";
              sha256_unsigned = "970bd0b08c058822ee7c46f3b715f2f4b2c0934b3edb30faf8875d628d44ab87";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,wndr4500-v3"
          ];
          titles = [
            {
              model = "WNDR4500";
              variant = "v3";
              vendor = "NETGEAR";
            }
          ];
        };
        zte_mf281 = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct"
            "kmod-usb-net-rndis"
            "kmod-usb-acm"
            "comgt-ncm"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-nand-zte_mf281";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-zte_mf281-squashfs-sysupgrade.bin";
              sha256 = "7a55e4547b67b3adfb063a63c5412a76240b4889ae0f8533746030d640e2e2d2";
              sha256_unsigned = "3049356c1bcd1693f5d99fbe7f068c1495d955e32dfdc9b11c7498c6d56fa324";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-zte_mf281-initramfs-kernel.bin";
              sha256 = "01ea36b1b3bcbf66e9ec07ce48aaf57acab6a32153b11676cfcece462e5998cb";
              sha256_unsigned = "01ea36b1b3bcbf66e9ec07ce48aaf57acab6a32153b11676cfcece462e5998cb";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-zte_mf281-squashfs-factory.bin";
              sha256 = "3948435745900127afa9da59876e9a0547b8fd6d546d83bd6f4e6ad1f99bed2a";
              sha256_unsigned = "3948435745900127afa9da59876e9a0547b8fd6d546d83bd6f4e6ad1f99bed2a";
              type = "factory";
            }
          ];
          supported_devices = [
            "zte,mf281"
          ];
          titles = [
            {
              model = "MF281";
              vendor = "ZTE";
            }
          ];
        };
        zte_mf282 = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "kmod-usb-net-qmi-wwan"
            "kmod-usb-serial-option"
            "uqmi"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-nand-zte_mf282";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-zte_mf282-squashfs-sysupgrade.bin";
              sha256 = "bceb6d23635bd6a05135e06ae97f570decfbbfe9306c9bd98b4f5e8119bf7f0e";
              sha256_unsigned = "b85f8ffe42b19b7f271bdad2e7e9306009aa746944334e97ffb81fa6e05724b2";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-zte_mf282-initramfs-kernel.bin";
              sha256 = "37f0135876e4e0d217655c99d2b97bf34a6f464403b9776e097f31f66b9e6832";
              sha256_unsigned = "37f0135876e4e0d217655c99d2b97bf34a6f464403b9776e097f31f66b9e6832";
              type = "kernel";
            }
          ];
          supported_devices = [
            "zte,mf282"
          ];
          titles = [
            {
              model = "MF282";
              vendor = "ZTE";
            }
          ];
        };
        zte_mf286 = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "ath10k-firmware-qca9888-ct"
            "kmod-usb-net-qmi-wwan"
            "kmod-usb-serial-option"
            "uqmi"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-nand-zte_mf286";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-zte_mf286-initramfs-kernel.bin";
              sha256 = "749775502a85c605429d67fd2b4f2fec61caecb6b23320819bd7d16f02af0ecf";
              sha256_unsigned = "749775502a85c605429d67fd2b4f2fec61caecb6b23320819bd7d16f02af0ecf";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-zte_mf286-squashfs-sysupgrade.bin";
              sha256 = "335c6da63fe21fa50e7f9014de5bd823341b755de64ade4ddf89308cfc7bcfa2";
              sha256_unsigned = "0da4ca1113fcdb20385f2b6142f306973902fe86a33bb2af48408dae10601b45";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "zte,mf286"
          ];
          titles = [
            {
              model = "MF286";
              vendor = "ZTE";
            }
          ];
        };
        zte_mf286a = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct"
            "kmod-usb-net-qmi-wwan"
            "kmod-usb-serial-option"
            "uqmi"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-nand-zte_mf286a";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-zte_mf286a-squashfs-sysupgrade.bin";
              sha256 = "0be1e035a1839343cd9b0d2afc3024b4f9ffaee639ab253d2bdbb7a669a49c7a";
              sha256_unsigned = "671c4c641a95a9b3e51a193f21fd647b13501d2eb7d72b7fef69a9e2e22341eb";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-zte_mf286a-initramfs-kernel.bin";
              sha256 = "eff48a79211c2023d9a68f8109c213d117ab72c3fe3f951320b6d7c53232291d";
              sha256_unsigned = "eff48a79211c2023d9a68f8109c213d117ab72c3fe3f951320b6d7c53232291d";
              type = "kernel";
            }
          ];
          supported_devices = [
            "zte,mf286a"
          ];
          titles = [
            {
              model = "MF286A";
              vendor = "ZTE";
            }
          ];
        };
        zte_mf286r = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct"
            "kmod-usb-net-rndis"
            "kmod-usb-acm"
            "comgt-ncm"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-nand-zte_mf286r";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-zte_mf286r-initramfs-kernel.bin";
              sha256 = "cf31597503e43834c41a0b4ecaa5739576ed1867a7a4e15048eacfe43949247e";
              sha256_unsigned = "cf31597503e43834c41a0b4ecaa5739576ed1867a7a4e15048eacfe43949247e";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-zte_mf286r-squashfs-sysupgrade.bin";
              sha256 = "00327a2720bfe54488db573c9217f5730adb7b20fcbfba08ab6c9008982290fb";
              sha256_unsigned = "565e50fa3b55bf72bface2d212425962b553299913a54af2b27a744759e8bdb6";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "zte,mf286r"
          ];
          titles = [
            {
              model = "MF286R";
              vendor = "ZTE";
            }
          ];
        };
        zyxel_emg2926_q10a = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-nand-zyxel_emg2926_q10a";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-zyxel_emg2926_q10a-squashfs-sysupgrade-4M-Kernel.bin";
              sha256 = "81ed93e3f4b9cf55fb5a98dd02d22b8fef206c7fd545e397f6f0709b58863052";
              sha256_unsigned = "81ed93e3f4b9cf55fb5a98dd02d22b8fef206c7fd545e397f6f0709b58863052";
              type = "sysupgrade-4M-Kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-zyxel_emg2926_q10a-squashfs-sysupgrade.tar";
              sha256 = "a23d7e8154d196505bb04a484b1e56494147b91f19d1f100871967741b63cf4b";
              sha256_unsigned = "57e7908e18c1c36ea3895fcb4cd5a714074afd44c788e2c25226d3f27231705c";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-zyxel_emg2926_q10a-squashfs-factory.bin";
              sha256 = "4971fddff5c7f2ea609d78381ee89e28166732ffe8874ad7a1713ff8b90bfe3a";
              sha256_unsigned = "4971fddff5c7f2ea609d78381ee89e28166732ffe8874ad7a1713ff8b90bfe3a";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-zyxel_emg2926_q10a-initramfs-kernel.bin";
              sha256 = "e00aa9649ddef397e308c0e10ca5e08fd710b9e55b6eac09a8d95d78d777db1b";
              sha256_unsigned = "e00aa9649ddef397e308c0e10ca5e08fd710b9e55b6eac09a8d95d78d777db1b";
              type = "kernel";
            }
          ];
          supported_devices = [
            "zyxel,emg2926,q10a"
          ];
          titles = [
            {
              model = "EMG2926-Q10A";
              vendor = "Zyxel";
            }
          ];
        };
        zyxel_nbg6716 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-nand-zyxel_nbg6716";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-zyxel_nbg6716-squashfs-sysupgrade.tar";
              sha256 = "0e292ed33500a092bc73ca88866910f6169892ef21463a165d6e043d1daa27df";
              sha256_unsigned = "c797a8986a58ff01cdf7f8fc1dfcd794aaa317551322dbdf5fdd961b9a7c5452";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-zyxel_nbg6716-initramfs-kernel.bin";
              sha256 = "3f53740eba3e927f55a33e4c2430cd6da392d57819967dfb84a2ba5bf6d4fbbf";
              sha256_unsigned = "3f53740eba3e927f55a33e4c2430cd6da392d57819967dfb84a2ba5bf6d4fbbf";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-zyxel_nbg6716-squashfs-factory.bin";
              sha256 = "bf717809412f68b5a2524c59a04bf0f7cf1e6a2568d846fd20815581682715ec";
              sha256_unsigned = "bf717809412f68b5a2524c59a04bf0f7cf1e6a2568d846fd20815581682715ec";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-nand-zyxel_nbg6716-squashfs-sysupgrade-4M-Kernel.bin";
              sha256 = "c8c3c3a01264c5c8641d0739c8dfc6f440d8965758de5dfb4977f32025ad2db5";
              sha256_unsigned = "c8c3c3a01264c5c8641d0739c8dfc6f440d8965758de5dfb4977f32025ad2db5";
              type = "sysupgrade-4M-Kernel";
            }
          ];
          supported_devices = [
            "zyxel,nbg6716"
          ];
          titles = [
            {
              model = "NBG6716";
              vendor = "Zyxel";
            }
          ];
        };
      };
      source_date_epoch = 1733038943;
      target = "ath79/nand";
      version_code = "r32509-ed4f046c3537";
      version_number = "24.10.0-rc1";
    };
    tiny = {
      arch_packages = "mips_24kc";
      default_packages = [
        "base-files"
        "block-mount"
        "busybox"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-ath9k"
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
        "procd"
        "procd-seccomp"
        "swconfig"
        "uboot-envtools"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
        "wpad-basic-openssl"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "5615d1b2fdce77ca57ff46376175505d";
        version = "6.6.63";
      };
      metadata_version = 1;
      profiles = {
        dlink_dap-1720-a1 = {
          device_packages = [
            "-swconfig"
            "ath10k-firmware-qca988x-ct"
            "kmod-ath10k-ct-smallbuffers"
            "rssileds"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-tiny-dlink_dap-1720-a1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-tiny-dlink_dap-1720-a1-squashfs-factory.bin";
              sha256 = "55f43d19a77fbeb87d6437f664f3a3f75561a022497c0ab79922a175a71213a1";
              sha256_unsigned = "55f43d19a77fbeb87d6437f664f3a3f75561a022497c0ab79922a175a71213a1";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-tiny-dlink_dap-1720-a1-squashfs-sysupgrade.bin";
              sha256 = "4e1a1ddf27496a514b48869335d096dbee9fc6042bae8701f6ae7fbb67217169";
              sha256_unsigned = "5d504ba42e4865ae59c26ea34f6f0d669fedd42d3df6bd963fcc88ce4e5345ee";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-tiny-dlink_dap-1720-a1-initramfs-kernel.bin";
              sha256 = "2b913306f291fc253109130fdaddbfcd8c7e532e8c33af44413bad03c8762e18";
              sha256_unsigned = "2b913306f291fc253109130fdaddbfcd8c7e532e8c33af44413bad03c8762e18";
              type = "kernel";
            }
          ];
          supported_devices = [
            "dlink,dap-1720-a1"
          ];
          titles = [
            {
              model = "DAP-1720";
              variant = "A1";
              vendor = "D-Link";
            }
          ];
        };
        dlink_dir-859-a1 = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "kmod-ath10k-ct-smallbuffers"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-tiny-dlink_dir-859-a1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-tiny-dlink_dir-859-a1-initramfs-kernel.bin";
              sha256 = "839b7ce95f5f106f9660b9745c9d7a9eeccd9736229998468e2891fe4295e1d6";
              sha256_unsigned = "839b7ce95f5f106f9660b9745c9d7a9eeccd9736229998468e2891fe4295e1d6";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-tiny-dlink_dir-859-a1-squashfs-sysupgrade.bin";
              sha256 = "dceb53a826bdc05f296381ff7098dcdfac9f5abf0a9ebff1f4adc85a5c47492e";
              sha256_unsigned = "a0d1fdee48bf59cd47f757a54218241d463956c2461f3c8575acd7818e6a6806";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-tiny-dlink_dir-859-a1-squashfs-factory.bin";
              sha256 = "d48bf83873d886c61071eb4f39d086cfb8ccc6f0bf0087089d0bec474c3fbc82";
              sha256_unsigned = "d48bf83873d886c61071eb4f39d086cfb8ccc6f0bf0087089d0bec474c3fbc82";
              type = "factory";
            }
          ];
          supported_devices = [
            "dlink,dir-859-a1"
          ];
          titles = [
            {
              model = "DIR-859";
              variant = "A1";
              vendor = "D-Link";
            }
          ];
        };
        dlink_dir-859-a3 = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "kmod-ath10k-ct-smallbuffers"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-tiny-dlink_dir-859-a3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-tiny-dlink_dir-859-a3-squashfs-factory.bin";
              sha256 = "d04ab873f9269cc9260fcceee57b58ed0c43d9466d52df69d211c0a85294038a";
              sha256_unsigned = "d04ab873f9269cc9260fcceee57b58ed0c43d9466d52df69d211c0a85294038a";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-tiny-dlink_dir-859-a3-squashfs-sysupgrade.bin";
              sha256 = "bac6003d54a50a9c74d489a16f692ff6dfd3bf1e70ce4787d9e7c0d5f62f5f61";
              sha256_unsigned = "ebecc566cea16ec2aa922c50fb0ab3d96395b6bd3ba988ad7806178c125e9fdb";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-tiny-dlink_dir-859-a3-initramfs-kernel.bin";
              sha256 = "51ba7daa7bd6a6c4b984a6529910243794a3b880a0cb8619abb845c3df8a007d";
              sha256_unsigned = "51ba7daa7bd6a6c4b984a6529910243794a3b880a0cb8619abb845c3df8a007d";
              type = "kernel";
            }
          ];
          supported_devices = [
            "dlink,dir-859-a3"
          ];
          titles = [
            {
              model = "DIR-859";
              variant = "A3";
              vendor = "D-Link";
            }
          ];
        };
        dlink_dir-869-a1 = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "kmod-ath10k-ct-smallbuffers"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-tiny-dlink_dir-869-a1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-tiny-dlink_dir-869-a1-squashfs-sysupgrade.bin";
              sha256 = "a00867189c9aef0b93cc76246ed481a1051a94ea422201ed9daa204c1e866f55";
              sha256_unsigned = "52b45f78abd0e23db822c090ad24ac85afd412450215a989a0eb761c377bb77c";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-tiny-dlink_dir-869-a1-squashfs-factory.bin";
              sha256 = "2f448d04d14220d8cf02a69d87d68e77f3a3130faff928acc0b0ce16f48b0bab";
              sha256_unsigned = "2f448d04d14220d8cf02a69d87d68e77f3a3130faff928acc0b0ce16f48b0bab";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-tiny-dlink_dir-869-a1-initramfs-kernel.bin";
              sha256 = "5736a972266462b18def95d8790d97e0d8f13692ae46ca758648f5931efed7f8";
              sha256_unsigned = "5736a972266462b18def95d8790d97e0d8f13692ae46ca758648f5931efed7f8";
              type = "kernel";
            }
          ];
          supported_devices = [
            "dlink,dir-869-a1"
            "dir-869-a1"
          ];
          titles = [
            {
              model = "DIR-869";
              variant = "A1";
              vendor = "D-Link";
            }
          ];
        };
        nec_wg600hp = {
          device_packages = [
            "kmod-usb2"
            "-uboot-envtools"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-tiny-nec_wg600hp";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-tiny-nec_wg600hp-initramfs-kernel.bin";
              sha256 = "5d14f905aa9546e302095304c08cf56c79a31aca080238656aeac18194335687";
              sha256_unsigned = "5d14f905aa9546e302095304c08cf56c79a31aca080238656aeac18194335687";
              type = "kernel";
            }
            {
              name = "immortalwrt-24.10.0-rc1-ath79-tiny-nec_wg600hp-initramfs-factory.bin";
              sha256 = "230101af21430c68ac488c35f640f97ed7369120d628e9830aa6e88a34e6b201";
              sha256_unsigned = "230101af21430c68ac488c35f640f97ed7369120d628e9830aa6e88a34e6b201";
              type = "initramfs-factory.bin";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-tiny-nec_wg600hp-squashfs-sysupgrade.bin";
              sha256 = "a69e0e570390a1b71c20830894e42f5790935ace154b9dd7e244a45c296bca75";
              sha256_unsigned = "bdd3a256d9a76de08544a51270d17d999c89a8d7ec34a799f0a84b446161e17e";
              type = "sysupgrade";
            }
            {
              name = "immortalwrt-24.10.0-rc1-ath79-tiny-nec_wg600hp-uboot.bin";
              sha256 = "4bbf5410e10ccb439c71cd2baa0e82fb5de37cdb786496b6f450d1ce4bffed96";
              sha256_unsigned = "4bbf5410e10ccb439c71cd2baa0e82fb5de37cdb786496b6f450d1ce4bffed96";
              type = "uboot.bin";
            }
          ];
          supported_devices = [
            "nec,wg600hp"
          ];
          titles = [
            {
              model = "Aterm WG600HP";
              vendor = "NEC";
            }
          ];
        };
        nec_wr8750n = {
          device_packages = [
            "kmod-usb2"
            "-uboot-envtools"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-tiny-nec_wr8750n";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-tiny-nec_wr8750n-squashfs-sysupgrade.bin";
              sha256 = "9139c6df085a34f0d376b28fceed8bf490b249f055dd844468055124f99d7154";
              sha256_unsigned = "e10e1666a79c15d7748232063182b63e3e2a9da8659b8cc4f34e87ce4653b723";
              type = "sysupgrade";
            }
            {
              name = "immortalwrt-24.10.0-rc1-ath79-tiny-nec_wr8750n-initramfs-factory.bin";
              sha256 = "82db990cf03e3345955c360169035f299cce2c9f120f310229f36e4aaff51e85";
              sha256_unsigned = "82db990cf03e3345955c360169035f299cce2c9f120f310229f36e4aaff51e85";
              type = "initramfs-factory.bin";
            }
            {
              name = "immortalwrt-24.10.0-rc1-ath79-tiny-nec_wr8750n-uboot.bin";
              sha256 = "4bbf5410e10ccb439c71cd2baa0e82fb5de37cdb786496b6f450d1ce4bffed96";
              sha256_unsigned = "4bbf5410e10ccb439c71cd2baa0e82fb5de37cdb786496b6f450d1ce4bffed96";
              type = "uboot.bin";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-tiny-nec_wr8750n-initramfs-kernel.bin";
              sha256 = "cbb73db28a0ca4134084cffd09b5fa4010ab4b7d48e123952d4db945827b4762";
              sha256_unsigned = "cbb73db28a0ca4134084cffd09b5fa4010ab4b7d48e123952d4db945827b4762";
              type = "kernel";
            }
          ];
          supported_devices = [
            "nec,wr8750n"
          ];
          titles = [
            {
              model = "Aterm WR8750N";
              vendor = "NEC";
            }
          ];
        };
        nec_wr9500n = {
          device_packages = [
            "kmod-usb2"
            "-uboot-envtools"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-ath79-tiny-nec_wr9500n";
          images = [
            {
              name = "immortalwrt-24.10.0-rc1-ath79-tiny-nec_wr9500n-uboot.bin";
              sha256 = "4bbf5410e10ccb439c71cd2baa0e82fb5de37cdb786496b6f450d1ce4bffed96";
              sha256_unsigned = "4bbf5410e10ccb439c71cd2baa0e82fb5de37cdb786496b6f450d1ce4bffed96";
              type = "uboot.bin";
            }
            {
              name = "immortalwrt-24.10.0-rc1-ath79-tiny-nec_wr9500n-initramfs-factory.bin";
              sha256 = "7172dfc5fb46d0135bc8da53f2e4e83dfa9e8cbac88c116f98791ea9bacd86f8";
              sha256_unsigned = "7172dfc5fb46d0135bc8da53f2e4e83dfa9e8cbac88c116f98791ea9bacd86f8";
              type = "initramfs-factory.bin";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-rc1-ath79-tiny-nec_wr9500n-initramfs-kernel.bin";
              sha256 = "73fcea9398d28bb73da6b83f1865be494fd79e56b79c1be54be4bd25efab667c";
              sha256_unsigned = "73fcea9398d28bb73da6b83f1865be494fd79e56b79c1be54be4bd25efab667c";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-ath79-tiny-nec_wr9500n-squashfs-sysupgrade.bin";
              sha256 = "72bcc7319c3cafe5a506d1a706ba392b842cef9f28f40da450c64f42300962d6";
              sha256_unsigned = "4254eb1703d864d304682e1d166139ec14a87dc437f28cb51cd91e68d3d32d54";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "nec,wr9500n"
          ];
          titles = [
            {
              model = "Aterm WR9500N";
              vendor = "NEC";
            }
          ];
        };
      };
      source_date_epoch = 1733038943;
      target = "ath79/tiny";
      version_code = "r32509-ed4f046c3537";
      version_number = "24.10.0-rc1";
    };
  };
  bcm27xx = {
    bcm2708 = {
      arch_packages = "arm_arm1176jzf-s_vfp";
      default_packages = [
        "autocore"
        "automount"
        "base-files"
        "bcm27xx-gpu-fw"
        "bcm27xx-utils"
        "block-mount"
        "busybox"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-fs-vfat"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-nls-cp437"
        "kmod-nls-iso8859-1"
        "kmod-sound-arm-bcm2835"
        "kmod-sound-core"
        "kmod-usb-hid"
        "libc"
        "libgcc"
        "libustream-openssl"
        "logd"
        "luci-app-cpufreq"
        "luci-app-package-manager"
        "luci-compat"
        "luci-lib-base"
        "luci-lib-ipkg"
        "luci-light"
        "mkf2fs"
        "mtd"
        "netifd"
        "nftables"
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "partx-utils"
        "ppp"
        "ppp-mod-pppoe"
        "procd"
        "procd-seccomp"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "495d6cb81ae688e3ff8e97c5bc6646a9";
        version = "6.6.63";
      };
      metadata_version = 1;
      profiles = {
        rpi = {
          device_packages = [
            "cypress-firmware-43430-sdio"
            "brcmfmac-nvram-43430-sdio"
            "kmod-brcmfmac"
            "wpad-basic-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-bcm27xx-bcm2708-rpi";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-bcm27xx-bcm2708-rpi-squashfs-factory.img.gz";
              sha256 = "700b6b46e35ca709f95dbbea565ad86374a6a7d750175e8ab4442c702d723296";
              sha256_unsigned = "700b6b46e35ca709f95dbbea565ad86374a6a7d750175e8ab4442c702d723296";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-bcm27xx-bcm2708-rpi-squashfs-sysupgrade.img.gz";
              sha256 = "a1bdbe62f50df00dcc780ce3ddcb1a1034773fafe6f5331396f2db1442feb828";
              sha256_unsigned = "f454aec203cb93ae0d012de9ca522505a60fc1d10c108d7f40783b5f299ab5d9";
              type = "sysupgrade";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-bcm27xx-bcm2708-rpi-ext4-factory.img.gz";
              sha256 = "6d8ca8cf1b92ffef0b56a8adc1aa7b08d21f8d60cacc12700a532afbdadd6852";
              sha256_unsigned = "6d8ca8cf1b92ffef0b56a8adc1aa7b08d21f8d60cacc12700a532afbdadd6852";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-bcm27xx-bcm2708-rpi-ext4-sysupgrade.img.gz";
              sha256 = "4022b5b9bb0dd458a9efb34e86afc0dcc8c30399868fb78514f868b6bab8a55f";
              sha256_unsigned = "b2d22bde30514d1f6651e93c0b97d82aa37d4313cb9af95e35960d19b59e13d9";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "rpi-a"
            "rpi-a-plus"
            "rpi-b"
            "rpi-b-plus"
            "rpi-cm"
            "rpi-zero"
            "rpi-zero-w"
            "raspberrypi,model-a"
            "raspberrypi,model-a-plus"
            "raspberrypi,model-b"
            "raspberrypi,model-b-plus"
            "raspberrypi,model-b-rev2"
            "raspberrypi,compute-module"
            "raspberrypi,compute-module-1"
            "raspberrypi,model-zero"
            "raspberrypi,model-zero-w"
          ];
          titles = [
            {
              model = "A/A+/B/B+/CM/Zero/ZeroW";
              vendor = "Raspberry Pi";
            }
          ];
        };
      };
      source_date_epoch = 1733038943;
      target = "bcm27xx/bcm2708";
      version_code = "r32509-ed4f046c3537";
      version_number = "24.10.0-rc1";
    };
    bcm2709 = {
      arch_packages = "arm_cortex-a7_neon-vfpv4";
      default_packages = [
        "autocore"
        "automount"
        "base-files"
        "bcm27xx-gpu-fw"
        "bcm27xx-utils"
        "block-mount"
        "busybox"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-fs-vfat"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-nls-cp437"
        "kmod-nls-iso8859-1"
        "kmod-sound-arm-bcm2835"
        "kmod-sound-core"
        "kmod-usb-hid"
        "libc"
        "libgcc"
        "libustream-openssl"
        "logd"
        "luci-app-cpufreq"
        "luci-app-package-manager"
        "luci-compat"
        "luci-lib-base"
        "luci-lib-ipkg"
        "luci-light"
        "mkf2fs"
        "mtd"
        "netifd"
        "nftables"
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "partx-utils"
        "ppp"
        "ppp-mod-pppoe"
        "procd"
        "procd-seccomp"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "62ea78e5f29589ab67be762f32c38bbe";
        version = "6.6.63";
      };
      metadata_version = 1;
      profiles = {
        rpi-2 = {
          device_packages = [
            "cypress-firmware-43430-sdio"
            "brcmfmac-nvram-43430-sdio"
            "cypress-firmware-43455-sdio"
            "brcmfmac-nvram-43455-sdio"
            "kmod-brcmfmac"
            "wpad-basic-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-bcm27xx-bcm2709-rpi-2";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-bcm27xx-bcm2709-rpi-2-ext4-factory.img.gz";
              sha256 = "ba11d53f2029a7fef9e89d9eeb0ed27878537142ddaa84475bf744879836139d";
              sha256_unsigned = "ba11d53f2029a7fef9e89d9eeb0ed27878537142ddaa84475bf744879836139d";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-bcm27xx-bcm2709-rpi-2-squashfs-sysupgrade.img.gz";
              sha256 = "6c74c6741a8c4d6a4f528cf00b4019c9dcd685e8e94536b3ef2ec5cac13fe219";
              sha256_unsigned = "0527273e3002ed8ce4f13466c30890286773de814c9405d361c3a8b1c90954d5";
              type = "sysupgrade";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-bcm27xx-bcm2709-rpi-2-ext4-sysupgrade.img.gz";
              sha256 = "3701b818230d8f4e92fabec676987cd6647305e425184bd2ec95c3d1987956e1";
              sha256_unsigned = "f5c32ee1753f8dad53fe61d2ba1ef58d8b7835be1694daa3a0605de89109a5e1";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-bcm27xx-bcm2709-rpi-2-squashfs-factory.img.gz";
              sha256 = "ddbd57787da0bf737eafca0dbafed145e2b5f0a646b3008db3c98e76f1ec6a70";
              sha256_unsigned = "ddbd57787da0bf737eafca0dbafed145e2b5f0a646b3008db3c98e76f1ec6a70";
              type = "factory";
            }
          ];
          supported_devices = [
            "rpi-2-b"
            "rpi-3-a-plus"
            "rpi-3-b"
            "rpi-3-b-plus"
            "rpi-4-b"
            "rpi-400"
            "rpi-cm"
            "rpi-zero-2"
            "rpi-zero-2-w"
            "raspberrypi,2-model-b"
            "raspberrypi,2-model-b-rev2"
            "raspberrypi,3-model-a-plus"
            "raspberrypi,3-model-b"
            "raspberrypi,3-model-b-plus"
            "raspberrypi,3-compute-module"
            "raspberrypi,compute-module-3"
            "raspberrypi,400"
            "raspberrypi,4-compute-module"
            "raspberrypi,4-model-b"
            "raspberrypi,model-zero-2"
            "raspberrypi,model-zero-2-w"
          ];
          titles = [
            {
              model = "2B/2B 1.2";
              variant = "(32bit)";
              vendor = "Raspberry Pi";
            }
            {
              model = "3A+/3B/3B+/CM3/Zero2/Zero2W";
              variant = "(32bit)";
              vendor = "Raspberry Pi";
            }
            {
              model = "4B/400/CM4";
              variant = "(32bit)";
              vendor = "Raspberry Pi";
            }
          ];
        };
      };
      source_date_epoch = 1733038943;
      target = "bcm27xx/bcm2709";
      version_code = "r32509-ed4f046c3537";
      version_number = "24.10.0-rc1";
    };
    bcm2710 = {
      arch_packages = "aarch64_cortex-a53";
      default_packages = [
        "autocore"
        "automount"
        "base-files"
        "bcm27xx-gpu-fw"
        "bcm27xx-utils"
        "block-mount"
        "busybox"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-fs-vfat"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-nls-cp437"
        "kmod-nls-iso8859-1"
        "kmod-sound-arm-bcm2835"
        "kmod-sound-core"
        "kmod-usb-hid"
        "libc"
        "libgcc"
        "libustream-openssl"
        "logd"
        "luci-app-cpufreq"
        "luci-app-package-manager"
        "luci-compat"
        "luci-lib-base"
        "luci-lib-ipkg"
        "luci-light"
        "mkf2fs"
        "mtd"
        "netifd"
        "nftables"
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "partx-utils"
        "ppp"
        "ppp-mod-pppoe"
        "procd"
        "procd-seccomp"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "7b231d4581c1e5c92225493c3c1c6c10";
        version = "6.6.63";
      };
      metadata_version = 1;
      profiles = {
        rpi-3 = {
          device_packages = [
            "cypress-firmware-43430-sdio"
            "brcmfmac-nvram-43430-sdio"
            "cypress-firmware-43455-sdio"
            "brcmfmac-nvram-43455-sdio"
            "kmod-brcmfmac"
            "wpad-basic-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-bcm27xx-bcm2710-rpi-3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-bcm27xx-bcm2710-rpi-3-squashfs-sysupgrade.img.gz";
              sha256 = "2abe658b1504d75dbb0161246e99fd2200fd296c8f18d5abae2d5d878e03cf80";
              sha256_unsigned = "6cddb7a69ae1b6c5ad9f0b33474d89e2bbeac70144e1568ad78bf4cb74929f08";
              type = "sysupgrade";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-bcm27xx-bcm2710-rpi-3-ext4-sysupgrade.img.gz";
              sha256 = "b49bb171449e598801059923ae43999becf77b0b8965428c84a3435ee0000c53";
              sha256_unsigned = "f3274e7d9326a6e1d16aafc66dd6ca554c7008b127e36fd58be7f0abdd0f2dae";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-bcm27xx-bcm2710-rpi-3-squashfs-factory.img.gz";
              sha256 = "a08b7ff8b1302397fa26fce1c10e77435a89361073ad37ead11f851416b2afc2";
              sha256_unsigned = "a08b7ff8b1302397fa26fce1c10e77435a89361073ad37ead11f851416b2afc2";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-bcm27xx-bcm2710-rpi-3-ext4-factory.img.gz";
              sha256 = "45a5b63c4b2150f6e9a745665e1be80ef1a48bd3056d1bd68a8baa877ece4a7b";
              sha256_unsigned = "45a5b63c4b2150f6e9a745665e1be80ef1a48bd3056d1bd68a8baa877ece4a7b";
              type = "factory";
            }
          ];
          supported_devices = [
            "rpi-3-a-plus"
            "rpi-3-b"
            "rpi-3-b-plus"
            "rpi-zero-2"
            "rpi-zero-2-w"
            "raspberrypi,2-model-b-rev2"
            "raspberrypi,3-model-a-plus"
            "raspberrypi,3-model-b"
            "raspberrypi,3-model-b-plus"
            "raspberrypi,3-compute-module"
            "raspberrypi,compute-module-3"
            "raspberrypi,model-zero-2"
            "raspberrypi,model-zero-2-w"
          ];
          titles = [
            {
              model = "3A+/3B/3B+/CM3/Zero2/Zero2W";
              variant = "(64bit)";
              vendor = "Raspberry Pi";
            }
            {
              model = "2B-1.2";
              variant = "(64bit)";
              vendor = "Raspberry Pi";
            }
          ];
        };
      };
      source_date_epoch = 1733038943;
      target = "bcm27xx/bcm2710";
      version_code = "r32509-ed4f046c3537";
      version_number = "24.10.0-rc1";
    };
    bcm2711 = {
      arch_packages = "aarch64_cortex-a72";
      default_packages = [
        "autocore"
        "automount"
        "base-files"
        "bcm27xx-gpu-fw"
        "bcm27xx-utils"
        "block-mount"
        "busybox"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-fs-vfat"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-nls-cp437"
        "kmod-nls-iso8859-1"
        "kmod-sound-arm-bcm2835"
        "kmod-sound-core"
        "kmod-usb-hid"
        "libc"
        "libgcc"
        "libustream-openssl"
        "logd"
        "luci-app-cpufreq"
        "luci-app-package-manager"
        "luci-compat"
        "luci-lib-base"
        "luci-lib-ipkg"
        "luci-light"
        "mkf2fs"
        "mtd"
        "netifd"
        "nftables"
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "partx-utils"
        "ppp"
        "ppp-mod-pppoe"
        "procd"
        "procd-seccomp"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "81cb81ecbddb229aa480dc43d376eb05";
        version = "6.6.63";
      };
      metadata_version = 1;
      profiles = {
        rpi-4 = {
          device_packages = [
            "cypress-firmware-43455-sdio"
            "brcmfmac-nvram-43455-sdio"
            "kmod-brcmfmac"
            "wpad-basic-openssl"
            "kmod-usb-net-lan78xx"
            "kmod-r8169"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-bcm27xx-bcm2711-rpi-4";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-bcm27xx-bcm2711-rpi-4-ext4-factory.img.gz";
              sha256 = "08df0f9abc1fb451925be220630402693f26f62e49c3494ef535b9a43f7a9919";
              sha256_unsigned = "08df0f9abc1fb451925be220630402693f26f62e49c3494ef535b9a43f7a9919";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-bcm27xx-bcm2711-rpi-4-squashfs-sysupgrade.img.gz";
              sha256 = "7dccd77d1404fbade02065226fed81d59628c1891e5d84368418098a8525ba21";
              sha256_unsigned = "8eefaf8610e72184271f15a4e09e10fdc4c658ead51eee95f941128a3e6c2a18";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-bcm27xx-bcm2711-rpi-4-squashfs-factory.img.gz";
              sha256 = "137375ddc073dd0e4cdca8125b79012f1f0ec86370fbaa81334c38ddd81e6e57";
              sha256_unsigned = "137375ddc073dd0e4cdca8125b79012f1f0ec86370fbaa81334c38ddd81e6e57";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-bcm27xx-bcm2711-rpi-4-ext4-sysupgrade.img.gz";
              sha256 = "cdf1193a4b0022adbfb879768de1c95deb559f1ad759cd9c76e31b59c65510a3";
              sha256_unsigned = "88b18bedfc56e14bc2d6b74c533d092e5f78a503aeb61ae3b391ef5a73b12d95";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "raspberrypi,400"
            "raspberrypi,4-compute-module"
            "raspberrypi,4-model-b"
          ];
          titles = [
            {
              model = "4B/400/CM4";
              variant = "(64bit)";
              vendor = "Raspberry Pi";
            }
          ];
        };
      };
      source_date_epoch = 1733038943;
      target = "bcm27xx/bcm2711";
      version_code = "r32509-ed4f046c3537";
      version_number = "24.10.0-rc1";
    };
    bcm2712 = {
      arch_packages = "aarch64_cortex-a76";
      default_packages = [
        "autocore"
        "automount"
        "base-files"
        "bcm27xx-gpu-fw"
        "bcm27xx-utils"
        "block-mount"
        "busybox"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-fs-vfat"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-nls-cp437"
        "kmod-nls-iso8859-1"
        "kmod-sound-arm-bcm2835"
        "kmod-sound-core"
        "kmod-usb-hid"
        "libc"
        "libgcc"
        "libustream-openssl"
        "logd"
        "luci-app-cpufreq"
        "luci-app-package-manager"
        "luci-compat"
        "luci-lib-base"
        "luci-lib-ipkg"
        "luci-light"
        "mkf2fs"
        "mtd"
        "netifd"
        "nftables"
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "partx-utils"
        "ppp"
        "ppp-mod-pppoe"
        "procd"
        "procd-seccomp"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "ecf0567e6d3357815c46aae62102f4e0";
        version = "6.6.63";
      };
      metadata_version = 1;
      profiles = {
        rpi-5 = {
          device_packages = [
            "cypress-firmware-43455-sdio"
            "brcmfmac-nvram-43455-sdio"
            "kmod-brcmfmac"
            "wpad-basic-mbedtls"
            "kmod-hwmon-pwmfan"
            "kmod-thermal"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-bcm27xx-bcm2712-rpi-5";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-bcm27xx-bcm2712-rpi-5-squashfs-factory.img.gz";
              sha256 = "d56b376d2e1de94d0fbd77772e5ada9334286946a2aa458af87ec8ed3a519a38";
              sha256_unsigned = "d56b376d2e1de94d0fbd77772e5ada9334286946a2aa458af87ec8ed3a519a38";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-bcm27xx-bcm2712-rpi-5-ext4-sysupgrade.img.gz";
              sha256 = "6f26cbfcab4a57e5b756841e37d849f177152e13fad5107ae127450ce55a7bca";
              sha256_unsigned = "859d1acbf03f481e8d4d1d834f0525fa66d222d64386634bc3c704a14a22a402";
              type = "sysupgrade";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-rc1-bcm27xx-bcm2712-rpi-5-ext4-factory.img.gz";
              sha256 = "a1a23455ac48b1b53fde08a52607d02655937f1bc526c2e410ddfbe61d6bdd29";
              sha256_unsigned = "a1a23455ac48b1b53fde08a52607d02655937f1bc526c2e410ddfbe61d6bdd29";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-bcm27xx-bcm2712-rpi-5-squashfs-sysupgrade.img.gz";
              sha256 = "2689db3658e0781a65d3495020d50b7a9120ff5617c6e77fcb6ed1de46b11a31";
              sha256_unsigned = "e2670bf7bcb4236f917866442770ac8f599cd4c91d07d22a3d010343c2d7fb7e";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "raspberrypi,5-model-b"
          ];
          titles = [
            {
              model = "5";
              vendor = "Raspberry Pi";
            }
          ];
        };
      };
      source_date_epoch = 1733038943;
      target = "bcm27xx/bcm2712";
      version_code = "r32509-ed4f046c3537";
      version_number = "24.10.0-rc1";
    };
  };
  bcm47xx = {
    generic = {
      arch_packages = "mipsel_mips32";
      default_packages = [
        "base-files"
        "block-mount"
        "busybox"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-gpio-button-hotplug"
        "kmod-leds-gpio"
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
        "nvram"
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "otrx"
        "ppp"
        "ppp-mod-pppoe"
        "procd"
        "procd-seccomp"
        "procd-ujail"
        "swconfig"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
        "wpad-basic-openssl"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "3efc36fa66dfc14f628d32e552b0eb3a";
        version = "6.6.63";
      };
      metadata_version = 1;
      profiles = {
        linksys_e3000-v1 = {
          device_packages = [
            "kmod-bgmac"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-bcm47xx-generic-linksys_e3000-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-bcm47xx-generic-linksys_e3000-v1-squashfs.bin";
              sha256 = "40a3166bb6ed44135ebd6f64fe2f93bec342ca4ca937cf6043cdc4053186bdc2";
              sha256_unsigned = "40a3166bb6ed44135ebd6f64fe2f93bec342ca4ca937cf6043cdc4053186bdc2";
              type = "bin";
            }
          ];
          supported_devices = [
            "linksys,e3000-v1"
          ];
          titles = [
            {
              model = "E3000";
              variant = "v1";
              vendor = "Linksys";
            }
          ];
        };
        linksys_wrt610n-v1 = {
          device_packages = [
            "kmod-tg3"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-bcm47xx-generic-linksys_wrt610n-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-bcm47xx-generic-linksys_wrt610n-v1-squashfs.bin";
              sha256 = "a4608e30ef9f256bcc913e8a9b285e74d94c12d1834146ed00897facfa0ec6c0";
              sha256_unsigned = "a4608e30ef9f256bcc913e8a9b285e74d94c12d1834146ed00897facfa0ec6c0";
              type = "bin";
            }
          ];
          supported_devices = [
            "linksys,wrt610n-v1"
          ];
          titles = [
            {
              model = "WRT610N";
              variant = "v1";
              vendor = "Linksys";
            }
          ];
        };
        linksys_wrt610n-v2 = {
          device_packages = [
            "kmod-bgmac"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-bcm47xx-generic-linksys_wrt610n-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-bcm47xx-generic-linksys_wrt610n-v2-squashfs.bin";
              sha256 = "5916b96e0e0fe5d0113330de0a5bdfe37679f2fe8240ccebe9107062f54a0db4";
              sha256_unsigned = "5916b96e0e0fe5d0113330de0a5bdfe37679f2fe8240ccebe9107062f54a0db4";
              type = "bin";
            }
          ];
          supported_devices = [
            "linksys,wrt610n-v2"
          ];
          titles = [
            {
              model = "WRT610N";
              variant = "v2";
              vendor = "Linksys";
            }
          ];
        };
        standard = {
          device_packages = [
            "kmod-b44"
            "kmod-bgmac"
            "kmod-tg3"
          ];
          image_prefix = "immortalwrt-24.10.0-rc1-bcm47xx-generic-standard";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-rc1-bcm47xx-generic-standard-squashfs.trx";
              sha256 = "0641a010ca8e388020fff96998d4aa272657b85212485bbe6d403b49fffd0def";
              sha256_unsigned = "0641a010ca8e388020fff96998d4aa272657b85212485bbe6d403b49fffd0def";
              type = "trx";
            }
          ];
          supported_devices = [
            "standard"
          ];
          titles = [
            {
              model = "Image with LZMA loader and LZMA compressed kernel";
              vendor = "Generic";
            }
          ];
        };
      };
      source_date_epoch = 1733038943;
      target = "bcm47xx/generic";
      version_code = "r32509-ed4f046c3537";
      version_number = "24.10.0-rc1";
    };
  };
}