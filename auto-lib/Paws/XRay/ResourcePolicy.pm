# Generated by default/object.tt
package Paws::XRay::ResourcePolicy;
  use Moose;
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has PolicyDocument => (is => 'ro', isa => 'Str');
  has PolicyName => (is => 'ro', isa => 'Str');
  has PolicyRevisionId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::ResourcePolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::XRay::ResourcePolicy object:

  $service_obj->Method(Att1 => { LastUpdatedTime => $value, ..., PolicyRevisionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::XRay::ResourcePolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->LastUpdatedTime

=head1 DESCRIPTION

A resource policy grants one or more Amazon Web Services services and
accounts permissions to access X-Ray. Each resource policy is
associated with a specific Amazon Web Services account.

=head1 ATTRIBUTES


=head2 LastUpdatedTime => Str

When the policy was last updated, in Unix time seconds.


=head2 PolicyDocument => Str

The resource policy document, which can be up to 5kb in size.


=head2 PolicyName => Str

The name of the resource policy. Must be unique within a specific
Amazon Web Services account.


=head2 PolicyRevisionId => Str

Returns the current policy revision id for this policy name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

