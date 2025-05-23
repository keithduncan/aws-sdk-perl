# Generated by default/object.tt
package Paws::Organizations::ResourcePolicySummary;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::ResourcePolicySummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Organizations::ResourcePolicySummary object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Id => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Organizations::ResourcePolicySummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

A structure that contains resource policy ID and Amazon Resource Name
(ARN).

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the resource policy.


=head2 Id => Str

The unique identifier (ID) of the resource policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

