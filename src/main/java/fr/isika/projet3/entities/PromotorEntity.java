package fr.isika.projet3.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

	@Entity
	@Table(name="promotorEntities")
public class PromotorEntity {

		@Id
		@GeneratedValue(strategy = GenerationType.AUTO)
		private int id;
		private String entityName;
		private String entityregistrationNumber;
		
		public int getId() {
			return id;
		}
		public void setId(int id) {
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


}