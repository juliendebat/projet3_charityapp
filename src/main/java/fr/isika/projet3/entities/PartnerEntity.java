package fr.isika.projet3.entities;


import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

	@Entity
	@Table(name="partnerEntities")
public class PartnerEntity {

		@Id
		@GeneratedValue(strategy = GenerationType.AUTO)
		private Long id;
		private String entityName;
		private String entityregistrationNumber;


		@OneToOne(cascade = CascadeType.ALL)
		Partner partner;
		
		
		public Long getId() {
			return id;
		}
		public void setId(Long id) {
			this.id = id;
		}
		public String getEntityName() {
			return entityName;
		}
		public void setEntityName(String entityName) {
			this.entityName = entityName;
		}
		public String getEntityregistrationNumber() {
			return entityregistrationNumber;
		}
		public void setEntityregistrationNumber(String entityregistrationNumber) {
			this.entityregistrationNumber = entityregistrationNumber;
		}

		public Partner getPartner() {
			return partner;
		}
		public void setPartner(Partner partner) {
			this.partner = partner;
		}
}