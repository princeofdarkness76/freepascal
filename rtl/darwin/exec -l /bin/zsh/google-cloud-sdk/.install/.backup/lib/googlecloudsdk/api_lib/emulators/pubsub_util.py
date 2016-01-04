# Copyright 2015 Google Inc. All Rights Reserved.
"""Utility functions for gcloud pubsub emulator."""

import os
from googlecloudsdk.api_lib.emulators import util
from googlecloudsdk.core import exceptions
from googlecloudsdk.core import execution_utils
from googlecloudsdk.core import log
from googlecloudsdk.core.util import platforms

PUBSUB = 'pubsub'
PUBSUB_TITLE = 'Google Cloud Pub/Sub emulator'


class NoPubSubError(exceptions.Error):
  pass


class InvalidArgumentError(exceptions.Error):

  def __init__(self, msg):
    super(InvalidArgumentError, self).__init__(msg)


def ToArgsList(args):
  """Converts an argparse.Namespace to a list of arg strings."""
  args_list = []
  if args.host_port:
    host = args.host_port.host
    if host is not None and host != 'localhost':
      raise InvalidArgumentError('Invalid host. Only "localhost" is supported.')
    if args.host_port.port is not None:
      args_list.append('--port=%s' % args.host_port.port)
  return args_list


def GetPubSubRoot():
  pubsub_dir = os.path.join(util.GetCloudSDKRoot(), 'platform',
                            'pubsub-emulator')
  if not os.path.isdir(pubsub_dir):
    raise NoPubSubError('No pubsub directory found.')
  return pubsub_dir


def GetDefaultDataDir():
  return util.GetDataDir('pubsub')


def BuildStartArgs(args, current_os):
  """Builds the command for starting the pubsub emulator.

  Args:
    args: (list of str) The arguments for the pubsub emulator, excluding the
      program binary.
    current_os: (platforms.OperatingSystem)

  Returns:
    A list of command arguments.
  """
  pubsub_dir = GetPubSubRoot()
  if current_os is platforms.OperatingSystem.WINDOWS:
    pubsub_executable = os.path.join(pubsub_dir, r'bin\cloud-pubsub-fake.bat')
    return execution_utils.ArgsForCMDTool(pubsub_executable, *args)

  pubsub_executable = os.path.join(pubsub_dir, 'bin/cloud-pubsub-fake')
  return execution_utils.ArgsForShellTool(pubsub_executable, *args)


def GetEnv(args):
  """Returns an environment variable mapping from an argparse.Namespace."""
  return {'PUBSUB_HOSTPORT': '%s:%s' % (args.host_port.host,
                                        args.host_port.port)}


def Start(args):
  pubsub_args = BuildStartArgs(
      ToArgsList(args), platforms.OperatingSystem.Current())
  log.status.Print('Executing: {0}'.format(' '.join(pubsub_args)))
  pubsub_process = util.Exec(pubsub_args)
  util.WriteEnvYaml(GetEnv(args), args.data_dir)
  util.PrefixOutput(pubsub_process, PUBSUB)
