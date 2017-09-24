package in.ezeon.capp.dao;

import in.ezeon.capp.domain.Contact;
import java.util.List;

/**
 *
 * @author Vikram
 */
public interface ContactDAO {

    public void save(Contact c);

    public void update(Contact c);

    public void delete(Contact c);

    public void delete(Integer contactId);

    public Contact findById(Integer contactId);

    public List<Contact> findAll();

    public List<Contact> findByProperty(String propName, Object propValue);
}
