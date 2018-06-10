# WWW::MarketcheckCarsApi::Object::Listing

## Load the model package
```perl
use WWW::MarketcheckCarsApi::Object::Listing;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | Unique identifier representing a specific listing from the Marketcheck database | [optional] 
**heading** | **string** | Listing heading | [optional] 
**vin** | **string** | VIN for the car | [optional] 
**stock_no** | **string** | Stock no of the car | [optional] 
**price** | **string** | Asking price for the car | [optional] 
**msrp** | **string** | MSRP for the car | [optional] 
**miles** | **string** | Odometer reading / reported miles usage for the car | [optional] 
**inventory_type** | **string** | Inventory type of car | [optional] 
**scraped_at_date** | [**Number**](Number.md) | Listing first seen at first scraped date | [optional] 
**first_seen_at** | [**Number**](Number.md) | Listing first seen at first scraped timestamp | [optional] 
**first_seen_at_date** | **string** | Listing first seen at first scraped date | [optional] 
**vdp_url** | **string** | Vehicle Details Page url of the specific car | [optional] 
**source** | **string** | Source domain of the listing | [optional] 
**is_certified** | **int** | Flag indicating whether the car is Certified | [optional] 
**dom** | [**Number**](Number.md) | Days on Market value for the car based on current and historical listings found in the Marketcheck database for this car | [optional] 
**dom_180** | [**Number**](Number.md) | Days on Market value for the car based on current and last 6 month listings found in the Marketcheck database for this car | [optional] 
**dom_active** | [**Number**](Number.md) | Days on Market value for the car based on current and last 30 days listings found in the Marketcheck database for this car | [optional] 
**seller_type** | **string** | Seller type for the car | [optional] 
**last_seen_at** | [**Number**](Number.md) | Listing last seen at (most recent) timestamp | [optional] 
**last_seen_at_date** | **string** | Listing last seen at (most recent) date | [optional] 
**build** | [**Build**](Build.md) | Build / Specifications attributes | [optional] 
**media** | [**ListingMedia**](ListingMedia.md) | Car Media Attributes - main photo link/url and photo links | [optional] 
**extra** | [**ListingExtraAttributes**](ListingExtraAttributes.md) | Extra attributes for the listing - options, features, seller comments etc | [optional] 
**dealer** | [**Dealer**](Dealer.md) |  | [optional] 
**car_location** | [**Location**](Location.md) | Car location data. Included only if its a different location to the dealers location | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


