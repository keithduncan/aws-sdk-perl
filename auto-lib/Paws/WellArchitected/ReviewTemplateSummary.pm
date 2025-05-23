# Generated by default/object.tt
package Paws::WellArchitected::ReviewTemplateSummary;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Lenses => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Owner => (is => 'ro', isa => 'Str');
  has TemplateArn => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');
  has UpdatedAt => (is => 'ro', isa => 'Str');
  has UpdateStatus => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::ReviewTemplateSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WellArchitected::ReviewTemplateSummary object:

  $service_obj->Method(Att1 => { Description => $value, ..., UpdateStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WellArchitected::ReviewTemplateSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

Summary of a review template.

=head1 ATTRIBUTES


=head2 Description => Str

Description of the review template.


=head2 Lenses => ArrayRef[Str|Undef]

Lenses associated with the review template.


=head2 Owner => Str




=head2 TemplateArn => Str

The review template ARN.


=head2 TemplateName => Str

The name of the review template.


=head2 UpdatedAt => Str




=head2 UpdateStatus => Str

The latest status of a review template.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WellArchitected>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

