# MeetSilver API

[![Build Status](https://travis-ci.org/mikhailbot/meetsilver-api.svg?branch=master)](https://travis-ci.org/mikhailbot/meetsilver-api)

API backend for a new side project using Rails 5 API mode.

## API Routes

#### GET `/events/{id}`

```json
{
  "id": 1,
  "title": "It's not impossible. I used to bullseye womp rats in my T-16 back home, they're not much bigger than two meters.",
  "location": "Utapau",
  "slug": "Z-nvJntQ",
  "options": [
    {
      "id": 1,
      "date": "2017-04-18T00:00:00.000Z"
    },
    {
      "id": 2,
      "date": "2017-04-18T00:00:00.000Z"
    }
  ]
}
```

#### POST `/events`

```json
{
  "title": "You do have your moments. Not many, but you have them.",
  "location": "Hosnian Prime",
  "options": [
    {
      "date": "2017-04-18T00:00:00.000Z"
    },
    {
      "date": "2017-04-18T00:00:00.000Z"
    }
  ]
}
```

#### POST `/votes`

```json
{
  "name": "Darth Vader",
  "option_id": 1
}
```

#### GET `/`

```json
{
  "alive": true
}
```
