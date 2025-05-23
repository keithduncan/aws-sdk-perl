# Generated by default/object.tt
package Paws::SageMaker::LineageGroupSummary;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has LineageGroupArn => (is => 'ro', isa => 'Str');
  has LineageGroupName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::LineageGroupSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::LineageGroupSummary object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., LineageGroupName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::LineageGroupSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Lists a summary of the properties of a lineage group. A lineage group
provides a group of shareable lineage entity resources.

=head1 ATTRIBUTES


=head2 CreationTime => Str

The creation time of the lineage group summary.


=head2 DisplayName => Str

The display name of the lineage group summary.


=head2 LastModifiedTime => Str

The last modified time of the lineage group summary.


=head2 LineageGroupArn => Str

The Amazon Resource Name (ARN) of the lineage group resource.


=head2 LineageGroupName => Str

The name or Amazon Resource Name (ARN) of the lineage group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

