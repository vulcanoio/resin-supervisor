module.exports = config =
	apiEndpoint: process.env.API_ENDPOINT ? 'https://api.resin.io'
	registryEndpoint: process.env.REGISTRY_ENDPOINT ? 'registry.resin.io'
	pubnub:
		subscribe_key: process.env.PUBNUB_SUBSCRIBE_KEY ? 'sub-c-bananas'
		publish_key: process.env.PUBNUB_PUBLISH_KEY ? 'pub-c-bananas'
	mixpanelToken: process.env.MIXPANEL_TOKEN ? 'bananasbananas'
	dockerSocket: process.env.DOCKER_SOCKET ? '/run/docker.sock'
	supervisorContainer:
		Volumes: 
			'/boot/config.json': {}
			'/data': {}
			'/run/docker.sock': {}
			'/mnt/fib_trie': {}
		Binds: [
			'/mnt/mmcblk0p1/config.json:/boot/config.json'
			'/var/run/docker.sock:/run/docker.sock'
			'/var/lib/docker/data:/data'
			'/proc/net/fib_trie:/mnt/fib_trie'
		]
