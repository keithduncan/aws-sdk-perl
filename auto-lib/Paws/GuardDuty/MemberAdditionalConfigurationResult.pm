# Generated by default/object.tt
package Paws::GuardDuty::MemberAdditionalConfigurationResult;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has UpdatedAt => (is => 'ro', isa => 'Str', request_name => 'updatedAt', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::MemberAdditionalConfigurationResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::MemberAdditionalConfigurationResult object:

  $service_obj->Method(Att1 => { Name => $value, ..., UpdatedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::MemberAdditionalConfigurationResult object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Information about the additional configuration for the member account.

=head1 ATTRIBUTES


=head2 Name => Str

Indicates the name of the additional configuration that is set for the
member account.


=head2 Status => Str

Indicates the status of the additional configuration that is set for
the member account.


=head2 UpdatedAt => Str

The timestamp at which the additional configuration was set for the
member account. This is in UTC format.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

