package se.pro12.ironfox.rest;

import io.swagger.jaxrs.config.BeanConfig;
import io.swagger.jaxrs.config.SwaggerContextService;
import io.swagger.models.Swagger;

import javax.ws.rs.ApplicationPath;
import javax.ws.rs.core.Application;

/**
 * @author Marcus Münger
 */
@ApplicationPath("/api")
public class RestApplication extends Application {

    public RestApplication() {
        Swagger swagger = new Swagger();
        new SwaggerContextService().updateSwagger(swagger);

        BeanConfig beanConfig = new BeanConfig();
        beanConfig.setDescription("Parser for sheet music");
        beanConfig.setTitle("Ironfox");
        beanConfig.setVersion("0.0.0");
        beanConfig.setSchemes(new String[]{"http"});
        beanConfig.setBasePath("/api");
        beanConfig.setResourcePackage("se.pro12.ironfox");
        beanConfig.setScan(true);
    }
}
