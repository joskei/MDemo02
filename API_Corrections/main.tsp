import "@typespec/http";
import "@typespec/rest";
import "@typespec/openapi3";
import "@typespec/versioning";

using TypeSpec.Http;
using TypeSpec.Rest;
using TypeSpec.OpenAPI;
using TypeSpec.Versioning;

@service({
    title: "SupervisedIndividuals Management",
})

@server("https://mdemoutils.com", "Single server endpoint")
@versioned(Versions)
namespace SupervisedIndividualManagement{
    enum Versions{
        v1: "1.0",
        v2: "2.0"
    }
    @example(#{
        id: "a3df40f3-7372-4811-b719-3ea9ad78b922",
        name: "Joseph",
        email: "j@b.com",        
        dateOfJoining: plainDate.fromISO("2001-01-01"),
        dateOfBirth: plainDate.fromISO("1978-01-01"),        
    })

    model SupervisedIndividual {
        id: string;
        @maxLength(20)
        name: string;
        email: string;
        dateOfJoining: plainDate;
        dateOfBirth: plainDate;        
    }
        
    @route("/v1/supervisedindividuals")
    interface SupervisedIndividualAPI {
        @get
        @useAuth(BearerAuth)
        op getSupervisedIndividualById(@path id:string): {@statusCode statusCode: 200; @body supervisedindividual:SupervisedIndividual} 
        | {@statusCode statusCode: 404};
        
    }

    @route("/v2/supervisedindividuals")
    interface SupervisedIndividualAPIV2 {
        @get
        @useAuth(BearerAuth)
        op getSupervisedIndividualById(@path id:string): {@statusCode statusCode: 200; @body supervisedindividual:SupervisedIndividual} 
        | {@statusCode statusCode: 404};
        
        @added(Versions.v2)
        @post
        @useAuth(BearerAuth)
        op createSupervisedIndividual(@body supervisedindividual: SupervisedIndividual): {@statusCode statusCode: 201; @body supervisedindividual:SupervisedIndividual} 
        | {@statusCode statusCode:202; @body supervisedindividual: SupervisedIndividual}
        | {@statusCode statusCode: 400; @body error: string;}
        | {@statusCode statusCode: 500; @body error: string;};
        
        @added(Versions.v2)
        @get
        @useAuth(BearerAuth)
        op listSupervisedIndividuals(): {@statusCode statusCode: 200; @body supervisedindividual:SupervisedIndividual[]} 
        | {@statusCode statusCode: 404; @body error: string};
        
        @added(Versions.v2)
        @put
        @useAuth(BearerAuth)
        op updateSupervisedIndividual(@path id:string, @body supervisedindividual:SupervisedIndividual): 
        {@statusCode statusCode: 200; @body supervisedindividual:SupervisedIndividual;} 
        | {@statusCode statusCode: 202; @body supervisedindividual:SupervisedIndividual;}
        | {@statusCode statusCode: 400; @body error: string;}
        | {@statusCode statusCode: 404; @body error: string;}
        | {@statusCode statusCode: 500; @body error: string;};
        
        @added(Versions.v2)
        @delete
        @useAuth(BearerAuth)
        op deleteSupervisedIndividual(@path id:string): {@statusCode statusCode:204;};
    }    
}