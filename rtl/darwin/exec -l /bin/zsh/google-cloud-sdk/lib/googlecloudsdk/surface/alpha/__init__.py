# Copyright 2013 Google Inc. All Rights Reserved.

"""Auth for the Google Cloud SDK.
"""

from googlecloudsdk.calliope import base


@base.ReleaseTracks(base.ReleaseTrack.ALPHA)
class Alpha(base.Group):
  """Alpha versions of gcloud commands."""
