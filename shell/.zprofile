eval "$(/opt/homebrew/bin/brew shellenv)"

# MacPorts
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
export MANPATH="/opt/local/share/man:$MANPATH"

# export INSTAGRAM_ACCESS_TOKEN=xxx
alias elsun-db="docker run -d --name elsun -e POSTGRES_PASSWORD=admin -p 5432:5432 postgres"
alias elsun-create-user="python3 ~/projects/el-sun-app-backend/manage.py createsuperuser --username=ercioko --email=ercioko124@gmail.com"
alias elsun-init="python3 manage.py migrate solar_system"
# El-Sun Env
export BACKEND_URL=http://localhost:8000
alias inkscape="/Applications/Inkscape.app/Contents/MacOS/inkscape"
#export $(grep -v '^#' /Users/dziedzic/projects/el-sun-app-backend/.env | xargs)
# export GITHUB_TOKEN=xxx
# export GH_TOKEN=xxx
alias ssh-frolickers="ssh -p 65002 u714627087@77.37.37.41"
alias download-yt-video="yt-dlp -f \"bv*[height<=480]+ba/b[height<=480]\" --merge-output-format mp4 --geo-bypass-country US -o \"%(title)s.%(ext)s\""

export GCP_SERVICE_ACCOUNT="github-deployer@ryuu-backend.iam.gserviceaccount.com"
export GCP_WIF_PROVIDER="projects/977782827333/locations/global/workloadIdentityPools/github-pool/providers/github-provider"
export GCP_REGION="us-east1"
export GCP_PROJECT="ryuu-backend"
