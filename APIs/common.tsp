import "@typespec/http";
import "@typespec/rest";
import "@typespec/openapi3";

using TypeSpec.Http;
using TypeSpec.Rest;
using TypeSpec.OpenAPI;

namespace MDemoUtils.Types {
    @format("uuid")
    scalar uuid extends string;

    scalar id extends uuid;

    @pattern(".+\\@.+\\..+")
    scalar email extends string;

    @pattern("^(?:Yes|No)$")
    scalar fromTraining extends string;
}