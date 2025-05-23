
package Paws::EC2::CancelExportTask;
  use Moose;
  has ExportTaskId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'exportTaskId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelExportTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CancelExportTask - Arguments for method CancelExportTask on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelExportTask on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CancelExportTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelExportTask.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    $ec2->CancelExportTask(
      ExportTaskId => 'MyExportVmTaskId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CancelExportTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExportTaskId => Str

The ID of the export task. This is the ID returned by the
C<CreateInstanceExportTask> and C<ExportImage> operations.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelExportTask in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

