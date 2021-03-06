# WWW::MarketcheckCarsApi::DealerApi

## Load the API package
```perl
use WWW::MarketcheckCarsApi::Object::DealerApi;
```

All URIs are relative to *https://marketcheck-prod.apigee.net/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dealer_search**](DealerApi.md#dealer_search) | **GET** /dealers | Find car dealers around
[**get_dealer**](DealerApi.md#get_dealer) | **GET** /dealer/{dealer_id} | Dealer by id
[**get_dealer_active_inventory**](DealerApi.md#get_dealer_active_inventory) | **GET** /dealer/{dealer_id}/active/inventory | Dealer inventory
[**get_dealer_historical_inventory**](DealerApi.md#get_dealer_historical_inventory) | **GET** /dealer/{dealer_id}/historical/inventory | Dealer&#39;s historical inventory
[**get_dealer_landing_page**](DealerApi.md#get_dealer_landing_page) | **GET** /dealer/{dealer_id}/landing | Experimental: Get cached version of dealer landing page by dealer id
[**get_dealer_ratings**](DealerApi.md#get_dealer_ratings) | **GET** /dealer/{dealer_id}/ratings | Dealer&#39;s Rating
[**get_dealer_reviews**](DealerApi.md#get_dealer_reviews) | **GET** /dealer/{dealer_id}/reviews | Dealer&#39;s Review


# **dealer_search**
> DealersResponse dealer_search(latitude => $latitude, longitude => $longitude, radius => $radius, api_key => $api_key, rows => $rows, start => $start)

Find car dealers around

The dealers API returns a list of dealers around a given point and radius. Max radius of only 50 miles is supported.

### Example 
```perl
use Data::Dumper;
use WWW::MarketcheckCarsApi::DealerApi;
my $api_instance = WWW::MarketcheckCarsApi::DealerApi->new(
);

my $latitude = 1.2; # double | Latitude component of location
my $longitude = 1.2; # double | Longitude component of location
my $radius = 56; # int | Radius around the search location
my $api_key = 'api_key_example'; # string | The API Authentication Key. Mandatory with all API calls.
my $rows = 56; # int | Number of results to return. Default is 10. Max is 50
my $start = 56; # int | Offset for the search results. Default is 1.

eval { 
    my $result = $api_instance->dealer_search(latitude => $latitude, longitude => $longitude, radius => $radius, api_key => $api_key, rows => $rows, start => $start);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DealerApi->dealer_search: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **latitude** | **double**| Latitude component of location | 
 **longitude** | **double**| Longitude component of location | 
 **radius** | **int**| Radius around the search location | 
 **api_key** | **string**| The API Authentication Key. Mandatory with all API calls. | [optional] 
 **rows** | **int**| Number of results to return. Default is 10. Max is 50 | [optional] 
 **start** | **int**| Offset for the search results. Default is 1. | [optional] 

### Return type

[**DealersResponse**](DealersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_dealer**
> Dealer get_dealer(dealer_id => $dealer_id, api_key => $api_key)

Dealer by id

Get a particular dealer's information by its id

### Example 
```perl
use Data::Dumper;
use WWW::MarketcheckCarsApi::DealerApi;
my $api_instance = WWW::MarketcheckCarsApi::DealerApi->new(
);

my $dealer_id = 'dealer_id_example'; # string | Dealer id to get all the dealer info attributes
my $api_key = 'api_key_example'; # string | The API Authentication Key. Mandatory with all API calls.

eval { 
    my $result = $api_instance->get_dealer(dealer_id => $dealer_id, api_key => $api_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DealerApi->get_dealer: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dealer_id** | **string**| Dealer id to get all the dealer info attributes | 
 **api_key** | **string**| The API Authentication Key. Mandatory with all API calls. | [optional] 

### Return type

[**Dealer**](Dealer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_dealer_active_inventory**
> BaseListing get_dealer_active_inventory(dealer_id => $dealer_id, api_key => $api_key, rows => $rows, start => $start)

Dealer inventory

Get a dealer's currently active inventory

### Example 
```perl
use Data::Dumper;
use WWW::MarketcheckCarsApi::DealerApi;
my $api_instance = WWW::MarketcheckCarsApi::DealerApi->new(
);

my $dealer_id = 'dealer_id_example'; # string | Id representing the dealer to fetch the active inventory for
my $api_key = 'api_key_example'; # string | The API Authentication Key. Mandatory with all API calls.
my $rows = 56; # int | Number of results to return. Default is 10. Max is 50
my $start = 56; # int | Page number to fetch the results for the given criteria. Default is 1. Pagination is allowed only till first 1000 results for the search and sort criteria. The page value can be only between 1 to 1000/rows

eval { 
    my $result = $api_instance->get_dealer_active_inventory(dealer_id => $dealer_id, api_key => $api_key, rows => $rows, start => $start);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DealerApi->get_dealer_active_inventory: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dealer_id** | **string**| Id representing the dealer to fetch the active inventory for | 
 **api_key** | **string**| The API Authentication Key. Mandatory with all API calls. | [optional] 
 **rows** | **int**| Number of results to return. Default is 10. Max is 50 | [optional] 
 **start** | **int**| Page number to fetch the results for the given criteria. Default is 1. Pagination is allowed only till first 1000 results for the search and sort criteria. The page value can be only between 1 to 1000/rows | [optional] 

### Return type

[**BaseListing**](BaseListing.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_dealer_historical_inventory**
> BaseListing get_dealer_historical_inventory(dealer_id => $dealer_id)

Dealer's historical inventory

[v1 : Not Implemented Yet] - Get a dealer's historical inventory

### Example 
```perl
use Data::Dumper;
use WWW::MarketcheckCarsApi::DealerApi;
my $api_instance = WWW::MarketcheckCarsApi::DealerApi->new(
);

my $dealer_id = 'dealer_id_example'; # string | Id representing the dealer to fetch the active inventory for

eval { 
    my $result = $api_instance->get_dealer_historical_inventory(dealer_id => $dealer_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DealerApi->get_dealer_historical_inventory: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dealer_id** | **string**| Id representing the dealer to fetch the active inventory for | 

### Return type

[**BaseListing**](BaseListing.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_dealer_landing_page**
> DealerLandingPage get_dealer_landing_page(dealer_id => $dealer_id, api_key => $api_key)

Experimental: Get cached version of dealer landing page by dealer id

Experimental: Get cached version of dealer landing page by dealer id

### Example 
```perl
use Data::Dumper;
use WWW::MarketcheckCarsApi::DealerApi;
my $api_instance = WWW::MarketcheckCarsApi::DealerApi->new(
);

my $dealer_id = 'dealer_id_example'; # string | Robot id to get the landing page html for
my $api_key = 'api_key_example'; # string | The API Authentication Key. Mandatory with all API calls.

eval { 
    my $result = $api_instance->get_dealer_landing_page(dealer_id => $dealer_id, api_key => $api_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DealerApi->get_dealer_landing_page: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dealer_id** | **string**| Robot id to get the landing page html for | 
 **api_key** | **string**| The API Authentication Key. Mandatory with all API calls. | [optional] 

### Return type

[**DealerLandingPage**](DealerLandingPage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_dealer_ratings**
> DealerRating get_dealer_ratings(dealer_id => $dealer_id)

Dealer's Rating

[MOCK] Get a dealer's Rating

### Example 
```perl
use Data::Dumper;
use WWW::MarketcheckCarsApi::DealerApi;
my $api_instance = WWW::MarketcheckCarsApi::DealerApi->new(
);

my $dealer_id = 'dealer_id_example'; # string | Id representing the dealer to fetch the ratings for

eval { 
    my $result = $api_instance->get_dealer_ratings(dealer_id => $dealer_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DealerApi->get_dealer_ratings: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dealer_id** | **string**| Id representing the dealer to fetch the ratings for | 

### Return type

[**DealerRating**](DealerRating.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_dealer_reviews**
> DealerReview get_dealer_reviews(dealer_id => $dealer_id)

Dealer's Review

[MOCK] Get a dealer's Review

### Example 
```perl
use Data::Dumper;
use WWW::MarketcheckCarsApi::DealerApi;
my $api_instance = WWW::MarketcheckCarsApi::DealerApi->new(
);

my $dealer_id = 'dealer_id_example'; # string | Id representing the dealer to fetch the ratings for

eval { 
    my $result = $api_instance->get_dealer_reviews(dealer_id => $dealer_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DealerApi->get_dealer_reviews: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dealer_id** | **string**| Id representing the dealer to fetch the ratings for | 

### Return type

[**DealerReview**](DealerReview.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

