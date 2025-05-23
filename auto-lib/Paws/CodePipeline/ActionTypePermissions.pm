# Generated by default/object.tt
package Paws::CodePipeline::ActionTypePermissions;
  use Moose;
  has AllowedAccounts => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'allowedAccounts', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ActionTypePermissions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ActionTypePermissions object:

  $service_obj->Method(Att1 => { AllowedAccounts => $value, ..., AllowedAccounts => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ActionTypePermissions object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowedAccounts

=head1 DESCRIPTION

Details identifying the users with permissions to use the action type.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AllowedAccounts => ArrayRef[Str|Undef]

A list of Amazon Web Services account IDs with access to use the action
type in their pipelines.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

