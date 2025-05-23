# Generated by default/object.tt
package Paws::Keyspaces::AutoScalingSpecification;
  use Moose;
  has ReadCapacityAutoScaling => (is => 'ro', isa => 'Paws::Keyspaces::AutoScalingSettings', request_name => 'readCapacityAutoScaling', traits => ['NameInRequest']);
  has WriteCapacityAutoScaling => (is => 'ro', isa => 'Paws::Keyspaces::AutoScalingSettings', request_name => 'writeCapacityAutoScaling', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Keyspaces::AutoScalingSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Keyspaces::AutoScalingSpecification object:

  $service_obj->Method(Att1 => { ReadCapacityAutoScaling => $value, ..., WriteCapacityAutoScaling => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Keyspaces::AutoScalingSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->ReadCapacityAutoScaling

=head1 DESCRIPTION

The optional auto scaling capacity settings for a table in provisioned
capacity mode.

=head1 ATTRIBUTES


=head2 ReadCapacityAutoScaling => L<Paws::Keyspaces::AutoScalingSettings>

The auto scaling settings for the table's read capacity.


=head2 WriteCapacityAutoScaling => L<Paws::Keyspaces::AutoScalingSettings>

The auto scaling settings for the table's write capacity.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Keyspaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

