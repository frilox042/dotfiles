"""i3 bar config file"""

from i3pystatus import Status

status = Status()  # pylint: disable=I0011,C0103

status.register("clock",
                format="%a %-d %b %X",)

status.register(
    'battery',
    interval=5,
    format='{percentage_design:.0f}% {consumption:.0f}W {remaining}',
    alert=True,
    alert_percentage=15,
    status={
        'DPL': 'DPL',
        'CHR': 'CHR',
        'DIS': 'DIS',
        'FULL': '',
    }
)

status.register("mem",
                format="{avail_mem}",)

status.register("load",
                format="{avg1}",)

status.register("network",
                interface="eno1",
                format_up="{v4cidr}",
                format_down="",)

status.register("network",
                interface="wlp2s0",
                format_up="{v4cidr} {essid} {quality:03.0f}%",
                format_down="",)

status.register("disk",
                path="/",
                format="{used}/{total}G [{avail}G]",)

status.register("pulseaudio",
                format="♪{volume}",)

status.register("xkblayout",
                layouts=["fr", "us"])

status.run()
