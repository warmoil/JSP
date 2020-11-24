package com.dao;

public class Calcurator {
	public int process(int n , int m)
	{
		int sum =0;
		sum = n;
		for(int i = 1; i <= m ; i++)
		{
			sum *= n;
		}
		return n*n*n;
	}
}
