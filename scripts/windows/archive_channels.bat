:: This script downloads every channel linked in channels.txt.
:: Videos will be saved in "channels/channel_name (channel_id)/YYYY-MM-DD - video_title - video_id.ext".
:: Channel and video names will be limited to max 200 characters to prevent issues.
:: List of downloaded video IDs will be kept in channels_downloaded.txt.
:: Uncomment the loop if you want to keep this running constantly.

:: :loop
yt-dlp --config-locations ".\yt-dlp.conf" ^
       --download-archive "channels_downloaded.txt" ^
       --batch-file="channels_input.txt" ^
       --output "channels/%%(uploader).200B (%%(channel_id)s)/%%(upload_date)s - %%(title).200B - %%(id)s.%%(ext)s"
:: goto loop
