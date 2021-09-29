package fr.isika.projet3.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;

import java.util.Properties;
@Configuration
@ComponentScan(basePackages = "fr.isika.projet3")
public class MailConfing {

    private final Environment environment;

    public MailConfing(Environment environment) {
        this.environment = environment;
    }

    @Bean
    public JavaMailSender getMailSender(){

        JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
        mailSender.setHost("smtp.gmail.com");
        mailSender.setPort(587);

        mailSender.setUsername("bravoexcellent74@gmail.com");
        mailSender.setPassword("generique");

        Properties props = mailSender.getJavaMailProperties();
        props.put("mail.transport.protocol", "smtp");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.debug", "true");

        mailSender.setJavaMailProperties(props);

        return mailSender;
    }
}
