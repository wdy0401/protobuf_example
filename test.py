#! /usr/bin/python

import addressbook_pb2
import sys
bookname="./book.pb"


address_book = addressbook_pb2.AddressBook()

# Read the existing address book.
try:
  f = open(bookname, "rb")
  address_book.ParseFromString(f.read())
  f.close()
except IOError:
  print( bookname + ": Could not open file.  Creating a new one.")

print(address_book)