# Generated by default/object.tt
package Paws::ApplicationMigration::SsmParameterStoreParameter;
  use Moose;
  has ParameterName => (is => 'ro', isa => 'Str', request_name => 'parameterName', traits => ['NameInRequest'], required => 1);
  has ParameterType => (is => 'ro', isa => 'Str', request_name => 'parameterType', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::SsmParameterStoreParameter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApplicationMigration::SsmParameterStoreParameter object:

  $service_obj->Method(Att1 => { ParameterName => $value, ..., ParameterType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApplicationMigration::SsmParameterStoreParameter object:

  $result = $service_obj->Method(...);
  $result->Att1->ParameterName

=head1 DESCRIPTION

AWS Systems Manager Parameter Store parameter.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ParameterName => Str

AWS Systems Manager Parameter Store parameter name.


=head2 B<REQUIRED> ParameterType => Str

AWS Systems Manager Parameter Store parameter type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApplicationMigration>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

