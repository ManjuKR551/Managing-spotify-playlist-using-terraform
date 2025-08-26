resource "spotify_playlist" "miniproject"{
    name = "miniproject"
    tracks = ["5JdeSgIBqpdoC3RudqPkCu"]
}

data "spotify_search_track" "eminem"{
    artist="Eminem"
}

resource "spotify_playlist" "theExample"{
    name = "The Example"
    tracks = [data.spotify_search_track.eminem.tracks[0].id,
    data.spotify_search_track.eminem.tracks[0].id]

}
