package edu.logos.homewrk.repository;

import edu.logos.homewrk.entity.Poll;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PollRepository extends JpaRepository<Poll, Integer> {

}
