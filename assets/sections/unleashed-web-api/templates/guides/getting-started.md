Navigation: Getting started
SortOrder: 200

# Getting started

## Introduction

This API documentation contains all endpoint information available for the Unleashed brands [Mobile Vikings][mv], [Jim Mobile][jim] and [Stievie][stievie]. You are advised to read this guide before creating awesome applications.

## Requesting access

Start by sending us an email at [api@unleashed.be][mail] with the following information:

- name
- brand (see [below](#brands))
- application name
- purpose

We will respond asap to provide you with a client id and secret.

> Your application can only talk to one brand, being the one it's configured to use. There's currently no API client that can talk to all three brands at once.

## Brands

To be able to talk to UWA, you need to specify which brand you want to communicate with. You can do so by adding it to the endpoint's path `https://uwa.unleashed.be/<slug>/<endpoint>`, where `<slug>` is one of the following:

| Brand | Slug |
| ---------- | ---------- |
| Mobile Vikings | mv |
| Jim Mobile | jim |
| Stievie | stievie |


## UWA specific types
We have some specific UWA types, below you find some details of them.

### Msisdn
If a field is of type `msisdn` we accept `^(?:0|0032|\+32|32)4[0-9]{8}$` and we expose them [E.164][e164] formatted

### ProductId
If a field is of type `product_id` we expect it is a compound key of `offeringId-offeringVersion-offeringVariant`.

## Issues

In case you encounter an issue with our API, or when you've got a feature request, please create a ticket on our [GitHub repository][repo].

[mail]: api@unleashed.be
[mv]: https://mobilevikings.be
[jim]: https://jimmobile.be
[stievie]: https://stievie.be
[repo]: https://github.com/vikingco/unleashed-web-api-model
[e164]: https://en.wikipedia.org/wiki/E.164