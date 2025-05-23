# Generated by default/object.tt
package Paws::AppConfig::ExtensionSummary;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has VersionNumber => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::ExtensionSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppConfig::ExtensionSummary object:

  $service_obj->Method(Att1 => { Arn => $value, ..., VersionNumber => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppConfig::ExtensionSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Information about an extension. Call C<GetExtension> to get more
information about an extension.

=head1 ATTRIBUTES


=head2 Arn => Str

The system-generated Amazon Resource Name (ARN) for the extension.


=head2 Description => Str

Information about the extension.


=head2 Id => Str

The system-generated ID of the extension.


=head2 Name => Str

The extension name.


=head2 VersionNumber => Int

The extension version number.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

