package se.pro12.ironfox.rest;

import se.pro12.ironfox.model.Sheet;
import se.pro12.ironfox.service.ParserService;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

@ApplicationScoped
@Path("/parse")
@Produces(MediaType.APPLICATION_JSON)
public class Parser {
    @Inject
    private ParserService parserService;

    @GET
    @Path("/status")
    public Response status() {
        return Response.ok().build();
    }

    @POST
    @Path("")
    public Response parse(Sheet sheet) {
        return Response.ok("{\"valid\":" + parserService.isValid(sheet) + "}").build();
    }
}
