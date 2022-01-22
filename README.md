# Generate a rtsp video stream from an mp4 video 

<p align="center">
    <img src="https://img.shields.io/badge/dockerized-yes-brightgreen"/>
</p>


Video streams can be exposed in several forms of protocol.

One of them is `rtsp` for Real Time Streaming Protocol.

This project makes it easy to generate a `rstp` stream out of an mp4 video.

## Getting started

1. Clone this repo

```shell
git clone git@github.com:fpaupier/mp42rtsp.git
```

2. Place the video you want to stream under the `video/` dir.
```shell
video
└── input.mp4
```

3. Edit your environment variable to adjust the port on which to stream over rtsp
```shell
cp .env.example .env
vim .env  # Edit the values of RTSP_PORT and INPUT_VIDEO
```

4. Start the container to stream your video
```shell
docker-compose up -d
```

Your stream is now available at rtsp://YOUR-HOST-IP:RTSP_PORT/streamer.mpeg4 You can test it with your favorite stream player!
(Your public ip is available by doing `curl ifconfig.io`)

- On UNIX you can use the `ffplay` utils (bundled with ffmpeg) 
```shell
ffplay "rtsp://YOUR-HOST-IP:RTSP_PORT/streamer.mpeg4"
```
- On iOS you can also play your stream using the [VLC app](https://apps.apple.com/us/app/vlc-for-mobile/id650377962) available 


## Credits

- Thanks to this [ffmpeg doc](https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_480_1_5MG.mp4) for inspiration of this project
- The input video provided under `video/input.mp4` in this repository is available for free on [file-examples.com](https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_480_1_5MG.mp4), video retrieved on Jan 22 2022 from 
url [https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_480_1_5MG.mp4](https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_480_1_5MG.mp4)
