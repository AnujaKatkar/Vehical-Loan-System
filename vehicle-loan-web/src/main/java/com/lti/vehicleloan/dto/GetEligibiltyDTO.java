package com.lti.vehicleloan.dto;

public class GetEligibiltyDTO {


	private int age;
	private String maritalStatus;
	private String typeOfEmployment;
	private double salary;
	private double maximumEMI;
	private double principleAmount;
	private double previousLoanEMI;
	private float rateOfInterest;
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getMaritalStatus() {
		return maritalStatus;
	}
	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}
	public String getTypeOfEmployment() {
		return typeOfEmployment;
	}
	public void setTypeOfEmployment(String typeOfEmployment) {
		this.typeOfEmployment = typeOfEmployment;
	}
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}
	public double getMaximumEMI() {
		return maximumEMI;
	}
	public void setMaximumEMI(double maximumEMI) {
		this.maximumEMI = maximumEMI;
	}
	public double getPrincipleAmount() {
		return principleAmount;
	}
	public void setPrincipleAmount(double principleAmount) {
		this.principleAmount = principleAmount;
	}
	public double getPreviousLoanEMI() {
		return previousLoanEMI;
	}
	public void setPreviousLoanEMI(double previousLoanEMI) {
		this.previousLoanEMI = previousLoanEMI;
	}
	public float getRateOfInterest() {
		return rateOfInterest;
	}
	public void setRateOfInterest(float rateOfInterest) {
		this.rateOfInterest = rateOfInterest;
	}
	
	
		
}
