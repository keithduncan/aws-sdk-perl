# Generated by default/object.tt
package Paws::OpenSearchServerless::SecurityConfigSummary;
  use Moose;
  has ConfigVersion => (is => 'ro', isa => 'Str', request_name => 'configVersion', traits => ['NameInRequest']);
  has CreatedDate => (is => 'ro', isa => 'Int', request_name => 'createdDate', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has LastModifiedDate => (is => 'ro', isa => 'Int', request_name => 'lastModifiedDate', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::SecurityConfigSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpenSearchServerless::SecurityConfigSummary object:

  $service_obj->Method(Att1 => { ConfigVersion => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpenSearchServerless::SecurityConfigSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->ConfigVersion

=head1 DESCRIPTION

A summary of a security configuration for OpenSearch Serverless.

=head1 ATTRIBUTES


=head2 ConfigVersion => Str

The version of the security configuration.


=head2 CreatedDate => Int

The Epoch time when the security configuration was created.


=head2 Description => Str

The description of the security configuration.


=head2 Id => Str

The unique identifier of the security configuration.


=head2 LastModifiedDate => Int

The timestamp of when the configuration was last modified.


=head2 Type => Str

The type of security configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpenSearchServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

