# This script downloads every channel, playlist, and video linked in videos.txt.
# Note that this script is pretty much the same as the channels script, just slightly modified to fit this use case better.
# Videos will be saved in "videos/channel_name (channel_id)/YYYY-MM-DD - video_title - video_id.ext".
# Channel and video names will be limited to max 200 characters to prevent issues.
# List of downloaded video IDs will be kept in videos_downloaded.txt.
# Uncomment the loop if you want to keep this running constantly.

# while true; do
yt-dlp --config-locations "./yt-dlp.conf" \
       --download-archive "videos_downloaded.txt" \
       --batch-file="videos_input.txt" \
       --output "videos/%(uploader).200B (%(channel_id)s)/%(upload_date)s - %(title).200B - %(id)s.%(ext)s"
# sleep 300
# done
