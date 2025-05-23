# Generated by default/object.tt
package Paws::QBusiness::GroupStatusDetail;
  use Moose;
  has ErrorDetail => (is => 'ro', isa => 'Paws::QBusiness::ErrorDetail', request_name => 'errorDetail', traits => ['NameInRequest']);
  has LastUpdatedAt => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedAt', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::GroupStatusDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::QBusiness::GroupStatusDetail object:

  $service_obj->Method(Att1 => { ErrorDetail => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::QBusiness::GroupStatusDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorDetail

=head1 DESCRIPTION

Provides the details of a group's status.

=head1 ATTRIBUTES


=head2 ErrorDetail => L<Paws::QBusiness::ErrorDetail>

The details of an error associated a group status.


=head2 LastUpdatedAt => Str

The Unix timestamp when the Amazon Q Business application was last
updated.


=head2 Status => Str

The status of a group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

