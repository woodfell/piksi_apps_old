project(common_init)

install(
    PROGRAMS
      S01reboot_logger
      S09sysctl
      S10mdev
      S11crond
      S18cfg
      S20flags
      S38usb_gadget
      S45endpoint_adapter_gps0
      S79runsvdir
      S80endpoint_router_nmea
      S80endpoint_router_rtcm3
      S80endpoint_router_sbp
      S81sbp_settings_daemon
      S82sbp_nmea_bridge
      S82sbp_rtcm3_bridge
      S83ifplugd
      S83nop
      S83standalone_file_logger
      S85network_poll
      S85nmea_daemon
      S86health_daemon
      S86piksi_leds
      S90service_monitor
      S95watchdog_disable
      S98copy_sys_logs
      S98migrate_sdcard
      S98rtc_load
      S99coldplug
      copy_duro_eeprom.sh
      copy_sys_logs.sh
      gps_adapter.sh
      ifplugd.sh
      migrate_sdcard.sh
      network_poll.sh
      reset2defaults.sh
      runsvdir-start
      service_monitor.sh
      common.sh
      logging.sh
      sdcard.sh
      template_command.inc.sh
      template_process.inc.sh
      template_runsv.inc.sh
      template_svdir.sh
    DESTINATION ${CMAKE_INSTALL_FULL_SYSCONFDIR}/init.d
    )
