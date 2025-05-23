# Generated by default/object.tt
package Paws::AppTest::FileMetadata;
  use Moose;
  has DatabaseCDC => (is => 'ro', isa => 'Paws::AppTest::DatabaseCDC', request_name => 'databaseCDC', traits => ['NameInRequest']);
  has DataSets => (is => 'ro', isa => 'ArrayRef[Paws::AppTest::DataSet]', request_name => 'dataSets', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppTest::FileMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppTest::FileMetadata object:

  $service_obj->Method(Att1 => { DatabaseCDC => $value, ..., DataSets => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppTest::FileMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->DatabaseCDC

=head1 DESCRIPTION

Specifies a file metadata.

=head1 ATTRIBUTES


=head2 DatabaseCDC => L<Paws::AppTest::DatabaseCDC>

The database CDC of the file metadata.


=head2 DataSets => ArrayRef[L<Paws::AppTest::DataSet>]

The data sets of the file metadata.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppTest>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

