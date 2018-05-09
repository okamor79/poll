package edu.logos.homewrk.service;

import edu.logos.homewrk.entity.Poll;

import java.util.List;

public interface PollService {

    void savePoll(Poll poll);

    List<Poll> findAllPolls();
}
