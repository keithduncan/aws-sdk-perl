# Generated by default/object.tt
package Paws::CodeArtifact::DomainSummary;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has CreatedTime => (is => 'ro', isa => 'Str', request_name => 'createdTime', traits => ['NameInRequest']);
  has EncryptionKey => (is => 'ro', isa => 'Str', request_name => 'encryptionKey', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Owner => (is => 'ro', isa => 'Str', request_name => 'owner', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::DomainSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeArtifact::DomainSummary object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeArtifact::DomainSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Information about a domain, including its name, Amazon Resource Name
(ARN), and status. The ListDomains
(https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListDomains.html)
operation returns a list of C<DomainSummary> objects.

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the domain.


=head2 CreatedTime => Str

A timestamp that contains the date and time the domain was created.


=head2 EncryptionKey => Str

The key used to encrypt the domain.


=head2 Name => Str

The name of the domain.


=head2 Owner => Str

The 12-digit account number of the Amazon Web Services account that
owns the domain. It does not include dashes or spaces.


=head2 Status => Str

A string that contains the status of the domain.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeArtifact>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

