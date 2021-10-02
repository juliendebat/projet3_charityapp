package fr.isika.projet3.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

@Service
public class MailServiceImpl implements MailService{

    private final JavaMailSender mailSender;
    @Autowired
    public MailServiceImpl(JavaMailSender mailSender) {
        this.mailSender = mailSender;
    }

    @Override
    public void sendEmail(String senderEmailId, String receivererEmailId, String subject, String message) {

        MimeMessagePreparator preparator = new MimeMessagePreparator() {
            @Override
            public void prepare(MimeMessage mimeMessage) throws Exception {
                mimeMessage.setFrom(senderEmailId);
                mimeMessage.setRecipient(Message.RecipientType.TO,
                        new InternetAddress(receivererEmailId));
                mimeMessage.setSubject(subject);
                mimeMessage.setText(message);
            }
        };
        try {
            mailSender.send(preparator);
            System.out.println("message envoyer");
        }
        catch (Exception e){
            e.getStackTrace();
        }
    }
}
