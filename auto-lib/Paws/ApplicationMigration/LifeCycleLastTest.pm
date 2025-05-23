# Generated by default/object.tt
package Paws::ApplicationMigration::LifeCycleLastTest;
  use Moose;
  has Finalized => (is => 'ro', isa => 'Paws::ApplicationMigration::LifeCycleLastTestFinalized', request_name => 'finalized', traits => ['NameInRequest']);
  has Initiated => (is => 'ro', isa => 'Paws::ApplicationMigration::LifeCycleLastTestInitiated', request_name => 'initiated', traits => ['NameInRequest']);
  has Reverted => (is => 'ro', isa => 'Paws::ApplicationMigration::LifeCycleLastTestReverted', request_name => 'reverted', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::LifeCycleLastTest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApplicationMigration::LifeCycleLastTest object:

  $service_obj->Method(Att1 => { Finalized => $value, ..., Reverted => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApplicationMigration::LifeCycleLastTest object:

  $result = $service_obj->Method(...);
  $result->Att1->Finalized

=head1 DESCRIPTION

Lifecycle last Test.

=head1 ATTRIBUTES


=head2 Finalized => L<Paws::ApplicationMigration::LifeCycleLastTestFinalized>

Lifecycle last Test finalized.


=head2 Initiated => L<Paws::ApplicationMigration::LifeCycleLastTestInitiated>

Lifecycle last Test initiated.


=head2 Reverted => L<Paws::ApplicationMigration::LifeCycleLastTestReverted>

Lifecycle last Test reverted.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApplicationMigration>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

