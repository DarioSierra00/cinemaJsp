package com.jacaranda.repository;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.jacaranda.model.Cinema;
import com.jacaranda.util.BdUtil;

import jakarta.transaction.SystemException;

public class CineRepository {
	
	public static Cinema annadirCine(Cinema c) throws IllegalStateException, SystemException {
		Transaction transaction = null;
		Cinema result = null;
		
		if(c.getCine() != null) {
		Session session = BdUtil.getSessionFactory().openSession();
		transaction = (Transaction) session.beginTransaction();
		try {
			session.save(c);
			transaction.commit();
		} catch (Exception e) {
			transaction.rollback();
		}
		session.close();
		
		
	}
		return result;
}
	
	public static void deleteCInema(Cinema c) {
		Transaction transaction = null;
	
		if(c.getCine() != null) {
			Session session = BdUtil.getSessionFactory().openSession();
			transaction = (Transaction) session.beginTransaction();
			try {
				session.remove(c);;
				transaction.commit();
			} catch (Exception e) {
				transaction.rollback();
			}
			session.close();
	}
}
	/*
	public static Cinema edit(Cinema c) {
		Transaction transaction = null;
		
		if(c.getCine() != null) {
			Session session = BdUtil.getSessionFactory().openSession();
			transaction = (Transaction) session.beginTransaction();
			try {
				session.;
				transaction.commit();
			} catch (Exception e) {
				transaction.rollback();
			}
			session.close();
	}
	
	*/
	
	
	
	
}