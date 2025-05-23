# Generated by default/object.tt
package Paws::RDSData::StructValue;
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::RDSData::Value]', request_name => 'attributes', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::RDSData::StructValue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDSData::StructValue object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., Attributes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDSData::StructValue object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

A structure value returned by a call.

This data structure is only used with the deprecated C<ExecuteSql>
operation. Use the C<BatchExecuteStatement> or C<ExecuteStatement>
operation instead.

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[L<Paws::RDSData::Value>]

The attributes returned in the record.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDSData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

