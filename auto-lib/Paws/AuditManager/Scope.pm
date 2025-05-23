# Generated by default/object.tt
package Paws::AuditManager::Scope;
  use Moose;
  has AwsAccounts => (is => 'ro', isa => 'ArrayRef[Paws::AuditManager::AWSAccount]', request_name => 'awsAccounts', traits => ['NameInRequest']);
  has AwsServices => (is => 'ro', isa => 'ArrayRef[Paws::AuditManager::AWSService]', request_name => 'awsServices', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::Scope

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AuditManager::Scope object:

  $service_obj->Method(Att1 => { AwsAccounts => $value, ..., AwsServices => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AuditManager::Scope object:

  $result = $service_obj->Method(...);
  $result->Att1->AwsAccounts

=head1 DESCRIPTION

The wrapper that contains the Amazon Web Services accounts that are in
scope for the assessment.

You no longer need to specify which Amazon Web Services are in scope
when you create or update an assessment. Audit Manager infers the
services in scope by examining your assessment controls and their data
sources, and then mapping this information to the relevant Amazon Web
Services.

If an underlying data source changes for your assessment, we
automatically update the services scope as needed to reflect the
correct Amazon Web Services. This ensures that your assessment collects
accurate and comprehensive evidence about all of the relevant services
in your AWS environment.

=head1 ATTRIBUTES


=head2 AwsAccounts => ArrayRef[L<Paws::AuditManager::AWSAccount>]

The Amazon Web Services accounts that are included in the scope of the
assessment.


=head2 AwsServices => ArrayRef[L<Paws::AuditManager::AWSService>]

The Amazon Web Services services that are included in the scope of the
assessment.

This API parameter is no longer supported. If you use this parameter to
specify one or more Amazon Web Services, Audit Manager ignores this
input. Instead, the value for C<awsServices> will show as empty.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

