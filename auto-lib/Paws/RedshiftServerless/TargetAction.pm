# Generated by default/object.tt
package Paws::RedshiftServerless::TargetAction;
  use Moose;
  has CreateSnapshot => (is => 'ro', isa => 'Paws::RedshiftServerless::CreateSnapshotScheduleActionParameters', request_name => 'createSnapshot', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::TargetAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedshiftServerless::TargetAction object:

  $service_obj->Method(Att1 => { CreateSnapshot => $value, ..., CreateSnapshot => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedshiftServerless::TargetAction object:

  $result = $service_obj->Method(...);
  $result->Att1->CreateSnapshot

=head1 DESCRIPTION

A JSON format string of the Amazon Redshift Serverless API operation
with input parameters. The following is an example of a target action.

C<"{"CreateSnapshot": {"NamespaceName":
"sampleNamespace","SnapshotName": "sampleSnapshot", "retentionPeriod":
"1"}}">

=head1 ATTRIBUTES


=head2 CreateSnapshot => L<Paws::RedshiftServerless::CreateSnapshotScheduleActionParameters>





=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

