package fr.isika.projet3.service;

public interface MailService {
    public void sendEmail(
            final String senderEmailId,
            final String receivererEmailId,
            final String subject,
            final String message );
}
