# Generated by default/object.tt
package Paws::Glue::AmazonRedshiftTarget;
  use Moose;
  has Data => (is => 'ro', isa => 'Paws::Glue::AmazonRedshiftNodeData');
  has Inputs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Name => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::AmazonRedshiftTarget

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::AmazonRedshiftTarget object:

  $service_obj->Method(Att1 => { Data => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::AmazonRedshiftTarget object:

  $result = $service_obj->Method(...);
  $result->Att1->Data

=head1 DESCRIPTION

Specifies an Amazon Redshift target.

=head1 ATTRIBUTES


=head2 Data => L<Paws::Glue::AmazonRedshiftNodeData>

Specifies the data of the Amazon Redshift target node.


=head2 Inputs => ArrayRef[Str|Undef]

The nodes that are inputs to the data target.


=head2 Name => Str

The name of the Amazon Redshift target.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

