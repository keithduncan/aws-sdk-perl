# Generated by default/object.tt
package Paws::IoTSiteWise::ErrorDetails;
  use Moose;
  has Code => (is => 'ro', isa => 'Str', request_name => 'code', traits => ['NameInRequest'], required => 1);
  has Details => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::DetailedError]', request_name => 'details', traits => ['NameInRequest']);
  has Message => (is => 'ro', isa => 'Str', request_name => 'message', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::ErrorDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTSiteWise::ErrorDetails object:

  $service_obj->Method(Att1 => { Code => $value, ..., Message => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTSiteWise::ErrorDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->Code

=head1 DESCRIPTION

Contains the details of an IoT SiteWise error.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Code => Str

The error code.


=head2 Details => ArrayRef[L<Paws::IoTSiteWise::DetailedError>]

A list of detailed errors.


=head2 B<REQUIRED> Message => Str

The error message.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

