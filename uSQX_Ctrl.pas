(****************************************************************************
USQX_CTRL.PAS  1.00

Based on RARCDEFS.H

C/C++ version Copyright (c) 1999 - 2002
Pascal version Copyright (c) 2002
Rainer Nausedat
Bahnhofstrasse 32
26316 Varel / Germany

All rights reserved.

USQX_CTRL.PAS is a part of the SQX SDK

---------------------------------------------------------------------------

05/11/2002 rewrote code													R.N.

****************************************************************************)

unit uSQX_Ctrl;

interface
uses Windows,Sysutils;

(********************* variable types used by SQX *********************)
type UBYTE 						= BYTE;			//- unsigned char,	1 byte
type INT16 						= Smallint;		//- signed int,		2 bytes
type INT32						= Longint;		//- signed int,		4 bytes
type UWORD16 					= Word;			//- unsigned,		2 bytes
type UWORD32					= Longword;		//- unsigned,		4 bytes
type SLONG32					= Longint;		//- signed long,	4 bytes
type SLONG64					= Int64;		//- signed long,	8 bytes

(********************* predefined volume sizes for mv archives *********************)
const SQX_SIZE_VOL_DD360		= 362496;
const SQX_SIZE_VOL_DD720		= 730112;
const SQX_SIZE_VOL_HD1200		= 1213952;
const SQX_SIZE_VOL_HD1440		= 1457664;
const SQX_SIZE_VOL_USER_2MB		= 2097152;
const SQX_SIZE_VOL_USER_5MB		= 5242880;
const SQX_SIZE_VOL_USER_10MB	= 10485760;
const SQX_SIZE_VOL_USER_30MB	= 31457280;
const SQX_SIZE_VOL_ZIPM_100MB	= 100431872;
const SQX_SIZE_VOL_LSM_120MB	= 125959144;
const SQX_SIZE_VOL_ZIPM_250MB	= 250331136;
const SQX_SIZE_VOL_CDR_650MB	= 671088640;
const SQX_SIZE_VOL_CDR_700MB	= 723517440;

const SQX_VOL_DD360				= $00000001;	//- 362496 bytes
const SQX_VOL_DD720				= $00000002;	//- 730112 bytes
const SQX_VOL_HD1200			= $00000003;	//- 1213952 bytes
const SQX_VOL_HD1440			= $00000004;	//- 1457664 bytes
const SQX_VOL_USER_2MB			= $00000005;	//- 2097152 bytes
const SQX_VOL_USER_5MB			= $00000006;	//- 5242880 bytes
const SQX_VOL_USER_10MB			= $00000007;	//- 10485760 bytes
const SQX_VOL_USER_30MB			= $00000008;	//- 31457280 bytes
const SQX_VOL_ZIPM_100MB		= $00000009;	//- 100431872 bytes
const SQX_VOL_LSM_120MB			= $0000000A;	//- 125959144 bytes
const SQX_VOL_ZIPM_250MB		= $0000000B;	//- 250331136 bytes
const SQX_VOL_CDR_650MB			= $0000000C;	//- 671088640 bytes -> 640 MB !! (2.wahl)
const SQX_VOL_CDR_700MB			= $0000000D;	//- 723517440 bytes -> 690 MB !! (2.wahl)

const MIN_SFX_VOL_SIZE			= 133120;		//- min. volume size if archive is a sfx mv archive
const MIN_VOL_SIZE				= 20480;		//- min. volume size if archive is a mv archive

(*********************** flags and defines for archive headers etc ***********************)
const SQX_MAIN_HEAD_ID			= $52;	//- BLOCK_TYPE = 0x52	archive main header
const SQX_FILE_HEAD_ID			= $44;	//- BLOCK_TYPE = 0x44   archive file block
const SQX_DIR_HEAD_ID			= $56;	//- BLOCK_TYPE = 0x56   archive directory block
const SQX_END_ARC_HEAD_ID		= $53;	//- BLOCK_TYPE = 0x53   archive 'end of archive' block
const SQX_COMMENT_HEAD_ID		= $43;	//- BLOCK_TYPE = 0x43   archive comment block
const SQX_RDATA_HEAD_ID			= $58;	//- BLOCK_TYPE = 0x58   archive data recovery record
const SQX_AV_DATA_HEAD_ID		= $41;	//- BLOCK_TYPE = 0x41   archive authenticity information
const SQX_EXTERNAL_HEAD_ID		= $45;	//- BLOCK_TYPE = 0x45	archive external block (reserved)
const SQX_INTERNAL_HEAD_ID		= $49;	//- BLOCK_TYPE = 0x49	archive internal block (reserved)
const SQX_PUBLIC_ENC_HEAD_ID	= $50;	//- BLOCK_TYPE = 0x50	archive internal block (reserved)

const SQX_ENC_HEADS_FLAG		= $0002;	//- if set, the headers of the archive file block are encrypted
const SQX_SOLID_ARC_FLAG		= $0004;	//- if set, the archive is a solid archive
const SQX_MV_ARC_FLAG			= $0008;	//- if set, the archive is a multi volume archive
const SQX_LV_ARC_FLAG			= $0010;	//- if set, the archive is the last volume of a a multi volume archive
const SQX_ACOMMENT_FLAG			= $0020;	//- if set, the archive has a main comment
const SQX_EXT_RDATA_FLAG		= $0040;	//- if set, external recovery data was created for this archive

const SQX_LARGE_BLOCK_FLAG		= $0001;	//- if set, usHeadSize is 4 bytes instead of 2 bytes
const SQX_ENC_FILE_FLAG			= $0002;	//- if set, the archive file is encrypted (rijndael 128bit)
const SQX_SOLID_FILE_FLAG		= $0004;	//- solid flag, if set, statistics and data from previous files were used on compressing
const SQX_PREV_VOL_FLAG			= $0008;	//- if set, the archive file is continued from previous volume
const SQX_NEXT_VOL_FLAG			= $0010;	//- if set, the archive file is continued from previous volume
const SQX_FCOMMENT_FLAG			= $0020;	//- if set, the archive file has a comment
const SQX_ASCII_FLAG			= $0040;	//- if set, the file name was converted to the ASCII charset
const SQX_FILE64_FLAG			= $0080;	//- if set, either the archive file, the orig. file or both are larger than 4GB
const SQX_AV_DATA_FLAG			= $2000;	//- if set, the archive contains AV data
const SQX_NEXT_BLOCK_FLAG		= $8000;	//- if set, another block or subblock follows

const SQX_FILENAME_FLAG_ANSI	= $0;		//- file names are stored in ANSI
const SQX_FILENAME_FLAG_ASCII	= $1;		//- file names are stored in ASCII
const SQX_FILENAME_FLAG_UNICODE	= $2;		//- file names are stored in UNICODE

const SQX_EXTRA_COMPRESSOR_FLAG	= $0001;	//- if set, one or more extra compressor(s) were used
const SQX_TEXT_TYPE_FLAG		= $0001;	//- if set, the extension for plain text files were used on compressing
const SQX_EXE_TYPE_FLAG			= $0002;	//- if set, the extension for executables were used on compressing
const SQX_DELTA_TYPE_FLAG		= $0004;	//- if set, the extension for audio/mm files were used on compressing

const SQX_DIC_32K_FLAG			= $0000;
const SQX_DIC_64K_FLAG			= $0100;
const SQX_DIC_128K_FLAG			= $0200;
const SQX_DIC_256K_FLAG			= $0300;
const SQX_DIC_512K_FLAG			= $0400;
const SQX_DIC_1024K_FLAG		= $0500;
const SQX_DIC_2048K_FLAG		= $0600;
const SQX_DIC_4096K_FLAG		= $0700;
const SQX_DIC_8192K_FLAG		= $0800;

const SQX_INDEX_DIC_SIZE_32K	= 3;
const SQX_INDEX_DIC_SIZE_64K	= 4;
const SQX_INDEX_DIC_SIZE_128K	= 5;
const SQX_INDEX_DIC_SIZE_256K	= 6;
const SQX_INDEX_DIC_SIZE_512K	= 7;
const SQX_INDEX_DIC_SIZE_1024K	= 8;
const SQX_INDEX_DIC_SIZE_2048K	= 9;
const SQX_INDEX_DIC_SIZE_4096K	= 10;

const SQX_DIC_SIZE_32K			= 32;
const SQX_DIC_SIZE_64K			= 64;
const SQX_DIC_SIZE_128K			= 128;
const SQX_DIC_SIZE_256K			= 256;
const SQX_DIC_SIZE_512K			= 512;
const SQX_DIC_SIZE_1024K		= 1024;
const SQX_DIC_SIZE_2048K		= 2048;
const SQX_DIC_SIZE_4096K		= 4096;

const SQX_CRYPT_NONE			= $0000;
const SQX_CRYPT_RIJNDAEL_128BIT	= $0001;

const SQX_ARC_VER				= 11;		//- SQX archiver version number

const SQX_C1_STORED				= $00;		//- stored (no compression), compression type 1
const SQX_C1_NORMAL				= $01;		//- compressed, normal compression, compression type 1
const SQX_C1_GOOD				= $02;		//- compressed, good compression, compression type 1
const SQX_C1_HIGH				= $03;		//- compressed, high compression, compression type 1
const SQX_C1_BEST				= $04;		//- compressed, best compression, compression type 1
const SQX_C1_AUDIO				= $05;		//- true audio (wav, pcm) compression
//------------------------------------
const SQX_C1_EX_NORMAL			= $06;
const SQX_C1_EX_GOOD			= $07;
const SQX_C1_EX_HIGH			= $08;
const SQX_C1_EX_BEST			= $09;
const SQX_C1_EX_AUDIO			= $0A;
//------------------------------------
const SQX_SH1_NORMAL			= $0B;
const SQX_SH1_GOOD				= $0C;
const SQX_SH1_HIGH				= $0D;
const SQX_SH1_BEST				= $0E;
const SQX_SH1_AUDIO				= $0F;

const SQX_OS_MSDOS_OR_WIN		= 0;
const SQX_OS_MSDOS				= 1;
const SQX_OS_OS2				= 2;
const SQX_OS_WIN32				= 3;
const SQX_OS_WINNT				= 4;
const SQX_OS_UNIX				= 5;
const SQX_OS_MACOS				= 6;
const SQX_OS_WINNTALPHA			= 7;
const SQX_OS_ATARI				= 8;
const SQX_OS_VAXVMS				= 9;
const SQX_OS_AMIGA				= 10;
const SQX_OS_NEXT				= 11;
const SQX_OS_LINUX				= 12;
const SQX_OS_CPM				= 13;
const SQX_OS_ZSYS				= 14;
const SQX_OS_VMCMS				= 15;
const SQX_OS_BEOS				= 16;
const SQX_OS_UNKNOWN			= 17;
const SQX_OS_OS2_HPFS			= 18;
const SQX_OS_WIN32_FAT32		= 19;
const SQX_OS_WINNT_NTFS			= 20;
const SQX_OS_WINNTALPHA_NTFS	= 21;


(********************************* archive headers etc *********************************)
type SQX_MAIN_HEAD = packed record
	usHeadCRC		: UWORD16;				//- crc over block (cHeadType to usReserved3)
	cHeadType		: UBYTE;				//- 0x52
	usHeadFlags		: UWORD16;				//- BLOCK_FLAGS
	usHeadSize		: UWORD16;				//- block size from usHeadCRC to usReserved3
	cHeadID			: array[0..4] of UBYTE;	//- "-sqx-"
	cArcerVer		: UBYTE;				//- SQX archiver version number used to create this archive
	usArcVolNum		: UWORD16;				//- reserved, must be set to 0
	u32ArcVolId		: UWORD32;				//- reserved, must be set to 0
	usReserved1		: UWORD16;				//- reserved, must be set to 0
	usReserved2		: UWORD16;				//- reserved, must be set to 0
	usReserved3		: UWORD16;				//- reserved, must be set to 0
	//-			[comment block] it is only present if bit 5 in usHeadFlags is set
	//-			(variable)
end;

type SQX_FILE_HEAD = packed record
	usHeadCRC		: UWORD16;				//- crc over block (cHeadType to FILE_NAME)
	cHeadType		: UBYTE;				//- 0x44
	usHeadFlags		: UWORD16;				//- BLOCK_FLAGS
	usHeadSize		: UWORD16;				//- block size from usHeadCRC to FILE_NAME (including)
	cCompFlags		: UBYTE;				//- compressor flags
	usExtraFlags	: UWORD16;				//- EXTRA_FLAGS;
	cOsFilesys		: UBYTE;				//- OS/filesys the archiver were running under when compressing this file
	cArcerExVer		: UBYTE;				//- SQX archiver version number required to extract this file
	cArcMethod		: UBYTE;				//- compression/archiving method;
	u32FileCRC32	: UWORD32;				//- standard 32bit file crc
	u32FileAttr		: UWORD32;				//- file attributes
	u32FileTime		: UWORD32;				//- MSDOS file time stamp
	u32CompSize		: UWORD32;				//- compressed file size
	u32OrigSize		: UWORD32;				//- uncompressed file size
	usFileNameLen	: UWORD16;				//- length of file name
	//-			FILE_NAME		file name - array of usFileNameLen bytes
	//-			(variable)
	//-			[comment block] it is only present if bit 5 in usHeadFlags is set
	//-			(variable)
	//-			[sub block 1]
	//-			(variable)
	//-			[sub block n]
	//-			(variable)
	//-			[compressed data]
	//-			(variable)
end;

type SQX_EX_FILE_HEAD = packed record
	usHeadCRC		: UWORD16;				//- crc over block (cHeadType to FILE_NAME)
	cHeadType		: UBYTE;				//- 0x44
	usHeadFlags		: UWORD16;				//- BLOCK_FLAGS
	usHeadSize		: UWORD16;				//- block size from usHeadCRC to FILE_NAME (including)
	cCompFlags		: UBYTE;				//- compressor flags
	usExtraFlags	: UWORD16;				//- EXTRA_FLAGS;
	cOsFilesys		: UBYTE;				//- OS/filesys the archiver were running under when compressing this file
	cArcerExVer		: UBYTE;				//- SQX archiver version number required to extract this file
	cArcMethod		: UBYTE;				//- compression/archiving method;
	u32FileCRC32	: UWORD32;				//- standard 32bit file crc
	u32FileAttr		: UWORD32;				//- file attributes
	u32FileTime		: UWORD32;				//- MSDOS file time stamp
	u32CompSize		: UWORD32;				//- compressed file size
	u32OrigSize		: UWORD32;				//- uncompressed file size
	u32CompSize64	: UWORD32;				//- high dword of the compressed file size. it is only present if bit 7 in usHeadFlags is set
	u32OrigSize64	: UWORD32;				//- high dword of the compressed file size. it is only present if bit 7 in usHeadFlags is set
	usFileNameLen	: UWORD16;				//- length of file name
	//-			FILE_NAME		file name - array of usFileNameLen bytes
	//-			(variable)
	//-			[comment block] it is only present if bit 5 in usHeadFlags is set
	//-			(variable)
	//-			[sub block 1]
	//-			(variable)
	//-			[sub block n]
	//-			(variable)
	//-			[compressed data]
	//-			(variable)
end;

type SQX_DIR_HEAD = packed record
	usHeadCRC		: UWORD16;				//- crc over block (cHeadType to DIR_NAME)
	cHeadType		: UBYTE;				//- 0x56
	usHeadFlags		: UWORD16;				//- BLOCK_FLAGS
	usHeadSize		: UWORD16;				//- block size from usHeadCRC to DIR_NAME (including)
	u32DirAttr		: UWORD32;				//- directory attributes
	usDirNameLen	: UWORD16;				//- length of directory name
	//-			DIR_NAME       	directory name - array of usDirNameLen bytes
	//-			(variable)
	//-			[comment block]	it is only present if bit 5 in usHeadFlags is set
	//-			(variable)
end;

type SQX_END_ARC_HEAD = packed record
	usHeadCRC		: UWORD16;				//- crc over block (cHeadType to usHeadSize)
	cHeadType		: UBYTE;				//- 0x53
	usHeadFlags		: UWORD16;				//- BLOCK_FLAGS
	usHeadSize		: UWORD16;				//- always 7
end;

type SQX_COMMENT_HEAD = packed record
	usHeadCRC		: UWORD16;				//- crc over block (cHeadType to usOrigSize)
	cHeadType		: UBYTE;				//- 0x43
	usHeadFlags		: UWORD16;				//- BLOCK_FLAGS
	usHeadSize		: UWORD16;				//- block size from usHeadCRC to usOrigSize
	cArcerExVer		: UBYTE;				//- SQX archiver version number required to process this comment
	cArcMethod		: UBYTE;				//- compression/archiving method
	usCompSize		: UWORD16;				//- compressed comment size
	usOrigSize		: UWORD16;				//- uncompressed comment size
	//-			[comment data]
	//-			(variable)
end;

type SQX_RDATA_HEAD = packed record
	usHeadCRC		: UWORD16;				//- crc over block (cHeadType to u32RDataCRC32)
	cHeadType		: UBYTE;				//- 0x58
	usHeadFlags		: UWORD16;				//- BLOCK_FLAGS
	usHeadSize		: UWORD16;				//- block size from usHeadCRC to u32RDataCRC32
	cRDataID		: array[0..4] of UBYTE;	//- "SQ4RD"
	lRecoveryLevel	: SLONG32;				//- size of recovery data in percent
	l64FileBlocks	: SLONG64;				//- # of file blocks the compressed data was devided into
	l64RDataBlocks	: SLONG64;				//- # of recovery blocks created from the compressed data
	cArcerExVer		: UBYTE;				//- SQX archiver version number required to process this recovery data
	l64DataSize		: SLONG64;				//- total size of original data
	u32RDataCRC32	: UWORD32;				//- crc over the recovery data
	u32FileDataCRC32: UWORD32;				//- crc over the file data (only used for external recovery records)
	//-			[recovery data]
	//-			F_BLOCK_CRC_1	crc (2 bytes) over first file block
	//-			...
	//-			F_BLOCK_CRC_N	crc (2 bytes) over last file block (N = u32FileBlocks)
	//-			...
	//-			RD_BLOCK_1		first block with raw recovery data
	//-			...
	//-			RD_BLOCK_N		last block with raw recovery data (N = u32RDataBlocks)
end;

type SQX_INTERNAL_HEAD = packed record
	usHeadCRC		: UWORD16;				//- crc over block (cHeadType to usVendorID)
	cHeadType		: UBYTE;				//- 0x49
	usHeadFlags		: UWORD16;				//- BLOCK_FLAGS
	usHeadSize		: UWORD16;				//- size of block including data
	usSubID			: UWORD16;				//- unique sub id for this block type
	usVendorID		: UWORD16;				//- unique third party vendor ID
	//-			[data]
	//-			(variable)
end;

(******************************** archive sub headers etc ********************************)

type SQX_DELTA_HEAD = packed record
	cCoderType		: UBYTE;
	cCoderNum		: UBYTE;
	lStartOffset	: SLONG32;
end;

type SQX_AUDIO_HEAD = packed record
	lSkipSize		: SLONG32;
	lFileTail		: SLONG32;
	uRawDataSize	: UWORD32;
	cChannels		: UBYTE;
	cChannelBits	: UBYTE;
	uExtra			: UWORD32;
end;

(******************************** related to archiver DLL ********************************)

//- #define SQX_API	_stdcall

const SQX_MAXPATH						= 272;

const OPTION_NONE						= 0;
const OPTION_SET						= 1;

const SQX_ACTION_PROGRESS				= 0;
const SQX_ACTION_FILE_REPLACE			= 1;
const SQX_ACTION_NEED_NEXT_VOLUME		= 2;
const SQX_ACTION_NEED_CRYPT_KEY			= 3;
const SQX_ACTION_FILE_SKIP				= 4;
const SQX_ACTION_PREPARE_COMPRESS		= 5;
const SQX_ACTION_PREPARE_EXTRACT		= 6;
const SQX_ACTION_FINISH_COMPRESS		= 7;
const SQX_ACTION_FINISH_EXTRACT			= 8;
const SQX_ACTION_WRITE_EXTRACT			= 9;
const SQX_ACTION_PREPARE_DELETE			= 10;
const SQX_ACTION_FINISH_DELETE			= 11;

const SQX_COMMAND_COMPRESS			 	= 1;
const SQX_COMMAND_EXTRACT			 	= 2;
const SQX_COMMAND_DELETE			 	= 3;
const SQX_COMMAND_TEMP_ARC_COPY		 	= 4;
const SQX_COMMAND_CREATE_AV_SIG		 	= 5;
const SQX_COMMAND_TEST_AV_SIG		 	= 6;
const SQX_COMMAND_CREATE_RDATA		 	= 8;
const SQX_COMMAND_REPAIR_ARCHIVE  		= 9;
const SQX_COMMAND_STRIP_RDATA		 	= 10;
const SQX_COMMAND_TEST_ARCHIVE		 	= 11;
const SQX_COMMAND_CREATE_SFX_ARCHIVE 	= 12;
const SQX_COMMAND_ADD_COMMENT		 	= 14;
const SQX_COMMAND_LIST_FILES   			= 15;

const REASON_NEED_FILE_PASSWORD		 	= 0;
const REASON_NEED_HEADER_PASSWORD		= 1;

const SQX_SFX_OS_DOS					= 0;
const SQX_SFX_OS_WIN16					= 1;
const SQX_SFX_OS_WIN32					= 2;

const SQX_SFX_TYPE_STANDARD				= 0;
const SQX_SFX_TYPE_LISTVIEW				= 1;
const SQX_SFX_TYPE_INSTALL				= 2;

const SQX_SFX_LANG_GERMAN				= 0;
const SQX_SFX_LANG_ENGLISH				= 1;


type FILE_LIST_NODE_PTR = ^FILE_LIST_NODE;
FILE_LIST_NODE = packed record
	pNext			: FILE_LIST_NODE_PTR;
	szFileName		: PChar;
end;

type FILE_LIST  = packed record
	uFileCount		: UWORD32;
	pHead			: FILE_LIST_NODE_PTR;
	pTail			: FILE_LIST_NODE_PTR;
end;

type ARC_LIST_NODE_PTR = ^ARC_LIST_NODE;
ARC_LIST_NODE  = packed record
	pNext				: ARC_LIST_NODE_PTR;
	szFName				: array[0..SQX_MAXPATH - 1] of char;	//- filename ( 0-terminated ), public value
	lNameLen			: SLONG32;							//- len of file name, only for internal use
	l64NewSize			: SLONG64;							//- compressed size, public value
	l64OrigSize			: SLONG64;							//- original size, public value
	lFileTime			: SLONG32;							//- packed time, public value
	lAttr				: SLONG32;							//- file attributes, public value
	lVersion			: SLONG32;							//- archiver version number
	uFileCRC			: UWORD32;							//- 32bit file crc, only for internal use
	lHostOS				: SLONG32;							//- OS where the file were archived under
	lMethod				: SLONG32;							//- compression method
	lCommentLen			: SLONG32;							//- len of file comment
	pComment			: PChar;							//- pointer to file comment
	lCryptFlag			: SLONG32;							//- if it is != 0 arcmember is encrypted
	lTagged				: SLONG32;							//- this member is only for internal use if it is set to 0
	lExtendedError		: SLONG32;							//- used when repairing archives
end;

type ARC_FILE_LIST  = packed record
	uFileCount			: UWORD32;
	pHead				: ARC_LIST_NODE_PTR;
	pTail				: ARC_LIST_NODE_PTR;
end;

type FTIME_EXT  = packed record
	uLowDateTime		: UWORD32;
	uHighDateTime		: UWORD32;
end;

type ARC_AV_INFOSTRUCT  = packed record
	lAVInfoPresent		: SLONG32;								//- AV info is present if set to 1
	szAV_ID				: array[0..SQX_MAXPATH - 1] of char;	//- AV info string
	ftCreationTime		: FTIME_EXT;							//- date time this archive was created
end;

type SQX_INFO_STRUCT  = packed record
	uStructSize				: UWORD32;							//- size of this structure/record
//- ------
	lArcerMajorVersion		: SLONG32;							//- SQX major version number
	lArcerMinorVersion		: SLONG32;							//- SQX minor version number
	lDictionarySize			: SLONG32;							//- Dictionary size used on compression (in KB)
	lCommentFlags			: SLONG32;							//- 0 no comments, 1 main comment present, 2 file comment(s) present, 3 both
	lRecoveryLevel			: SLONG32;							//- 0 no RData present, 1 RData is present
	lArcEncryption			: SLONG32;							//- 0 no files in archive are encrypted, 1 some or all files are encrypted
	lSolidFlag				: SLONG32;							//- 0 archive is not solid, 1 archive is solid
	lHostOS					: SLONG32;							//- HOST OS the archiver were running under when creating this archive
	lTotalFiles				: SLONG32;							//- # of files in this archive
	l64ArcCompressedSize	: SLONG64;							//- total compressed file size
	l64ArcUncompressedSize  : SLONG64;							//- total uncompressed file size
	lRatio					: SLONG32;							//- ratio compressed-uncompressed
	ArcAvInfo				: ARC_AV_INFOSTRUCT;				//- AV info, see above
	lEncryptedHeaders		: SLONG32;							//- if set to 0, the archive directory is not encrypted. if set to 1, the archive directory is encrypted
	szMainComment			: PChar;							//- points to the archive main comment (or nil)
	uReverved1				: UWORD32;							//- reserved for future use
	uReverved2				: UWORD32;                      	//- reserved for future use
end;

type SQX_SFX_COMMAND  = packed record
	//-
	lSfxType				: SLONG32;								//- Typ (Normal - SWInstall)
	lSfxSystem				: SLONG32;								//- Target OS (DOS - WIN16 - WIN32 - WIN32 Alpha)
	lSfxVolumeSize			: SLONG32;      						//- Volume size
	lLanguage				: SLONG32;      						//- Language (Deutsch / Englisch / ...)

	//- HintDlg
	szSfxHintTitle			: array[0..255] of char;				//- Title (Caption) of hint dialog
	szSfxHintMsg        	: array[0..255] of char;				//- Message text for hint dialog
	lSfxHintBtn 			: SLONG32;								//- Button (OK - YES/NO - OK/CANCEL)

	// InfoAbout
	szSfxInfoAboutMsg		: array[0..255] of char;				//- Text for "About Dialog"

	//- Standard SFX
	szSfxFolder				: array[0..255] of char;				//- Default ExtractFolder
	szSfxCommand			: array[0..255] of char;				//- Command to execute after extracting
	lSfxOverwriteWOPrompt	: SLONG32;								//- Overwrite always (only std SFX Normal)
	lSfxAutoExtract			: SLONG32;								//- auto extract atfer starting the SFX

	// SW-Install
	szSfxInstallMsg			: array[0..255] of char;				//- Text message for install SFX
	szSfxInstallCmd         : array[0..255] of char;				//- Command to eexcute after extracting
	szSfxInstallWaitFor		: array[0..255] of char;				//- Command/Module to wait for before delting the extracted files

	//---------------------------------------------
	szAlternateStub			: array[0..255] of char;				//- use external SFX stub
end;

type SQX_COMPRESS_SETTINGS  = packed record
	uStructSize				: UWORD32;								//- size of this structure/record
//- ------
	lDictionarySizeIndex	: SLONG32; 								//- index for diotionary to use
	lMultimediaCompression	: SLONG32;								//- if set to 1 MM&audio compression is enabled
	lExeCompression			: SLONG32;								//- if set to 1 executable compression is enabled
	lMethod					: SLONG32;								//- compression method
	lSolidFlag				: SLONG32;								//- if set to 1 a solid archive is created
	lRecoveryLevel			: SLONG32;								//- percent of RData to add toarchive (0 - 5)
	lCreateExtRecoveryData	: SLONG32;								//- if set to 1 external Rdaz´ta is created (always named "filename.sqr")
//- ------
	lRetainFolders			: SLONG32;								//- include folders
//- ------
	lFileNameFlag			: SLONG32;								//- if set to 1, all file names are converted to ASCII (for DOS compatibility)
//- ------
	szFilePassWord			: array[0..SQX_MAXPATH - 1] of char;	//- password for files
	szHeaderPassWord		: array[0..SQX_MAXPATH - 1] of char;	//- password for the archive directory
//- ------
	szTempDir				: array[0..SQX_MAXPATH - 1] of char;
//- ------
	szRelPath				: array[0..SQX_MAXPATH - 1] of char;
	szInputPath				: array[0..SQX_MAXPATH - 1] of char;
//- ------
	lCreateSfxOrMVArc		: SLONG32;
	lNoMVSfx				: SLONG32;
	SfxCommand				: SQX_SFX_COMMAND;
end;

type SQX_COMPRESS_SETTINGS_PTR = ^SQX_COMPRESS_SETTINGS;

type SQX_EXTRACT_SETTINGS  = packed record
	uStructSize				: UWORD32;								//- size of this structure/record
//- ------
	lKeepBrokenFiles		: SLONG32;
//- ------
	lCreateDirs				: SLONG32;
//- ------
	szTempDir				: array[0..SQX_MAXPATH - 1] of char;
//- ------
	szRelPath				: array[0..SQX_MAXPATH - 1] of char;
	szOutPutPath			: array[0..SQX_MAXPATH - 1] of char;
end;

type SQX_REPLACE_STRUCT = packed record
	l64FileSize				: SLONG64;
	lAttr					: SLONG32;
	lFileTime				: SLONG32;
	szFileName				: array[0..SQX_MAXPATH - 1] of char;
	lpVoid					: pointer;
	lpVoid2					: pointer;
end;

type SQX_REPLACE_STRUCT_PTR = ^SQX_REPLACE_STRUCT;

type SQX_CALLBACK_STRUCT = packed record
	uStructSize				: UWORD32;								//- size of this structure/record
//- ------
	szString				: array[0..SQX_MAXPATH - 1] of char;
	szString2				: array[0..SQX_MAXPATH - 1] of char;
	l64NewSize				: SLONG64;								//- compressed size, public value
	l64OrigSize				: SLONG64;								//- original size, public value
	uCommand				: UWORD32;
	uTempCommand			: UWORD32;
	uAction					: UWORD32;
	lpVariable				: pointer;
	lpVariable2				: pointer;
end;

//- helper
type SQXCALLBACKFUNCPAS			= function(var CallBackStruct : SQX_CALLBACK_STRUCT) : SLONG32 of Object;

type SQXCALLBACKFUNC			= function(lpVoid : pointer;var CallBackStruct : SQX_CALLBACK_STRUCT) : SLONG32;stdcall;

type SQXFILELISTINITFUNC		= procedure(var FileList : FILE_LIST);stdcall;
type SQXFILELISTDONEFUNC		= procedure(var FileList : FILE_LIST);stdcall;
type SQXFILELISTADDFUNC			= function(szFileName : PChar;var FileList : FILE_LIST): SLONG32;stdcall;

type SQXARCFILELISTINITFUNC		= procedure(var ArcFileList : ARC_FILE_LIST);stdcall;
type SQXARCFILELISTDONEFUNC		= procedure(var ArcFileList : ARC_FILE_LIST);stdcall;

type SQXSETARCHIVECOMMENTFUNC	= function(szArcName : PChar;szComment : PChar;SqxCallBack : SQXCALLBACKFUNC;lpVoid : pointer): SLONG32;stdcall;
type SQXSETFILECOMMENTSFUNC		= function(szArcName : PChar;szComment : PChar;var FileList : FILE_LIST;SqxCallBack : SQXCALLBACKFUNC;lpVoid : pointer): SLONG32;stdcall;
type SQXCOMPRESSFUNC			= function(szArcName : PChar;var FileList : FILE_LIST;var CompSettings : SQX_COMPRESS_SETTINGS;SqxCallBack : SQXCALLBACKFUNC;lpVoid : pointer): SLONG32;stdcall;
type SQXEXTRACTFUNC				= function(szArcName : PChar;var FileList : FILE_LIST;var ExtractSettings : SQX_EXTRACT_SETTINGS;SqxCallBack : SQXCALLBACKFUNC;lpVoid : pointer): SLONG32;stdcall;
type SQXTESTFUNC				= function(szArcName : PChar;SqxCallBack : SQXCALLBACKFUNC;lpVoid : pointer): SLONG32;stdcall;
type SQXDELETEFUNC				= function(szArcName : PChar;var FileList : FILE_LIST;var ExtractSettings : SQX_EXTRACT_SETTINGS;SqxCallBack : SQXCALLBACKFUNC;lpVoid : pointer): SLONG32;stdcall;
type SQXLISTFUNC				= function(szArcName : PChar;var FileList : FILE_LIST;var ArFileList : ARC_FILE_LIST;var SqxArcInfo : SQX_INFO_STRUCT;var ExtractSettings : SQX_EXTRACT_SETTINGS;SqxCallBack : SQXCALLBACKFUNC;lpVoid : pointer): SLONG32;stdcall;

type SQXREPAIRFUNC				= function(szArcName : PChar;szRepairedArcName : PChar;var GoodFilesList : ARC_FILE_LIST;var BadFilesList : ARC_FILE_LIST;SqxCallBack : SQXCALLBACKFUNC;lpVoid : pointer): SLONG32;stdcall;

type SQX_ARCER_HANDLE = packed record
	hSqxDLL					: THandle;
	SqxInitFileList			: SQXFILELISTINITFUNC;
	SqxDoneFileList			: SQXFILELISTDONEFUNC;
	SqxAddFileList			: SQXFILELISTADDFUNC;
	SqxInitArcFileList		: SQXARCFILELISTINITFUNC;
	SqxDoneArcFileList		: SQXARCFILELISTDONEFUNC;
	SqxAddArchiveComment	: SQXSETARCHIVECOMMENTFUNC;
	SqxAddFileComments		: SQXSETFILECOMMENTSFUNC;
	SqxAddFiles				: SQXCOMPRESSFUNC;
	SqxExtractFiles			: SQXEXTRACTFUNC;
	SqxTestFiles			: SQXTESTFUNC;
	SqxDeleteFiles			: SQXDELETEFUNC;
	SqxListFiles			: SQXLISTFUNC;
	SqxRepairFiles			: SQXREPAIRFUNC;
end;

procedure SqxFree(var SqxArcerHandle : SQX_ARCER_HANDLE);
function SqxLoad(var SqxArcerHandle : SQX_ARCER_HANDLE;stModuleName : string) : SLONG32;
procedure SqxInitFileList(var SqxArcerHandle : SQX_ARCER_HANDLE;var FileList : FILE_LIST);
procedure SqxDoneFileList(var SqxArcerHandle : SQX_ARCER_HANDLE;var FileList : FILE_LIST);
function SqxAddFileList(var SqxArcerHandle : SQX_ARCER_HANDLE;stFileName : string;var FileList : FILE_LIST): SLONG32;
procedure SqxInitArcFileList(var SqxArcerHandle : SQX_ARCER_HANDLE;var ArcFileList : ARC_FILE_LIST);
procedure SqxDoneArcFileList(var SqxArcerHandle : SQX_ARCER_HANDLE;var ArcFileList : ARC_FILE_LIST);
function SqxAddArchiveComment(var SqxArcerHandle : SQX_ARCER_HANDLE;stArcName : string;stComment : string;SqxCallBack : SQXCALLBACKFUNC;lpVoid : pointer): SLONG32;
function SqxAddFileComments(var SqxArcerHandle : SQX_ARCER_HANDLE;stArcName : string;stComment : string;var FileList : FILE_LIST;SqxCallBack : SQXCALLBACKFUNC;lpVoid : pointer): SLONG32;
function SqxAddFiles(var SqxArcerHandle : SQX_ARCER_HANDLE;stArcName : string;var FileList : FILE_LIST;var CompSettings : SQX_COMPRESS_SETTINGS;SqxCallBack : SQXCALLBACKFUNC;lpVoid : pointer): SLONG32;
function SqxExtractFiles(var SqxArcerHandle : SQX_ARCER_HANDLE;stArcName : string;var FileList : FILE_LIST;var ExtractSettings : SQX_EXTRACT_SETTINGS;SqxCallBack : SQXCALLBACKFUNC;lpVoid : pointer): SLONG32;
function SqxTestFiles(var SqxArcerHandle : SQX_ARCER_HANDLE;stArcName : string;SqxCallBack : SQXCALLBACKFUNC;lpVoid : pointer): SLONG32;
function SqxDeleteFiles(var SqxArcerHandle : SQX_ARCER_HANDLE;stArcName : string;var FileList : FILE_LIST;var ExtractSettings : SQX_EXTRACT_SETTINGS;SqxCallBack : SQXCALLBACKFUNC;lpVoid : pointer): SLONG32;
function SqxListFiles(var SqxArcerHandle : SQX_ARCER_HANDLE;stArcName : string;var FileList : FILE_LIST;var ArcFileList : ARC_FILE_LIST;var SqxArcInfo : SQX_INFO_STRUCT;var ExtractSettings : SQX_EXTRACT_SETTINGS;SqxCallBack : SQXCALLBACKFUNC;lpVoid : pointer): SLONG32;

function SqxRepairFiles(var SqxArcerHandle : SQX_ARCER_HANDLE;stArcName : string;stRepairedArcName : string;var GoodFilesList : ARC_FILE_LIST;var BadFilesList : ARC_FILE_LIST;SqxCallBack : SQXCALLBACKFUNC;lpVoid : pointer): SLONG32;

implementation

procedure SqxFree(var SqxArcerHandle : SQX_ARCER_HANDLE);
begin
	FreeLibrary(SqxArcerHandle.hSqxDLL);
	fillchar(SqxArcerHandle,sizeof(SQX_ARCER_HANDLE),#0);
end;

function SqxLoad(var SqxArcerHandle : SQX_ARCER_HANDLE;stModuleName : string) : SLONG32;
var
stDllName	: string;
ExeName		: array[0..MAX_PATH-1] of char;
begin
	result := -1;

	fillchar(SqxArcerHandle,sizeof(SQX_ARCER_HANDLE),#0);
	if( stModuleName = '' ) then
	begin
		GetModuleFileName(hinstance,ExeName,sizeof(ExeName)-1); 	//- 09/10/2002 suggested by C.G.
		stDllName := ExtractFilePath(strpas(ExeName)) + 'Sqx.dll';
		SqxArcerHandle.hSqxDLL := LoadLibrary(PChar(stDllName));
	end else
		SqxArcerHandle.hSqxDLL := LoadLibrary(PChar(stModuleName));

	if( SqxArcerHandle.hSqxDLL = THandle(nil) ) then
		exit;

	@SqxArcerHandle.SqxInitFileList		:= GetProcAddress(SqxArcerHandle.hSqxDLL,'SqxInitFileList');
	@SqxArcerHandle.SqxDoneFileList		:= GetProcAddress(SqxArcerHandle.hSqxDLL,'SqxDoneFileList');
	@SqxArcerHandle.SqxAddFileList		:= GetProcAddress(SqxArcerHandle.hSqxDLL,'SqxAddFileList');
	@SqxArcerHandle.SqxInitArcFileList	:= GetProcAddress(SqxArcerHandle.hSqxDLL,'SqxInitArcFileList');
	@SqxArcerHandle.SqxDoneArcFileList	:= GetProcAddress(SqxArcerHandle.hSqxDLL,'SqxDoneArcFileList');
	@SqxArcerHandle.SqxAddArchiveComment:= GetProcAddress(SqxArcerHandle.hSqxDLL,'SqxAddArchiveComment');
	@SqxArcerHandle.SqxAddFileComments	:= GetProcAddress(SqxArcerHandle.hSqxDLL,'SqxAddFileComments');
	@SqxArcerHandle.SqxAddFiles			:= GetProcAddress(SqxArcerHandle.hSqxDLL,'SqxAddFiles');
	@SqxArcerHandle.SqxExtractFiles		:= GetProcAddress(SqxArcerHandle.hSqxDLL,'SqxExtractFiles');
	@SqxArcerHandle.SqxTestFiles		:= GetProcAddress(SqxArcerHandle.hSqxDLL,'SqxTestFiles');
	@SqxArcerHandle.SqxDeleteFiles		:= GetProcAddress(SqxArcerHandle.hSqxDLL,'SqxDeleteFiles');
	@SqxArcerHandle.SqxListFiles		:= GetProcAddress(SqxArcerHandle.hSqxDLL,'SqxListFiles');
	@SqxArcerHandle.SqxRepairFiles		:= GetProcAddress(SqxArcerHandle.hSqxDLL,'SqxRepairFiles');

	if( (@SqxArcerHandle.SqxInitFileList = nil) or (@SqxArcerHandle.SqxDoneFileList = nil) or (@SqxArcerHandle.SqxAddFileList = nil) or
		(@SqxArcerHandle.SqxInitArcFileList = nil) or (@SqxArcerHandle.SqxDoneArcFileList = nil) or (@SqxArcerHandle.SqxAddArchiveComment = nil) or
		(@SqxArcerHandle.SqxAddFileComments = nil) or (@SqxArcerHandle.SqxAddFiles = nil) or (@SqxArcerHandle.SqxExtractFiles = nil) or
		(@SqxArcerHandle.SqxTestFiles = nil) or (@SqxArcerHandle.SqxDeleteFiles = nil) or (@SqxArcerHandle.SqxListFiles = nil) or
		(@SqxArcerHandle.SqxRepairFiles = nil) ) then
	begin
		SqxFree(SqxArcerHandle);
		exit;
	end;

	result := 0;
end;

procedure SqxInitFileList(var SqxArcerHandle : SQX_ARCER_HANDLE;var FileList : FILE_LIST);
begin
	if( (@SqxArcerHandle <> nil) and (@SqxArcerHandle.SqxInitFileList <> nil) ) then
		SqxArcerHandle.SqxInitFileList(FileList);
end;

procedure SqxDoneFileList(var SqxArcerHandle : SQX_ARCER_HANDLE;var FileList : FILE_LIST);
begin
	if( (@SqxArcerHandle <> nil) and (@SqxArcerHandle.SqxDoneFileList <> nil) ) then
		SqxArcerHandle.SqxDoneFileList(FileList);
end;

function SqxAddFileList(var SqxArcerHandle : SQX_ARCER_HANDLE;stFileName : string;var FileList : FILE_LIST): SLONG32;
begin
	result := -1;
	if( (@SqxArcerHandle <> nil) and (@SqxArcerHandle.SqxAddFileList <> nil) ) then
		result := SqxArcerHandle.SqxAddFileList(PChar(stFileName),FileList);
end;

procedure SqxInitArcFileList(var SqxArcerHandle : SQX_ARCER_HANDLE;var ArcFileList : ARC_FILE_LIST);
begin
	if( (@SqxArcerHandle <> nil) and (@SqxArcerHandle.SqxInitArcFileList <> nil) ) then
		SqxArcerHandle.SqxInitArcFileList(ArcFileList);
end;

procedure SqxDoneArcFileList(var SqxArcerHandle : SQX_ARCER_HANDLE;var ArcFileList : ARC_FILE_LIST);
begin
	if( (@SqxArcerHandle <> nil) and (@SqxArcerHandle.SqxDoneArcFileList <> nil) ) then
		SqxArcerHandle.SqxDoneArcFileList(ArcFileList);
end;

function SqxAddArchiveComment(var SqxArcerHandle : SQX_ARCER_HANDLE;stArcName : string;stComment : string;SqxCallBack : SQXCALLBACKFUNC;lpVoid : pointer): SLONG32;
begin
	result := -1;
	if( (@SqxArcerHandle <> nil) and (@SqxArcerHandle.SqxAddArchiveComment <> nil) ) then
		result := SqxArcerHandle.SqxAddArchiveComment(PChar(stArcName),PChar(stComment),SqxCallBack,lpVoid);
end;

function SqxAddFileComments(var SqxArcerHandle : SQX_ARCER_HANDLE;stArcName : string;stComment : string;var FileList : FILE_LIST;SqxCallBack : SQXCALLBACKFUNC;lpVoid : pointer): SLONG32;
begin
	result := -1;
	if( (@SqxArcerHandle <> nil) and (@SqxArcerHandle.SqxAddFileComments <> nil) ) then
		result := SqxArcerHandle.SqxAddFileComments(PChar(stArcName),PChar(stComment),FileList,SqxCallBack,lpVoid);
end;

function SqxAddFiles(var SqxArcerHandle : SQX_ARCER_HANDLE;stArcName : string;var FileList : FILE_LIST;var CompSettings : SQX_COMPRESS_SETTINGS;SqxCallBack : SQXCALLBACKFUNC;lpVoid : pointer): SLONG32;
begin
	result := -1;
	if( (@SqxArcerHandle <> nil) and (@SqxArcerHandle.SqxAddFiles <> nil) ) then
		result := SqxArcerHandle.SqxAddFiles(PChar(stArcName),FileList,CompSettings,SqxCallBack,lpVoid);
end;

function SqxExtractFiles(var SqxArcerHandle : SQX_ARCER_HANDLE;stArcName : string;var FileList : FILE_LIST;var ExtractSettings : SQX_EXTRACT_SETTINGS;SqxCallBack : SQXCALLBACKFUNC;lpVoid : pointer): SLONG32;
begin
	result := -1;
	if( (@SqxArcerHandle <> nil) and (@SqxArcerHandle.SqxExtractFiles <> nil) ) then
		result := SqxArcerHandle.SqxExtractFiles(PChar(stArcName),FileList,ExtractSettings,SqxCallBack,lpVoid);
end;

function SqxTestFiles(var SqxArcerHandle : SQX_ARCER_HANDLE;stArcName : string;SqxCallBack : SQXCALLBACKFUNC;lpVoid : pointer): SLONG32;
begin
	result := -1;
	if( (@SqxArcerHandle <> nil) and (@SqxArcerHandle.SqxTestFiles <> nil) ) then
		result := SqxArcerHandle.SqxTestFiles(PChar(stArcName),SqxCallBack,lpVoid);
end;

function SqxDeleteFiles(var SqxArcerHandle : SQX_ARCER_HANDLE;stArcName : string;var FileList : FILE_LIST;var ExtractSettings : SQX_EXTRACT_SETTINGS;SqxCallBack : SQXCALLBACKFUNC;lpVoid : pointer): SLONG32;
begin
	result := -1;
	if( (@SqxArcerHandle <> nil) and (@SqxArcerHandle.SqxDeleteFiles <> nil) ) then
		result := SqxArcerHandle.SqxDeleteFiles(PChar(stArcName),FileList,ExtractSettings,SqxCallBack,lpVoid);
end;

function SqxListFiles(var SqxArcerHandle : SQX_ARCER_HANDLE;stArcName : string;var FileList : FILE_LIST;var ArcFileList : ARC_FILE_LIST;var SqxArcInfo : SQX_INFO_STRUCT;var ExtractSettings : SQX_EXTRACT_SETTINGS;SqxCallBack : SQXCALLBACKFUNC;lpVoid : pointer): SLONG32;
begin
	result := -1;
	if( (@SqxArcerHandle <> nil) and (@SqxArcerHandle.SqxListFiles <> nil) ) then
		result := SqxArcerHandle.SqxListFiles(PChar(stArcName),FileList,ArcFileList,SqxArcInfo,ExtractSettings,SqxCallBack,lpVoid);
end;

function SqxRepairFiles(var SqxArcerHandle : SQX_ARCER_HANDLE;stArcName : string;stRepairedArcName : string;var GoodFilesList : ARC_FILE_LIST;var BadFilesList : ARC_FILE_LIST;SqxCallBack : SQXCALLBACKFUNC;lpVoid : pointer): SLONG32;
begin
	result := -1;
	if( (@SqxArcerHandle <> nil) and (@SqxArcerHandle.SqxRepairFiles <> nil) ) then
		result := SqxArcerHandle.SqxRepairFiles(PChar(stArcName),PChar(stRepairedArcName),GoodFilesList,BadFilesList,SqxCallBack,lpVoid);
end;

end.
