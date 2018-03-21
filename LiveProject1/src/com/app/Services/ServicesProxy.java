package com.app.Services;

public class ServicesProxy implements com.app.Services.Services {
  private String _endpoint = null;
  private com.app.Services.Services services = null;
  
  public ServicesProxy() {
    _initServicesProxy();
  }
  
  public ServicesProxy(String endpoint) {
    _endpoint = endpoint;
    _initServicesProxy();
  }
  
  private void _initServicesProxy() {
    try {
      services = (new com.app.Services.ServicesServiceLocator()).getServices();
      if (services != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)services)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)services)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (services != null)
      ((javax.xml.rpc.Stub)services)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public com.app.Services.Services getServices() {
    if (services == null)
      _initServicesProxy();
    return services;
  }
  
  public java.lang.String[] idService(java.lang.String id) throws java.rmi.RemoteException{
    if (services == null)
      _initServicesProxy();
    return services.idService(id);
  }
  
  public void paymentService() throws java.rmi.RemoteException{
    if (services == null)
      _initServicesProxy();
    services.paymentService();
  }
  
  public void getService() throws java.rmi.RemoteException{
    if (services == null)
      _initServicesProxy();
    services.getService();
  }
  
  
}