(****************************************************************************
USQX_ERRORS.PAS

C/C++ version Copyright (c) 1999 - 2002
Pascal version Copyright (c) 2002
Rainer Nausedat
Bahnhofstrasse 32
26316 Varel / Germany

All rights reserved.

USQX_ERRORS.PAS is part of the SQX SDK

---------------------------------------------------------------------------

05/11/2002 rewrote code													R.N.

****************************************************************************)
unit uSQX_Errors;

interface

const SQX_EC_OK						  			= 0;		//- no error
const SQX_EC_ARCHIVE_OK_RDATA_NOT				= 1;		//- archive seems to be ok, but not the recovery data

const SQX_EC_FILE_NOT_FOUND						= 2;		//- file not found
const SQX_EC_PATH_NOT_FOUND						= 3;		//- path not found
const SQX_EC_TOO_MANY_FILES						= 4;		//- too many open files
const SQX_EC_ACCESS_DENIED						= 5;		//- file access denied
const SQX_EC_OUT_OF_MEMORY						= 8;		//- insufficient memory
const SQX_EC_DISK_FULL							= 101;		//- disk is full

const SQX_EC_WRITE_PROTECTED					= 150;		//- disk is write-protected
const SQX_EC_OUT_OF_PAPER						= 159;		//- printer is out of paper

const SQX_EC_INVALID_DIC_SIZE					= 200;		//- invalid dictionary size

const SQX_EC_USER_ABORT							= 2926;		//- user aborted action
const SQX_EC_CANT_ACCESS_TEMP_DIR				= 8902;		//- cannot acces temp dir
const SQX_EC_TEMP_DIR_FULL						= 8903;		//- temp dir ( disk ) is full
const SQX_EC_CANT_CREATE_ARC_DIR				= 8904;		//- can't create directory in arc, directory exists already
const SQX_EC_INVALID_DIR_NAME					= 8906;		//- can't create directory in arc, the directory name contains invalid charaters
const SQX_EC_INVALID_FILENAME					= 8907;		//- can't create file in arc, the file name contains invalid charaters
const SQX_EC_CANT_COPY_SOURCE_TO_SOURCE			= 8908;		//- can't copy an archive to itself

const SQX_EC_EQUAL_PASSWORDS					= 9000;		//- both passwords for the file and header encryption are equal. due to security reasons they are rejected and this error is generated
const SQX_EC_REQUIRES_ENCRYPTION				= 9001;		//- header encryption requires at least standard encryption enabled
const SQX_EC_MISSING_HEADER_PASSWORD			= 9002;		//- the password to encrypt the headers is missing
const SQX_EC_MISSING_SQX_AV_KEY					= 9004;		//- the private key to create SQX AV data is missing
const SQX_EC_INVALID_AV_KEY						= 9006;		//- the avkeyfile is invalid
const SQX_EC_AV_KEY_VERSION						= 9007;		//- this SQ version cannot use the avkeyfile, please load the latest update
const SQX_EC_AV_DATA_VERSION					= 9008;		//- this SQ version cannot process the avdata, please load the latest update
const SQX_EC_BROKEN_AV_RECORD					= 9009;		//- this archive contains avdata, but the AV data does not match the archive. the archive were altered

const SQX_EC_WRONG_ARCHIVER_VERSION				= 9500;		//- this version of the archiver cannot process all data
const SQX_EC_ARCHIVE_VERSION_TOO_HIGH			= 9501;		//- archives with this version number can only be extracted

const SQX_EC_EXT_RDATA_DOES_NOT_MATCH			= 9800;		//- external data recovery records do not match for a certain archive file

const SQX_EC_TOO_MANY_BROKEN_FBLOCKS			= 9896;		//- to many file blocks are damaged, we cannot repair this archive file
const SQX_EC_DAMAGED_RDATA						= 9897;		//- recovery data is damaged
const SQX_EC_NEW_RDATA_VER						= 9898;		//- can't undamage archive, need a higher archiver version
const SQX_EC_RDATA_DOES_NOT_MATCH				= 9899;		//- data recovery records do not match for a certain archive file
const SQX_EC_CANT_FIND_RDATA					= 9900;		//- can't find data recovery records

const SQX_EC_NO_MATCHING_FILES					= 9906;		//- no matching files in request ( FML )

const SQX_EC_VOLUME_LIMIT_REACHED				= 9948;		//- cannot create more volumes (999)
const SQX_EC_CANT_ADD_TO_MV_ARC					= 9949;		//- cannot add files to a multi volume archive
const SQX_EC_CANT_DELETE_FROM_MV_ARC			= 9950;		//- cannot delete files from a multi volume archive
const SQX_EC_NEED_FIRST_VOLUME					= 9951;		//- archive is part of a multivolume archive but is not the first volume
const SQX_EC_MISSING_VOLUME						= 9952;		//- archiver is missing a volume

const SQX_EC_ARCHIVE_LOCK						= 9954;		//- Cant modify locked archive
const SQX_EC_COMMENT_BIGGER_4K					= 9957;		//- Cant add comment bigger than 4K
const SQX_EC_CANT_UPDATE_ESAWP					= 9959;		//- Cant update Encrypted Solid Archive With Password
const SQX_EC_UNKNOWN_METHOD						= 9960;		//- unknown compression method
const SQX_EC_FILE_ENCRYPTED						= 9961;		//- cannot extract--file is encrypted
const SQX_EC_BAD_FILE_CRC						= 9962;		//- bad CRC--file is probably corrupted
const SQX_EC_CANNOT_CREATE						= 9963;		//- unable to create output file
const SQX_EC_BAD_FILE_FORMAT					= 9964;		//- bad archive file format
const SQX_EC_EMPTY_FILE_LIST					= 9967;		//- file mask list is empty
const SQX_EC_NOT_A_SQX_FILE						= 9977;		//- not an SQX file

const SQX_EC_FUNKTION_NOT_SUPPORTED				= 32769;	//- function is not supported at all
const SQX_EC_FUNC_NOT_SUPPORTED_BY_ARCHIVE		= 32770;	//- function is not supported for this archive type
const SQX_EC_SFX_STUB_NOT_INSTALLED				= 32771;	//- the selected sfx stub was not installed


implementation

end.
