from i3pystatus import Status

status = Status(standalone=True)

# Displays clock like this:
# Tue 30 Jul 11:59:46 PM KW31
#                          ^-- calendar week
status.register("clock",
            format="%a %-d %b %X",)

# Shows the average load of the last minute and the last 5 minutes
# (the default value for format is used)
status.register("cpu_freq",
            format="Freq {avgg}Ghz",
            interval=3,)
status.register("cpu_usage",
            format="Usage {usage}%")

# Shows your CPU temperature, if you have a Intel CPU
status.register("shell",
            command="sensors |grep \"Core 0\" |cut -c 16-21",
            format="CPU° {output}",
            interval=3,)

status.register("mem",
        format="RAM {used_mem:1.0f}Mb/{total_mem:1.0f}Mb")
# Shows the address and up/down state of eth0. If it is up the address is shown in
# green (the default value of color_up) and the CIDR-address is shown
# (i.e. 10.10.10.42/24).
# If it's down just the interface name (eth0) will be displayed in red
# (defaults of format_down and color_down)
#
# Note: the network module requires PyPI package netifaces
status.register("uptime",
        format="Since {hours}:{mins}",)
status.register("network",
            interface="enp5s0",
                format_up="{interface} {v4cidr} {v6cidr} {kbs}Kb/s",
                on_leftclick=["nm-connection-editor"],)

# Note: requires both netifaces and basiciw (for essid and quality)
status.register("network",
            interface="wlp4s0",
                format_up="{essid} {v4cidr} {v6cidr} {freq} {quality:03.0f}% {kbs}Kb/s",)

# Shows disk usage of /
# Format:
# 42/128G [86G]
status.register("disk",
            path="/",
                format="Root {avail}G/{percentage_avail}%",)

status.register("shell",
                command="uname -r",)
# Shows pulseaudio default sink volume
#
# Note: requires libpulseaudio from PyPI
status.register("pulseaudio",
            format="♪{volume}",)

status.run()
