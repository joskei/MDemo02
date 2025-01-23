# Org.OpenAPITools.Api.DefaultApi

All URIs are relative to *https://mdemoutils.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**SupervisedIndividualAPICreateSupervisedIndividual**](DefaultApi.md#supervisedindividualapicreatesupervisedindividual) | **POST** /v1/supervisedindividuals |  |
| [**SupervisedIndividualAPIGetSupervisedIndividualById**](DefaultApi.md#supervisedindividualapigetsupervisedindividualbyid) | **GET** /v1/supervisedindividuals/{id} |  |
| [**SupervisedIndividualAPIListSupervisedIndividuals**](DefaultApi.md#supervisedindividualapilistsupervisedindividuals) | **GET** /v1/supervisedindividuals |  |
| [**SupervisedIndividualAPIV2CreateSupervisedIndividual**](DefaultApi.md#supervisedindividualapiv2createsupervisedindividual) | **POST** /v2/supervisedindividuals |  |
| [**SupervisedIndividualAPIV2GetSupervisedIndividualById**](DefaultApi.md#supervisedindividualapiv2getsupervisedindividualbyid) | **GET** /v2/supervisedindividuals/{id} |  |
| [**SupervisedIndividualAPIV2ListSupervisedIndividuals**](DefaultApi.md#supervisedindividualapiv2listsupervisedindividuals) | **GET** /v2/supervisedindividuals |  |

<a id="supervisedindividualapicreatesupervisedindividual"></a>
# **SupervisedIndividualAPICreateSupervisedIndividual**
> SupervisedIndividual SupervisedIndividualAPICreateSupervisedIndividual (SupervisedIndividual supervisedIndividual)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class SupervisedIndividualAPICreateSupervisedIndividualExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://mdemoutils.com";
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new DefaultApi(config);
            var supervisedIndividual = new SupervisedIndividual(); // SupervisedIndividual | 

            try
            {
                SupervisedIndividual result = apiInstance.SupervisedIndividualAPICreateSupervisedIndividual(supervisedIndividual);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DefaultApi.SupervisedIndividualAPICreateSupervisedIndividual: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SupervisedIndividualAPICreateSupervisedIndividualWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<SupervisedIndividual> response = apiInstance.SupervisedIndividualAPICreateSupervisedIndividualWithHttpInfo(supervisedIndividual);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DefaultApi.SupervisedIndividualAPICreateSupervisedIndividualWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **supervisedIndividual** | [**SupervisedIndividual**](SupervisedIndividual.md) |  |  |

### Return type

[**SupervisedIndividual**](SupervisedIndividual.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | The request has succeeded and a new resource has been created as a result. |  -  |
| **202** | The request has been accepted for processing, but processing has not yet completed. |  -  |
| **400** | The server could not understand the request due to invalid syntax. |  -  |
| **500** | Server error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="supervisedindividualapigetsupervisedindividualbyid"></a>
# **SupervisedIndividualAPIGetSupervisedIndividualById**
> SupervisedIndividual SupervisedIndividualAPIGetSupervisedIndividualById (string id)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class SupervisedIndividualAPIGetSupervisedIndividualByIdExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://mdemoutils.com";
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new DefaultApi(config);
            var id = "id_example";  // string | 

            try
            {
                SupervisedIndividual result = apiInstance.SupervisedIndividualAPIGetSupervisedIndividualById(id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DefaultApi.SupervisedIndividualAPIGetSupervisedIndividualById: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SupervisedIndividualAPIGetSupervisedIndividualByIdWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<SupervisedIndividual> response = apiInstance.SupervisedIndividualAPIGetSupervisedIndividualByIdWithHttpInfo(id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DefaultApi.SupervisedIndividualAPIGetSupervisedIndividualByIdWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **string** |  |  |

### Return type

[**SupervisedIndividual**](SupervisedIndividual.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The request has succeeded. |  -  |
| **404** | The server cannot find the requested resource. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="supervisedindividualapilistsupervisedindividuals"></a>
# **SupervisedIndividualAPIListSupervisedIndividuals**
> List&lt;SupervisedIndividual&gt; SupervisedIndividualAPIListSupervisedIndividuals ()



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class SupervisedIndividualAPIListSupervisedIndividualsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://mdemoutils.com";
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new DefaultApi(config);

            try
            {
                List<SupervisedIndividual> result = apiInstance.SupervisedIndividualAPIListSupervisedIndividuals();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DefaultApi.SupervisedIndividualAPIListSupervisedIndividuals: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SupervisedIndividualAPIListSupervisedIndividualsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<List<SupervisedIndividual>> response = apiInstance.SupervisedIndividualAPIListSupervisedIndividualsWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DefaultApi.SupervisedIndividualAPIListSupervisedIndividualsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;SupervisedIndividual&gt;**](SupervisedIndividual.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The request has succeeded. |  -  |
| **404** | The server cannot find the requested resource. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="supervisedindividualapiv2createsupervisedindividual"></a>
# **SupervisedIndividualAPIV2CreateSupervisedIndividual**
> SupervisedIndividual SupervisedIndividualAPIV2CreateSupervisedIndividual (SupervisedIndividual supervisedIndividual)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class SupervisedIndividualAPIV2CreateSupervisedIndividualExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://mdemoutils.com";
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new DefaultApi(config);
            var supervisedIndividual = new SupervisedIndividual(); // SupervisedIndividual | 

            try
            {
                SupervisedIndividual result = apiInstance.SupervisedIndividualAPIV2CreateSupervisedIndividual(supervisedIndividual);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DefaultApi.SupervisedIndividualAPIV2CreateSupervisedIndividual: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SupervisedIndividualAPIV2CreateSupervisedIndividualWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<SupervisedIndividual> response = apiInstance.SupervisedIndividualAPIV2CreateSupervisedIndividualWithHttpInfo(supervisedIndividual);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DefaultApi.SupervisedIndividualAPIV2CreateSupervisedIndividualWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **supervisedIndividual** | [**SupervisedIndividual**](SupervisedIndividual.md) |  |  |

### Return type

[**SupervisedIndividual**](SupervisedIndividual.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | The request has succeeded and a new resource has been created as a result. |  -  |
| **202** | The request has been accepted for processing, but processing has not yet completed. |  -  |
| **400** | The server could not understand the request due to invalid syntax. |  -  |
| **500** | Server error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="supervisedindividualapiv2getsupervisedindividualbyid"></a>
# **SupervisedIndividualAPIV2GetSupervisedIndividualById**
> SupervisedIndividual SupervisedIndividualAPIV2GetSupervisedIndividualById (string id)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class SupervisedIndividualAPIV2GetSupervisedIndividualByIdExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://mdemoutils.com";
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new DefaultApi(config);
            var id = "id_example";  // string | 

            try
            {
                SupervisedIndividual result = apiInstance.SupervisedIndividualAPIV2GetSupervisedIndividualById(id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DefaultApi.SupervisedIndividualAPIV2GetSupervisedIndividualById: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SupervisedIndividualAPIV2GetSupervisedIndividualByIdWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<SupervisedIndividual> response = apiInstance.SupervisedIndividualAPIV2GetSupervisedIndividualByIdWithHttpInfo(id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DefaultApi.SupervisedIndividualAPIV2GetSupervisedIndividualByIdWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **string** |  |  |

### Return type

[**SupervisedIndividual**](SupervisedIndividual.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The request has succeeded. |  -  |
| **404** | The server cannot find the requested resource. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="supervisedindividualapiv2listsupervisedindividuals"></a>
# **SupervisedIndividualAPIV2ListSupervisedIndividuals**
> List&lt;SupervisedIndividual&gt; SupervisedIndividualAPIV2ListSupervisedIndividuals ()



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class SupervisedIndividualAPIV2ListSupervisedIndividualsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://mdemoutils.com";
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new DefaultApi(config);

            try
            {
                List<SupervisedIndividual> result = apiInstance.SupervisedIndividualAPIV2ListSupervisedIndividuals();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DefaultApi.SupervisedIndividualAPIV2ListSupervisedIndividuals: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SupervisedIndividualAPIV2ListSupervisedIndividualsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<List<SupervisedIndividual>> response = apiInstance.SupervisedIndividualAPIV2ListSupervisedIndividualsWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DefaultApi.SupervisedIndividualAPIV2ListSupervisedIndividualsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;SupervisedIndividual&gt;**](SupervisedIndividual.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The request has succeeded. |  -  |
| **404** | The server cannot find the requested resource. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

