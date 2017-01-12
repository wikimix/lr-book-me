package com.slayer.service.impl;

import java.util.Date;

import com.liferay.counter.service.CounterLocalServiceUtil;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.kernel.util.Validator;
import com.slayer.model.LMSBook;
import com.slayer.model.impl.LMSBookImpl;
import com.slayer.service.base.LMSBookLocalServiceBaseImpl;

/**
 * The implementation of the l m s book local service.
 *
 * <p>
 * All custom service methods should be put in this class. Whenever methods are
 * added, rerun ServiceBuilder to copy their definitions into the
 * {@link com.slayer.service.LMSBookLocalService} interface.
 *
 * <p>
 * This is a local service. Methods of this service will not have security
 * checks based on the propagated JAAS credentials because this service can only
 * be accessed from within the same VM.
 * </p>
 *
 * @author Marouen
 * @see com.slayer.service.base.LMSBookLocalServiceBaseImpl
 * @see com.slayer.service.LMSBookLocalServiceUtil
 */
public class LMSBookLocalServiceImpl extends LMSBookLocalServiceBaseImpl {
	/*
	 * NOTE FOR DEVELOPERS:
	 *
	 * Never reference this interface directly. Always use {@link
	 * com.slayer.service.LMSBookLocalServiceUtil} to access the l m s book
	 * local service.
	 */

	public LMSBook insertBook(String bookTitle, String author) {

		// 1. Instantiate an empty object of type LMSBookImpl
		LMSBook lmsBook = new LMSBookImpl();

		// 2. Generate a unique primary key to be set
		//
		/*
		 * long bookId = 0l; try { bookId = CounterLocalServiceUtil.increment();
		 * } catch (SystemException e) { e.printStackTrace(); }
		 */

		// 3. Set the fields for this object
		// lmsBook.setBookId(bookId);
		lmsBook.setBookTitle(bookTitle);
		lmsBook.setAuthor(author);
		lmsBook.setCreateDate(new Date());
		// 4. Call the Service Layer API to persist the object
		try {

			lmsBook = addLMSBook(lmsBook);

		} catch (SystemException e) {
			e.printStackTrace();
		}
		return lmsBook;
	}

	public LMSBook modifyBook(long bookId, String bookTitle, String author) {
		LMSBook lmsBook = null;
		try {
			lmsBook = fetchLMSBook(bookId);
		} catch (SystemException e) {
			e.printStackTrace();
		}
		if (Validator.isNotNull(lmsBook)) {
			lmsBook.setBookTitle(bookTitle);
			lmsBook.setAuthor(author);
			lmsBook.setModifiedDate(new Date());
			try {
				lmsBook = updateLMSBook(lmsBook);
			} catch (SystemException e) {
				e.printStackTrace();
			}
		}
		return lmsBook;
	}
}
