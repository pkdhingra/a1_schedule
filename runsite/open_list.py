import webbrowser
import time
import os
import sys

def open_webpages_from_file(filename, timeout=2):
  """Opens a list of webpages from a file in the default web browser.

  Args:
    filename: The name of the file containing the list of webpages.
  """
  with open(filename, 'r') as file:
    for line in file:
      url = line.strip()
      webbrowser.open(url)

      time.sleep(timeout)

# Example usage
if len(sys.argv) != 2:
  webpages_file = 'c:\\e\\a3_input\\valentineday.mobi\\input\\sitemap2.txt'
else:
  webpages_file = sys.argv[1]

  
open_webpages_from_file(webpages_file,5)
