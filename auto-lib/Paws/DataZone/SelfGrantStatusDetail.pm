# Generated by default/object.tt
package Paws::DataZone::SelfGrantStatusDetail;
  use Moose;
  has DatabaseName => (is => 'ro', isa => 'Str', request_name => 'databaseName', traits => ['NameInRequest'], required => 1);
  has FailureCause => (is => 'ro', isa => 'Str', request_name => 'failureCause', traits => ['NameInRequest']);
  has SchemaName => (is => 'ro', isa => 'Str', request_name => 'schemaName', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::SelfGrantStatusDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataZone::SelfGrantStatusDetail object:

  $service_obj->Method(Att1 => { DatabaseName => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataZone::SelfGrantStatusDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->DatabaseName

=head1 DESCRIPTION

The details for the self granting status.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatabaseName => Str

The name of the database used for the data source.


=head2 FailureCause => Str

The reason for why the operation failed.


=head2 SchemaName => Str

The name of the schema used in the data source.


=head2 B<REQUIRED> Status => Str

The self granting status of the data source.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

