# Generated by default/object.tt
package Paws::Proton::EnvironmentTemplateSummary;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest'], required => 1);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest'], required => 1);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has DisplayName => (is => 'ro', isa => 'Str', request_name => 'displayName', traits => ['NameInRequest']);
  has LastModifiedAt => (is => 'ro', isa => 'Str', request_name => 'lastModifiedAt', traits => ['NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has Provisioning => (is => 'ro', isa => 'Str', request_name => 'provisioning', traits => ['NameInRequest']);
  has RecommendedVersion => (is => 'ro', isa => 'Str', request_name => 'recommendedVersion', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::EnvironmentTemplateSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Proton::EnvironmentTemplateSummary object:

  $service_obj->Method(Att1 => { Arn => $value, ..., RecommendedVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Proton::EnvironmentTemplateSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

The environment template data.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the environment template.


=head2 B<REQUIRED> CreatedAt => Str

The time when the environment template was created.


=head2 Description => Str

A description of the environment template.


=head2 DisplayName => Str

The name of the environment template as displayed in the developer
interface.


=head2 B<REQUIRED> LastModifiedAt => Str

The time when the environment template was last modified.


=head2 B<REQUIRED> Name => Str

The name of the environment template.


=head2 Provisioning => Str

When included, indicates that the environment template is for customer
provisioned and managed infrastructure.


=head2 RecommendedVersion => Str

The recommended version of the environment template.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

