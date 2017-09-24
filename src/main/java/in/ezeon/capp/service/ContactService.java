package in.ezeon.capp.service;

import in.ezeon.capp.domain.Contact;
import java.util.List;

/**
 * The interface specifies all business operation for Contact Entity.
 *
 * @author Vikram
 */
public interface ContactService {

    public void save(Contact c);

    public void update(Contact c);

    public void delete(Integer cotactId);
   
    /**
     * Bulk delete
     * @param cotactIds 
     */
    public void delete(Integer[] cotactIds);
    
    public Contact findById(Integer cotactId);

    /**
     * This method returns all User Contact (user who is logged in).
     *
     * @param userId
     * @return
     */
    public List<Contact> findUserContact(Integer userId);

    /**
     * The method search contact for user(userId) based on given
     * free-text-criteria (txt)
     *
     * @param userId User who is logged in
     * @param txt criteria used to search - free text search criteria
     * @return
     */
    public List<Contact> findUserContact(Integer userId, String txt);
}
