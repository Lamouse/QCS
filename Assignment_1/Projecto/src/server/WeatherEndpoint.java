package server;

import javax.jws.WebMethod;
import javax.jws.WebService;
import javax.xml.ws.Endpoint;
import javax.jws.WebService;
import javax.jws.WebMethod;


@WebService
public class WeatherEndpoint {

	@WebMethod
	public String forecast(String city) {
		if((city.hashCode() & 1) == 0)
			return "Light rain throughout the day.";
		else
			return "Sunshine in the morning and afternoon.";
	}

	public static void main(String[] args) {
		WeatherEndpoint weather = new WeatherEndpoint();
		Endpoint endpoint = Endpoint.publish("http://localhost:8081/weather", weather);
	}
}




