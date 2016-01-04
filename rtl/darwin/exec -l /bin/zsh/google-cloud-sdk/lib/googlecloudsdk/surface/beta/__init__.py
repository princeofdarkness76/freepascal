# Copyright 2013 Google Inc. All Rights Reserved.

"""Auth for the Google Cloud SDK.
"""

from googlecloudsdk.calliope import base


@base.ReleaseTracks(base.ReleaseTrack.BETA)
class Beta(base.Group):
  """Beta versions of gcloud commands."""
