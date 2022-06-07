package com.example.server.service;

import com.example.server.dto.ArtistRequestDto;
import com.example.server.entity.Artist;
import com.example.server.entity.Entertainment;
import com.example.server.repository.Artist.ArtistRepository;
import com.example.server.repository.Entertainmet.EntertainmentRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional
public class ArtistService {
    private final ArtistRepository artistRepository;
    private final EntertainmentRepository entertainmentRepository;
    public Artist findById(Long id) {
        return artistRepository.findById(id).orElseThrow(() -> new IllegalArgumentException("해당 아티스트가 없습니다."));
    }
    public List<Artist> findAll() {
        return artistRepository.findAll();
    }

    public void add(ArtistRequestDto artistRequestDto) {
        Artist artist = Artist.builder()
                .artistName(artistRequestDto.getArtistName())
                .artistDescription(artistRequestDto.getArtistDescription())
                .artistImageUrl(artistRequestDto.getArtistImageUrl())
                .artistCountry(artistRequestDto.getArtistCountry())
                .artistWebsite(artistRequestDto.getArtistWebsite())
                .artistFacebook(artistRequestDto.getArtistFacebook())
                .artistTwitter(artistRequestDto.getArtistTwitter())
                .artistInstagram(artistRequestDto.getArtistInstagram())
                .build();
        Entertainment entertainment = entertainmentRepository.findById(artistRequestDto.getEntertainmentId())
                .orElseThrow(() -> new IllegalArgumentException("해당 엔터가 없습니다."));
        artist.setEntertainment(entertainment);
        artistRepository.save(artist);
    }

    public void update(ArtistRequestDto reqArtist) {
        Artist artist = artistRepository.findById(reqArtist.getArtistId())
                .orElseThrow(() -> new IllegalArgumentException("해당 아티스트가 없습니다."));
        artist.update(reqArtist.getArtistName(), reqArtist.getArtistDescription(), reqArtist.getArtistImageUrl(),
                reqArtist.getArtistCountry(), reqArtist.getArtistWebsite(), reqArtist.getArtistFacebook(),
                reqArtist.getArtistTwitter(), reqArtist.getArtistInstagram());
        Entertainment entertainment = entertainmentRepository.findById(reqArtist.getEntertainmentId())
                .orElseThrow(() -> new IllegalArgumentException("해당 엔터가 없습니다."));
        artist.setEntertainment(entertainment);



    }
}
