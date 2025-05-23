# Generated by default/object.tt
package Paws::SecurityLake::DataLakeException;
  use Moose;
  has Exception => (is => 'ro', isa => 'Str', request_name => 'exception', traits => ['NameInRequest']);
  has Region => (is => 'ro', isa => 'Str', request_name => 'region', traits => ['NameInRequest']);
  has Remediation => (is => 'ro', isa => 'Str', request_name => 'remediation', traits => ['NameInRequest']);
  has Timestamp => (is => 'ro', isa => 'Str', request_name => 'timestamp', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityLake::DataLakeException

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityLake::DataLakeException object:

  $service_obj->Method(Att1 => { Exception => $value, ..., Timestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityLake::DataLakeException object:

  $result = $service_obj->Method(...);
  $result->Att1->Exception

=head1 DESCRIPTION

The details for an Amazon Security Lake exception.

=head1 ATTRIBUTES


=head2 Exception => Str

The underlying exception of a Security Lake exception.


=head2 Region => Str

The Amazon Web Services Regions where the exception occurred.


=head2 Remediation => Str

List of all remediation steps for a Security Lake exception.


=head2 Timestamp => Str

This error can occur if you configure the wrong timestamp format, or if
the subset of entries used for validation had errors or missing values.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityLake>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

