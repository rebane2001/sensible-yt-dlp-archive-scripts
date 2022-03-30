# This script downloads every playlist linked in playlists.txt.
# Videos will be saved in "playlists/playlist_id - playlist_title/YYYY-MM-DD - video_title - video_id.ext".
# Playlist and video names will be limited to max 200 characters to prevent issues.
# List of downloaded video IDs will be kept in playlists_downloaded.txt.
# Uncomment the loop if you want to keep this running constantly.

# while true; do
yt-dlp --config-locations "./yt-dlp.conf" \
       --download-archive "playlists_downloaded.txt" \
       --batch-file="playlists_input.txt" \
       --output "playlists/%(playlist_id)s - %(playlist_title)s.200s/%(upload_date)s - %(title).200s - %(id)s.%(ext)s"
# sleep 300
# done
