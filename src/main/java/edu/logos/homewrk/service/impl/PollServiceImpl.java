package edu.logos.homewrk.service.impl;

import edu.logos.homewrk.entity.Poll;
import edu.logos.homewrk.repository.PollRepository;
import edu.logos.homewrk.service.PollService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PollServiceImpl  implements PollService {

    @Autowired private PollRepository pollRepository;

    @Override
    public void savePoll(Poll poll) {
        pollRepository.save(poll);
    }

    @Override
    public List<Poll> findAllPolls() {
        return pollRepository.findAll();
    }
}
