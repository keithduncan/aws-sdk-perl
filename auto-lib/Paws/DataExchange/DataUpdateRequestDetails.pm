# Generated by default/object.tt
package Paws::DataExchange::DataUpdateRequestDetails;
  use Moose;
  has DataUpdatedAt => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::DataUpdateRequestDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataExchange::DataUpdateRequestDetails object:

  $service_obj->Method(Att1 => { DataUpdatedAt => $value, ..., DataUpdatedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataExchange::DataUpdateRequestDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->DataUpdatedAt

=head1 DESCRIPTION

Extra details specific to a data update type notification.

=head1 ATTRIBUTES


=head2 DataUpdatedAt => Str

A datetime in the past when the data was updated. This typically means
that the underlying resource supporting the data set was updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

