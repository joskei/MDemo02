import "@typespec/http";
import "@typespec/rest";
import "@typespec/openapi3";
import "@typespec/versioning";
import "./common.tsp";
import "./error_models.tsp";

using TypeSpec.Http;
using TypeSpec.Rest;
using TypeSpec.OpenAPI;
using TypeSpec.Versioning;
using MDemoUtils.Types;
using MDemoUtils.ErrorModels;

@service({
    title: "Qualification Management",
})

@server("https://mdemoutils.com", "Single server endpoint")
@versioned(Versions)
namespace QualificationManagement{
    enum Versions{
        v1: "1.0",
        v2: "2.0"
    }
    @example(#{
        id: "a3df40f3-7372-4811-b719-3ea9ad78b922",
        name: "Injection process",
        email: "d@bdoctor.com",
        fromTraining: "Yes",
        doctorId:"7fc0d796-1e81-4a3d-b6b9-c28574e5ba26"
    })

    model Qualification {
        id: id;
        @maxLength(20)
        name: string;
        email: email;
        fromTraining: fromTraining;
        doctorId: string
                
    }

    @example(#{
        id: "7fc0d796-1e81-4a3d-b6b9-c28574e5ba26",
        name: "Joe Doe",        
        email: "joe.doe@mdemoutils.com",
        qualificationCount: 2,
        dateOfBirth: plainDate.fromISO("1978-01-01"),
        specialization: specialization.anesthesiology
    })
    model Doctor {
        id: id;
        name: string;
        @renamedFrom(Versions.v2, "doctorEmail")
        email: email;
        @added(Versions.v2)
        qualificationCount: int32;
        dateOfBirth: plainDate;
        specialization: specialization;
    }

    enum specialization {
        generalPractitioner: "General Practitioner",
        allertyImmunology: "Allergy and Immunology",
        anesthesiology: "Anesthesiology",
        cardiology: "Cardiology"
    }

    model ErrorResponse {
        code: int32;
        message: string;
    }

    model SuccessResponse<T> {
        data: T;
    }

    @example(#{offset: 10, limit: 10})
    model Pagination{
        offset: int32;
        @minValue(1)
        @maxValue(100)
        limit: int32;
    }
    @route("/qualifications")
    interface QualificationAPI {
        @post
        @useAuth(BearerAuth)
        op createQualification(@body qualification:Qualification): {@statusCode statusCode: 201; @body qualification:Qualification} 
        | {@statusCode statusCode:202; @body Qualification:Qualification}
        | {@statusCode statusCode: 400; @body error: ValidationError;}
        | {@statusCode statusCode: 500; @body error: InternalServerError;};
        @get
        @useAuth(BearerAuth)
        op listQualifications(...Pagination): {@statusCode statusCode: 200; @body qualification:Qualification[]} 
        | {@statusCode statusCode: 404; @body error: NotFoundError};
        @get
        @useAuth(BearerAuth)
        op getQualificationById(@path id:string): {@statusCode statusCode: 200; @body qualification: Qualification} 
        | {@statusCode statusCode: 404};
        @put
        @useAuth(BearerAuth)
        op updateQualification(@path id:string, @body qualification: Qualification): 
        {@statusCode statusCode: 200; @body qualification: Qualification;} 
        | {@statusCode statusCode: 202; @body qualification: Qualification;}
        | {@statusCode statusCode: 400; @body error: ValidationError;}
        | {@statusCode statusCode: 404; @body error: NotFoundError;}
        | {@statusCode statusCode: 500; @body error: InternalServerError;};
        @delete
        @useAuth(BearerAuth)
        op deleteQualification(@path id:string): {@statusCode statusCode:204;};
    }

    @route("/v1/doctors")
    interface DoctorAPI {
        @post
        @useAuth(BearerAuth)
        op createDoctor(@body doctor: Doctor): 
        {@statusCode statusCode: 201; @body doctor:Doctor} 
        | {@statusCode statusCode:202; @body doctor: Doctor;}
        | {@statusCode statusCode: 400; @body error: ValidationError;}
        | {@statusCode statusCode: 500; @body error: InternalServerError;};
        @get
        @useAuth(BearerAuth)
        op listDoctors(...Pagination): {@statusCode statusCode: 200; @body doctor:Doctor[]} 
        | {@statusCode statusCode: 404; @body error: NotFoundError};
        @get
        @useAuth(BearerAuth)
        op getDoctorById(@path id:string): {@statusCode statusCode: 200; @body doctor:Doctor} 
        | {@statusCode statusCode: 404};
        @put
        @useAuth(BearerAuth)
        op updateDoctor(@path id:string, @body doctor:Doctor): 
        {@statusCode statusCode: 200; @body doctor:Doctor} 
        | {@statusCode statusCode: 404}
        | {@statusCode statusCode: 400; @body error: ValidationError;}
        | {@statusCode statusCode: 404; @body error: NotFoundError;}
        | {@statusCode statusCode: 500; @body error: InternalServerError;};
        @delete
        @useAuth(BearerAuth)
        op deleteDoctor(@path id:string): {@statusCode statusCode:204;};
    }

    @route("/v2/doctors")
    interface DoctorAPIV2 {
        @post
        @useAuth(BearerAuth)
        op createDoctor(@body doctor: Doctor): 
        {@statusCode statusCode: 201; @body doctor:Doctor} 
        | {@statusCode statusCode:202; @body doctor: Doctor;}
        | {@statusCode statusCode: 400; @body error: ValidationError;}
        | {@statusCode statusCode: 500; @body error: InternalServerError;};
        @get
        @useAuth(BearerAuth)
        op listDoctors(...Pagination): {@statusCode statusCode: 200; @body doctor:Doctor[]} 
        | {@statusCode statusCode: 404; @body error: NotFoundError};
        @get
        @useAuth(BearerAuth)
        op getDoctorById(@path id:string): {@statusCode statusCode: 200; @body doctor:Doctor} 
        | {@statusCode statusCode: 404};
        @put
        @useAuth(BearerAuth)
        op updateDoctor(@path id:string, @body doctor:Doctor): 
        {@statusCode statusCode: 200; @body doctor:Doctor} 
        | {@statusCode statusCode: 404}
        | {@statusCode statusCode: 400; @body error: ValidationError;}
        | {@statusCode statusCode: 404; @body error: NotFoundError;}
        | {@statusCode statusCode: 500; @body error: InternalServerError;};
        @delete
        @useAuth(BearerAuth)
        op deleteDoctor(@path id:string): {@statusCode statusCode:204;};
        
        @added(Versions.v2)
        @route("/Qualifications")
        op getDoctorQualifications(@path doctorId:id):
        {@statusCode statusCode: 200; @body Qualifications:Qualification[]}
        | {@statusCode statusCode: 404; @body error: NotFoundError;};
    }
}