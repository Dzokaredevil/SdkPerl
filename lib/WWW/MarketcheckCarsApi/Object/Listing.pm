=begin comment

Marketcheck Cars API

<b>Access the New, Used and Certified cars inventories for all Car Dealers in US.</b> <br/>The data is sourced from online listings by over 44,000 Car dealers in US. At any time, there are about 6.2M searchable listings (about 1.9M unique VINs) for Used & Certified cars and about 6.6M (about 3.9M unique VINs) New Car listings from all over US. We use this API at the back for our website <a href='https://www.marketcheck.com' target='_blank'>www.marketcheck.com</a> and our Android and iOS mobile apps too.<br/><h5> Few useful links : </h5><ul><li>A quick view of the API and the use cases is depicated <a href='https://portals.marketcheck.com/mcapi/' target='_blank'>here</a></li><li>The Postman collection with various usages of the API is shared here https://www.getpostman.com/collections/2752684ff636cdd7bac2</li></ul>

OpenAPI spec version: 1.0.3

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
package WWW::MarketcheckCarsApi::Object::Listing;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;

use WWW::MarketcheckCarsApi::Object::Build;
use WWW::MarketcheckCarsApi::Object::Dealer;
use WWW::MarketcheckCarsApi::Object::ListingExtraAttributes;
use WWW::MarketcheckCarsApi::Object::ListingMedia;
use WWW::MarketcheckCarsApi::Object::Location;
use WWW::MarketcheckCarsApi::Object::Number;

use base ("Class::Accessor", "Class::Data::Inheritable");


#
#Represents a full list of attributes available with Marketcheck for a car
#
# NOTE: This class is auto generated by the swagger code generator program. Do not edit the class manually.
# REF: https://github.com/swagger-api/swagger-codegen
#

=begin comment

Marketcheck Cars API

<b>Access the New, Used and Certified cars inventories for all Car Dealers in US.</b> <br/>The data is sourced from online listings by over 44,000 Car dealers in US. At any time, there are about 6.2M searchable listings (about 1.9M unique VINs) for Used & Certified cars and about 6.6M (about 3.9M unique VINs) New Car listings from all over US. We use this API at the back for our website <a href='https://www.marketcheck.com' target='_blank'>www.marketcheck.com</a> and our Android and iOS mobile apps too.<br/><h5> Few useful links : </h5><ul><li>A quick view of the API and the use cases is depicated <a href='https://portals.marketcheck.com/mcapi/' target='_blank'>here</a></li><li>The Postman collection with various usages of the API is shared here https://www.getpostman.com/collections/2752684ff636cdd7bac2</li></ul>

OpenAPI spec version: 1.0.3

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('swagger_types' => {});
__PACKAGE__->mk_classdata('method_documentation' => {}); 
__PACKAGE__->mk_classdata('class_documentation' => {});

# new object
sub new { 
    my ($class, %args) = @_; 

	my $self = bless {}, $class;
	
	foreach my $attribute (keys %{$class->attribute_map}) {
		my $args_key = $class->attribute_map->{$attribute};
		$self->$attribute( $args{ $args_key } );
	}
	
	return $self;
}  

# return perl hash
sub to_hash {
    return decode_json(JSON->new->convert_blessed->encode( shift ));
}

# used by JSON for serialization
sub TO_JSON { 
    my $self = shift;
    my $_data = {};
    foreach my $_key (keys %{$self->attribute_map}) {
        if (defined $self->{$_key}) {
            $_data->{$self->attribute_map->{$_key}} = $self->{$_key};
        }
    }
    return $_data;
}

# from Perl hashref
sub from_hash {
    my ($self, $hash) = @_;

    # loop through attributes and use swagger_types to deserialize the data
    while ( my ($_key, $_type) = each %{$self->swagger_types} ) {
    	my $_json_attribute = $self->attribute_map->{$_key}; 
        if ($_type =~ /^array\[/i) { # array
            my $_subclass = substr($_type, 6, -1);
            my @_array = ();
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \@_array;
        } elsif (exists $hash->{$_json_attribute}) { #hash(model), primitive, datetime
            $self->{$_key} = $self->_deserialize($_type, $hash->{$_json_attribute});
        } else {
        	$log->debugf("Warning: %s (%s) does not exist in input hash\n", $_key, $_json_attribute);
        }
    }
  
    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ($self, $type, $data) = @_;
    $log->debugf("deserializing %s with %s",Dumper($data), $type);
        
    if ($type eq 'DateTime') {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif ( grep( /^$type$/, ('int', 'double', 'string', 'boolean'))) {
        return $data;
    } else { # hash(model)
        my $_instance = eval "WWW::MarketcheckCarsApi::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}



__PACKAGE__->class_documentation({description => 'Represents a full list of attributes available with Marketcheck for a car',
                                  class => 'Listing',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'id' => {
    	datatype => 'string',
    	base_name => 'id',
    	description => 'Unique identifier representing a specific listing from the Marketcheck database',
    	format => '',
    	read_only => '',
    		},
    'heading' => {
    	datatype => 'string',
    	base_name => 'heading',
    	description => 'Listing heading',
    	format => '',
    	read_only => '',
    		},
    'vin' => {
    	datatype => 'string',
    	base_name => 'vin',
    	description => 'VIN for the car',
    	format => '',
    	read_only => '',
    		},
    'stock_no' => {
    	datatype => 'string',
    	base_name => 'stock_no',
    	description => 'Stock no of the car',
    	format => '',
    	read_only => '',
    		},
    'price' => {
    	datatype => 'string',
    	base_name => 'price',
    	description => 'Asking price for the car',
    	format => '',
    	read_only => '',
    		},
    'msrp' => {
    	datatype => 'string',
    	base_name => 'msrp',
    	description => 'MSRP for the car',
    	format => '',
    	read_only => '',
    		},
    'miles' => {
    	datatype => 'string',
    	base_name => 'miles',
    	description => 'Odometer reading / reported miles usage for the car',
    	format => '',
    	read_only => '',
    		},
    'inventory_type' => {
    	datatype => 'string',
    	base_name => 'inventory_type',
    	description => 'Inventory type of car',
    	format => '',
    	read_only => '',
    		},
    'scraped_at_date' => {
    	datatype => 'Number',
    	base_name => 'scraped_at_date',
    	description => 'Listing first seen at first scraped date',
    	format => '',
    	read_only => '',
    		},
    'first_seen_at' => {
    	datatype => 'Number',
    	base_name => 'first_seen_at',
    	description => 'Listing first seen at first scraped timestamp',
    	format => '',
    	read_only => '',
    		},
    'first_seen_at_date' => {
    	datatype => 'string',
    	base_name => 'first_seen_at_date',
    	description => 'Listing first seen at first scraped date',
    	format => '',
    	read_only => '',
    		},
    'vdp_url' => {
    	datatype => 'string',
    	base_name => 'vdp_url',
    	description => 'Vehicle Details Page url of the specific car',
    	format => '',
    	read_only => '',
    		},
    'source' => {
    	datatype => 'string',
    	base_name => 'source',
    	description => 'Source domain of the listing',
    	format => '',
    	read_only => '',
    		},
    'is_certified' => {
    	datatype => 'int',
    	base_name => 'is_certified',
    	description => 'Flag indicating whether the car is Certified',
    	format => '',
    	read_only => '',
    		},
    'dom' => {
    	datatype => 'Number',
    	base_name => 'dom',
    	description => 'Days on Market value for the car based on current and historical listings found in the Marketcheck database for this car',
    	format => '',
    	read_only => '',
    		},
    'dom_180' => {
    	datatype => 'Number',
    	base_name => 'dom_180',
    	description => 'Days on Market value for the car based on current and last 6 month listings found in the Marketcheck database for this car',
    	format => '',
    	read_only => '',
    		},
    'dom_active' => {
    	datatype => 'Number',
    	base_name => 'dom_active',
    	description => 'Days on Market value for the car based on current and last 30 days listings found in the Marketcheck database for this car',
    	format => '',
    	read_only => '',
    		},
    'seller_type' => {
    	datatype => 'string',
    	base_name => 'seller_type',
    	description => 'Seller type for the car',
    	format => '',
    	read_only => '',
    		},
    'last_seen_at' => {
    	datatype => 'Number',
    	base_name => 'last_seen_at',
    	description => 'Listing last seen at (most recent) timestamp',
    	format => '',
    	read_only => '',
    		},
    'last_seen_at_date' => {
    	datatype => 'string',
    	base_name => 'last_seen_at_date',
    	description => 'Listing last seen at (most recent) date',
    	format => '',
    	read_only => '',
    		},
    'build' => {
    	datatype => 'Build',
    	base_name => 'build',
    	description => 'Build / Specifications attributes',
    	format => '',
    	read_only => '',
    		},
    'media' => {
    	datatype => 'ListingMedia',
    	base_name => 'media',
    	description => 'Car Media Attributes - main photo link/url and photo links',
    	format => '',
    	read_only => '',
    		},
    'extra' => {
    	datatype => 'ListingExtraAttributes',
    	base_name => 'extra',
    	description => 'Extra attributes for the listing - options, features, seller comments etc',
    	format => '',
    	read_only => '',
    		},
    'dealer' => {
    	datatype => 'Dealer',
    	base_name => 'dealer',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'car_location' => {
    	datatype => 'Location',
    	base_name => 'car_location',
    	description => 'Car location data. Included only if its a different location to the dealers location',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'id' => 'string',
    'heading' => 'string',
    'vin' => 'string',
    'stock_no' => 'string',
    'price' => 'string',
    'msrp' => 'string',
    'miles' => 'string',
    'inventory_type' => 'string',
    'scraped_at_date' => 'Number',
    'first_seen_at' => 'Number',
    'first_seen_at_date' => 'string',
    'vdp_url' => 'string',
    'source' => 'string',
    'is_certified' => 'int',
    'dom' => 'Number',
    'dom_180' => 'Number',
    'dom_active' => 'Number',
    'seller_type' => 'string',
    'last_seen_at' => 'Number',
    'last_seen_at_date' => 'string',
    'build' => 'Build',
    'media' => 'ListingMedia',
    'extra' => 'ListingExtraAttributes',
    'dealer' => 'Dealer',
    'car_location' => 'Location'
} );

__PACKAGE__->attribute_map( {
    'id' => 'id',
    'heading' => 'heading',
    'vin' => 'vin',
    'stock_no' => 'stock_no',
    'price' => 'price',
    'msrp' => 'msrp',
    'miles' => 'miles',
    'inventory_type' => 'inventory_type',
    'scraped_at_date' => 'scraped_at_date',
    'first_seen_at' => 'first_seen_at',
    'first_seen_at_date' => 'first_seen_at_date',
    'vdp_url' => 'vdp_url',
    'source' => 'source',
    'is_certified' => 'is_certified',
    'dom' => 'dom',
    'dom_180' => 'dom_180',
    'dom_active' => 'dom_active',
    'seller_type' => 'seller_type',
    'last_seen_at' => 'last_seen_at',
    'last_seen_at_date' => 'last_seen_at_date',
    'build' => 'build',
    'media' => 'media',
    'extra' => 'extra',
    'dealer' => 'dealer',
    'car_location' => 'car_location'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
