# cloud-stack
Cloud-Stack: Self-Hosted AI + VPN Server (Ollama, Open WebUI, WireGuard)
Cloud-Stack is an all-in-one self-hosted environment that gives you:
	•	A private AI inference server powered by Ollama
	•	A clean, modern ChatGPT-style UI using Open WebUI
	•	A secure, production-ready WireGuard VPN with an easy admin dashboard
	•	One-line deployment on any fresh Linux server (Linode, DigitalOcean, Vultr, Ubuntu VPS, etc.)

This stack lets you run your own AI models (Llama 3, Mistral, Phi-3, etc.), chat with them, and use them inside your apps—without depending on external APIs or monthly limits.

⸻

Features

⚡ Self-Hosted AI Models

Run large-scale open-source models locally:
	•	Llama 3
	•	Mistral
	•	Phi-3
	•	All Ollama-compatible models

No API keys. No rate limits. Full privacy.

💬 Beautiful Chat Interface

Open WebUI gives you a complete ChatGPT-style interface:
	•	Multi-chat sessions
	•	Attachments & documents
	•	Model switching
	•	Tools & function calling support

🔐 Secure WireGuard VPN Included

Easily create and manage VPN clients through a GUI:
	•	Add / revoke peers
	•	Download configs
	•	QR codes for mobile devices
	•	Fast and lightweight

🚀 One-Line Installation

Deploy everything with a single command: bash <(curl -fsSL https://raw.githubusercontent.com/YOUR_GITHUB_USER/YOUR_REPO/main/install.sh)
Supports environment variables for quick setup: WG_HOST="your-server-ip" WG_PASSWORD="StrongPassword" bash <(curl -fsSL https://raw.githubusercontent.com/YOUR_GITHUB_USER/YOUR_REPO/main/install.sh)

Use Cases
	•	AI-powered automations (n8n, Zapier, custom apps)
	•	Private ChatGPT alternative
	•	Personal secure VPN
	•	Developer sandbox for AI workflows
	•	Local inference for agents, bots, and backend services
	•	Internal tools for teams
	•	AI + VPN “all-in-one” home lab setup

⸻

Folder Structure
cloud-stack/
│
├── docker-compose.yml
├── install.sh
│
└── data/
    ├── ollama/       # AI models & configs
    └── wireguard/    # VPN keys & configs

Everything is portable—copy this folder to any server and run.

⸻

Technologies
	•	Docker / Docker Compose
	•	Ollama
	•	Open WebUI
	•	WireGuard (wg-easy)
	•	Bash automation

⸻

Why Cloud-Stack?

You get your own:
	•	AI engine
	•	Chat interface
	•	VPN server
	•	Portable Docker environment

All inside one repo, deployable with one line.
