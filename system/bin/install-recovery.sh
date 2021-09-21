#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/recovery:13968684:a8be446d8ade10b72611a393e47708759ac4e05f; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/boot:9848104:03f2799c2d53f61809e6d0d82716231cea0d6563 EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/recovery a8be446d8ade10b72611a393e47708759ac4e05f 13968684 03f2799c2d53f61809e6d0d82716231cea0d6563:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
