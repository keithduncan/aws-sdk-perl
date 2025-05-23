# Generated by default/object.tt
package Paws::SecurityHub::AwsDynamoDbTableKeySchema;
  use Moose;
  has AttributeName => (is => 'ro', isa => 'Str');
  has KeyType => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsDynamoDbTableKeySchema

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsDynamoDbTableKeySchema object:

  $service_obj->Method(Att1 => { AttributeName => $value, ..., KeyType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsDynamoDbTableKeySchema object:

  $result = $service_obj->Method(...);
  $result->Att1->AttributeName

=head1 DESCRIPTION

A component of the key schema for the DynamoDB table, a global
secondary index, or a local secondary index.

=head1 ATTRIBUTES


=head2 AttributeName => Str

The name of the key schema attribute.


=head2 KeyType => Str

The type of key used for the key schema attribute. Valid values are
C<HASH> or C<RANGE>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

