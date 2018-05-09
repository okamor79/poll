package edu.logos.homewrk.controller;

import edu.logos.homewrk.entity.Poll;
import edu.logos.homewrk.service.PollService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/poll")
@SessionAttributes("pollDetailModel")
public class PollController {

    @Autowired private PollService pollService;

    @GetMapping
    public String pollList() {
        return "redirect:/poll/poll-list";
    }

    @GetMapping("/poll-list")
    public String showPolls(Model model) {
        model.addAttribute("pollList", pollService.findAllPolls());
        return "poll/list";
    }

    @PostMapping("/new-poll")
    public String savePollForm(@ModelAttribute("pollModel") Poll poll) {
        pollService.savePoll(poll);
            return "redirect:/poll/poll-list";
    }

    @GetMapping("/new-poll")
    public String showNewPollForm(Model model) {
        model.addAttribute("pollModel", new Poll());

        List<String> countryList = new ArrayList<>();
        countryList.add("Україна");
        countryList.add("Польща");
        countryList.add("Швеція");
        countryList.add("Франція");
        countryList.add("Німеччина");
        countryList.add("Італія");
        countryList.add("Іспанія");
        countryList.add("Португалія");
        countryList.add("Австрія");
        countryList.add("Угорщина");
        countryList.add("Чехія");
        countryList.add("Голандія");
        model.addAttribute("countryListModel", countryList);

        List<String> studyList = new ArrayList<>();
        studyList.add("");
        studyList.add("Бакалавр");
        studyList.add("Спеціаліст");
        studyList.add("Магістр");
        model.addAttribute("studyListModel", studyList);

        List<String> socialNetworkList = new ArrayList<>();
        socialNetworkList.add("Facebook");
        socialNetworkList.add("LinkeIN");
        socialNetworkList.add("Instagram");
        socialNetworkList.add("Telegram");
        socialNetworkList.add("Twitter");
        model.addAttribute("socialNetworkModel", socialNetworkList);

        List<String> progLangList = new ArrayList<>();
        progLangList.add("Java");
        progLangList.add("C#");
        progLangList.add("C++");
        progLangList.add("Python");
        progLangList.add("Object Pascal");
        progLangList.add("JavaScript");
        progLangList.add("Basic");
        progLangList.add("Assembler");
        model.addAttribute("progLangModel", progLangList);

        List<String> levelDevList = new ArrayList<>();
        levelDevList.add("немає");
        levelDevList.add("1-2 роки");
        levelDevList.add("3-4 роки");
        levelDevList.add("більше 5 років");
        model.addAttribute("levelDevModel", levelDevList);

        List<String> rangeDevList = new ArrayList<>();
        rangeDevList.add("Закінчую курси");
        rangeDevList.add("Junior");
        rangeDevList.add("Middle");
        rangeDevList.add("Senior");
        rangeDevList.add("TeamLead");
        model.addAttribute("rangeDevListModel", rangeDevList);

        List<String> technologyList = new ArrayList<>();
        technologyList.add("HTML");
        technologyList.add("CSS");
        technologyList.add("Bootstrap");
        technologyList.add("Spring");
        technologyList.add("JQuery");
        technologyList.add(".NET");
        technologyList.add("Django");
        technologyList.add("React.js");
        technologyList.add("MySQL");
        technologyList.add("JDBC");
        technologyList.add("Hibernate");
        technologyList.add("JavaScript");
        technologyList.add("Angular");
        model.addAttribute("technologyListModel", technologyList);

        return "poll/new-poll-form";
    }

    @GetMapping("poll/detail/{pollID}")
    public String showDetailPollByID(Model model, @PathVariable("pollID") int id) {
        Poll poll = pollService.findPollById(id);
        model.addAttribute("pollDetailModel", poll);
        return "poll/detail";
    }
}
