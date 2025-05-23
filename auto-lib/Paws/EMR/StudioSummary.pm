# Generated by default/object.tt
package Paws::EMR::StudioSummary;
  use Moose;
  has AuthMode => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has StudioId => (is => 'ro', isa => 'Str');
  has Url => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::StudioSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::StudioSummary object:

  $service_obj->Method(Att1 => { AuthMode => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::StudioSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->AuthMode

=head1 DESCRIPTION

Details for an Amazon EMR Studio, including ID, Name, VPC, and
Description. To fetch additional details such as subnets, IAM roles,
security groups, and tags for the Studio, use the DescribeStudio API.

=head1 ATTRIBUTES


=head2 AuthMode => Str

Specifies whether the Studio authenticates users using IAM or IAM
Identity Center.


=head2 CreationTime => Str

The time when the Amazon EMR Studio was created.


=head2 Description => Str

The detailed description of the Amazon EMR Studio.


=head2 Name => Str

The name of the Amazon EMR Studio.


=head2 StudioId => Str

The ID of the Amazon EMR Studio.


=head2 Url => Str

The unique access URL of the Amazon EMR Studio.


=head2 VpcId => Str

The ID of the Virtual Private Cloud (Amazon VPC) associated with the
Amazon EMR Studio.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

