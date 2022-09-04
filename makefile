run_github_action:
	act --bind -W .github_locally/workflows/main.yml
	git push origin "refs/notes/*"