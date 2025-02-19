## This is an enhanced FAIR Data Point client, specifically the search capability is enhanced by expanding the search keywords with associations terms extracted froma an ontology. Also a ranking algorithm is applied to the rank the result list. This work is supported by a SURF-DCC pilot, [Enhancing FAIR Data Point's Search Capability as a FAIR Service](https://www.surf.nl/en/news/surf-honors-7-proposals-in-the-3rd-call-for-proposals-for-digital-competence-centers).

# FAIR Data Point Client

> Client application for the [FAIR Data Point](https://github.com/cmbi/FAIRDataPoint) providing an HTML-based user interface for browsing the metadata and administration, with enhanced semantic search capability.

[![Build Status](https://travis-ci.org/FAIRDataTeam/FAIRDataPoint-client.svg?branch=master)](https://travis-ci.org/FAIRDataTeam/FAIRDataPoint-client.svg?branch=master)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE.md)


[Documentation](https://fairdatapoint.readthedocs.io/) explains how to install, configure and use the FAIR Data Point.


## Development

Create `public/config.js` file. For local development, you need to set the apiURL to where the FDP server is running, usually:

```js
// public/config.js
window.config = {
  apiURL: 'http://localhost:8080'
}
```

> **Tip:** If you run both, the server and the client locally, start the server first, because it needs to run on port 8080. The client will then be automatically started on port 8081.

Build the docker image: 
```
$ docker build -f Dockerfile -t fairdatapoint-client:local .
```

### Deploying the Docker Image

Once you've built a docker image, follow the instructions on:
https://fairdatapoint.readthedocs.io/

Keep in mind that your docker image is named `fairdatapoint-client:local` in this case.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for more details.

