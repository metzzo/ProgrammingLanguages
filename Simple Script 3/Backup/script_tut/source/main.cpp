// main.cpp
// Entrypoint des Programmes

// Includes für filestreams
#include <fstream>
// scanner-include
#include "script_scanner.h"
// parser-include
#include "script_parser.h"

/** Entrypoint
	@param argc Nummer der Argumente
	@param argv Argument-Array
	@return errorcode
*/
int main(int argc,char argv[])
{
	// stream erstellen und öffnen
	std::ifstream inputStream;
	inputStream.open("script.txt");

	
	// wenn der stream offen ist, das script
	// parsen
	if(inputStream.is_open ())
	{

		// Instanz des Parsers erstellen
		script_tut::scriptParser ourParser (&inputStream);

		cout << "Begin to parse... " << endl;
		// anfangen zu parsen
		ourParser.file();
		cout << "Parsing done." << endl;
	}

	return 0;
}