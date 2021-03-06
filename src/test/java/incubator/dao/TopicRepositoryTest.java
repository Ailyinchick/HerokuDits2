package incubator.dao;

import incubator.config.HibernateConfig;
import incubator.config.WebConfig;
import incubator.model.Topic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.PropertySource;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.testng.AbstractTestNGSpringContextTests;
import org.springframework.test.context.web.WebAppConfiguration;
import org.testng.annotations.Test;


@ComponentScan(basePackages = "incubator")
@ContextConfiguration(classes = {WebConfig.class, HibernateConfig.class})
@WebAppConfiguration
@PropertySource("classpath:db.properties")
@PropertySource(value = "classpath:hibernate.properties")
public class TopicRepositoryTest extends AbstractTestNGSpringContextTests{

    @Autowired
    private TopicRepository topicRepository;

    @Test
    public void showAll() {
        System.out.println(topicRepository.findAll(Topic.class, topicRepository.getBeanToBeAutowired()));
        for (Topic q : topicRepository.findAll(Topic.class, topicRepository.getBeanToBeAutowired())
        ) {
            System.out.println(q);
        }
    }

}