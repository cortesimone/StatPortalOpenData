// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package it.sister.statportal.odata.domain;

import it.sister.statportal.odata.domain.MdMeasureFields;
import it.sister.statportal.odata.utility.DBUtils;

import java.lang.Integer;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PersistenceContext;
import javax.persistence.Table;
import org.springframework.transaction.annotation.Transactional;

privileged aspect MdMeasureFields_Roo_Entity {
    
    declare @type: MdMeasureFields: @Entity;
    
    declare @type: MdMeasureFields: @Table(name = "MD_MEASURE_FIELDS", schema = "public");
    
    @PersistenceContext
    transient EntityManager MdMeasureFields.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ID", columnDefinition = "int4")
    private Integer MdMeasureFields.id;
    
    public Integer MdMeasureFields.getId() {
        return this.id;
    }
    
    public void MdMeasureFields.setId(Integer id) {
        this.id = id;
    }
    
    @Transactional
    public void MdMeasureFields.persist() throws OdataDomainException {
	validate();
	// se l'uid è vuoto si genera
	if(this.getUid() == null || this.getUid().isEmpty()){
	    this.setUid(DBUtils.generateUid());
	}
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void MdMeasureFields.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            MdMeasureFields attached = MdMeasureFields.findMdMeasureFields(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void MdMeasureFields.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void MdMeasureFields.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public MdMeasureFields MdMeasureFields.merge() throws OdataDomainException {
	validate();
        if (this.entityManager == null) this.entityManager = entityManager();
        MdMeasureFields merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager MdMeasureFields.entityManager() {
        EntityManager em = new MdMeasureFields().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long MdMeasureFields.countMdMeasureFieldses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM MdMeasureFields o", Long.class).getSingleResult();
    }
    
    public static List<MdMeasureFields> MdMeasureFields.findAllMdMeasureFieldses() {
        return entityManager().createQuery("SELECT o FROM MdMeasureFields o", MdMeasureFields.class).getResultList();
    }
    
    public static MdMeasureFields MdMeasureFields.findMdMeasureFields(Integer id) {
        if (id == null) return null;
        return entityManager().find(MdMeasureFields.class, id);
    }
    
    public static List<MdMeasureFields> MdMeasureFields.findMdMeasureFieldsEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM MdMeasureFields o", MdMeasureFields.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}