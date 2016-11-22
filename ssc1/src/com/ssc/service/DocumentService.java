package com.ssc.service;

import java.util.List;

import com.ssc.model.Document;


public interface DocumentService {
	
	public void insertDocument(Document document) throws Exception;

	public int selectDocumentCount(Document document);
	
	public List<Document> selectDocumentList(Document document) throws Exception;
	
}
