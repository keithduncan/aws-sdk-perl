# Generated by default/object.tt
package Paws::Glue::RecipeReference;
  use Moose;
  has RecipeArn => (is => 'ro', isa => 'Str', required => 1);
  has RecipeVersion => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::RecipeReference

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::RecipeReference object:

  $service_obj->Method(Att1 => { RecipeArn => $value, ..., RecipeVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::RecipeReference object:

  $result = $service_obj->Method(...);
  $result->Att1->RecipeArn

=head1 DESCRIPTION

A reference to a Glue DataBrew recipe.

=head1 ATTRIBUTES


=head2 B<REQUIRED> RecipeArn => Str

The ARN of the DataBrew recipe.


=head2 B<REQUIRED> RecipeVersion => Str

The RecipeVersion of the DataBrew recipe.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

