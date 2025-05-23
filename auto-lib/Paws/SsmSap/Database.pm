# Generated by default/object.tt
package Paws::SsmSap::Database;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str');
  has Arn => (is => 'ro', isa => 'Str');
  has ComponentId => (is => 'ro', isa => 'Str');
  has ConnectedComponentArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Credentials => (is => 'ro', isa => 'ArrayRef[Paws::SsmSap::ApplicationCredential]');
  has DatabaseId => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str');
  has DatabaseType => (is => 'ro', isa => 'Str');
  has LastUpdated => (is => 'ro', isa => 'Str');
  has PrimaryHost => (is => 'ro', isa => 'Str');
  has SQLPort => (is => 'ro', isa => 'Int');
  has Status => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SsmSap::Database

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SsmSap::Database object:

  $service_obj->Method(Att1 => { ApplicationId => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SsmSap::Database object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationId

=head1 DESCRIPTION

The SAP HANA database of the application registered with AWS Systems
Manager for SAP.

=head1 ATTRIBUTES


=head2 ApplicationId => Str

The ID of the application.


=head2 Arn => Str

The Amazon Resource Name (ARN) of the database.


=head2 ComponentId => Str

The ID of the component.


=head2 ConnectedComponentArns => ArrayRef[Str|Undef]

The Amazon Resource Names of the connected AWS Systems Manager for SAP
components.


=head2 Credentials => ArrayRef[L<Paws::SsmSap::ApplicationCredential>]

The credentials of the database.


=head2 DatabaseId => Str

The ID of the SAP HANA database.


=head2 DatabaseName => Str

The name of the database.


=head2 DatabaseType => Str

The type of the database.


=head2 LastUpdated => Str

The time at which the database was last updated.


=head2 PrimaryHost => Str

The primary host of the database.


=head2 SQLPort => Int

The SQL port of the database.


=head2 Status => Str

The status of the database.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SsmSap>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

