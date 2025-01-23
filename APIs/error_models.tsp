import "@typespec/http";
import "@typespec/rest";
import "@typespec/openapi3";

using TypeSpec.Http;
using TypeSpec.Rest;
using TypeSpec.OpenAPI;

namespace MDemoUtils.ErrorModels{
    @error
    model NotFoundError {
        code: "NOT_FOUND";
        message: string;
    }

    @error
    model ValidationError {
        code: "VALIDATION_ERROR";
        message: string;
        details: string[];
    }

    @error
    model InternalServerError {
        code: "INTERNAL_SERVER_ERROR";
        message: string;
    }

}