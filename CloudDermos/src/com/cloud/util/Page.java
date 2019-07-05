package com.cloud.util;

import java.util.List;

/**
 * 
 * @author Administrator
 * 
 *         ��ҳ��
 */
public class Page<T> {
	private int currentPage;// ��ǰҳ��
	private int pageCount;// ÿҳ����
	private int totleCount;// ������
	private int totlePage;// ��ҳ��
	private List<T> list;

	public Page(int currentPage, int pageCount, int totleCount, List<T> list) {
		this.currentPage = currentPage;
		this.pageCount = pageCount;
		this.totleCount = totleCount;
		this.list = list;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getTotleCount() {
		return totleCount;
	}

	public void setTotleCount(int totleCount) {
		this.totleCount = totleCount;
	}

	public List<T> getList() {
		return list;
	}

	public void setList(List<T> list) {
		this.list = list;
	}

	// ��һҳ����
	public int prePage() {
		if (currentPage == 1) {
			return currentPage;
		}
		return currentPage - 1;
	}

	// ��һҳ����
	public int nextPage() {
		if (currentPage == totlePage) {
			return currentPage;
		}
		return currentPage + 1;
	}

	public int getTotlePage() {
		if (totleCount % pageCount == 0) {
			totlePage = totleCount / pageCount;
		} else {
			totlePage = totleCount / pageCount + 1;
		}
		return totlePage;
	}
}
