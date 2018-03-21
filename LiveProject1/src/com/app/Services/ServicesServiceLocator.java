/**
 * ServicesServiceLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package com.app.Services;

public class ServicesServiceLocator extends org.apache.axis.client.Service implements com.app.Services.ServicesService {

    public ServicesServiceLocator() {
    }


    public ServicesServiceLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    public ServicesServiceLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
        super(wsdlLoc, sName);
    }

    // Use to get a proxy class for Services
    private java.lang.String Services_address = "http://localhost:8080/WebServices/services/Services";

    public java.lang.String getServicesAddress() {
        return Services_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String ServicesWSDDServiceName = "Services";

    public java.lang.String getServicesWSDDServiceName() {
        return ServicesWSDDServiceName;
    }

    public void setServicesWSDDServiceName(java.lang.String name) {
        ServicesWSDDServiceName = name;
    }

    public com.app.Services.Services getServices() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(Services_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getServices(endpoint);
    }

    public com.app.Services.Services getServices(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            com.app.Services.ServicesSoapBindingStub _stub = new com.app.Services.ServicesSoapBindingStub(portAddress, this);
            _stub.setPortName(getServicesWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setServicesEndpointAddress(java.lang.String address) {
        Services_address = address;
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        try {
            if (com.app.Services.Services.class.isAssignableFrom(serviceEndpointInterface)) {
                com.app.Services.ServicesSoapBindingStub _stub = new com.app.Services.ServicesSoapBindingStub(new java.net.URL(Services_address), this);
                _stub.setPortName(getServicesWSDDServiceName());
                return _stub;
            }
        }
        catch (java.lang.Throwable t) {
            throw new javax.xml.rpc.ServiceException(t);
        }
        throw new javax.xml.rpc.ServiceException("There is no stub implementation for the interface:  " + (serviceEndpointInterface == null ? "null" : serviceEndpointInterface.getName()));
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(javax.xml.namespace.QName portName, Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        if (portName == null) {
            return getPort(serviceEndpointInterface);
        }
        java.lang.String inputPortName = portName.getLocalPart();
        if ("Services".equals(inputPortName)) {
            return getServices();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("http://Services.app.com", "ServicesService");
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("http://Services.app.com", "Services"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        
if ("Services".equals(portName)) {
            setServicesEndpointAddress(address);
        }
        else 
{ // Unknown Port Name
            throw new javax.xml.rpc.ServiceException(" Cannot set Endpoint Address for Unknown Port" + portName);
        }
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(javax.xml.namespace.QName portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        setEndpointAddress(portName.getLocalPart(), address);
    }

}
