# Generated by default/object.tt
package Paws::Connect::AuthenticationProfileSummary;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has IsDefault => (is => 'ro', isa => 'Bool');
  has LastModifiedRegion => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::AuthenticationProfileSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::AuthenticationProfileSummary object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::AuthenticationProfileSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

This API is in preview release for Amazon Connect and is subject to
change. To request access to this API, contact Amazon Web
ServicesSupport.

A summary of a given authentication profile.

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the authentication profile summary.


=head2 Id => Str

The unique identifier of the authentication profile.


=head2 IsDefault => Bool

Shows whether the authentication profile is the default authentication
profile for the Amazon Connect instance. The default authentication
profile applies to all agents in an Amazon Connect instance, unless
overridden by another authentication profile.


=head2 LastModifiedRegion => Str

The Amazon Web Services Region when the authentication profile summary
was last modified.


=head2 LastModifiedTime => Str

The timestamp when the authentication profile summary was last
modified.


=head2 Name => Str

The name of the authentication profile summary.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

