# Generated by default/object.tt
package Paws::Glue::AmazonRedshiftSource;
  use Moose;
  has Data => (is => 'ro', isa => 'Paws::Glue::AmazonRedshiftNodeData');
  has Name => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::AmazonRedshiftSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::AmazonRedshiftSource object:

  $service_obj->Method(Att1 => { Data => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::AmazonRedshiftSource object:

  $result = $service_obj->Method(...);
  $result->Att1->Data

=head1 DESCRIPTION

Specifies an Amazon Redshift source.

=head1 ATTRIBUTES


=head2 Data => L<Paws::Glue::AmazonRedshiftNodeData>

Specifies the data of the Amazon Reshift source node.


=head2 Name => Str

The name of the Amazon Redshift source.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

