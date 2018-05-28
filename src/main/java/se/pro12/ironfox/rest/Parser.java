package se.pro12.ironfox.rest;

import javax.enterprise.context.ApplicationScoped;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.core.Response;

@ApplicationScoped
@Path("/parse")
public class Parser {
    @GET
    @Path("/status")
    public Response status() {
        return Response.ok().build();
    }
}
