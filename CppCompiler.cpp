//A rough brainfuck to CPP Compiler

//This is a rough c plus plus compiler.
//It does not have any error checking,
//It just does whatever you say.
//There is no overflow for if the pointer gets too big or too small.
//But it's simple to use.
//Compile this and run it to convert brainfuck to CPP

//MAIN NEEDS
#include <stdio.h>
#include <iostream>
#include <string>
#include <fstream>

using namespace std;

int x;

int main()
{
    Retry:
    //DECLARE VARIABLES

    x++;
    ++x;

    string BFCode,
            YN,
            EnterToClose;

    //GET BRAINFUCK INPUT

    cout << "Please type in some brainfuck to convert to an EXE" << endl <<
            "Remember - It has to have no white spaces, only brainfuck charecters." << endl;

    cin >> BFCode;

    cout << "The brainfuck entered: " << BFCode << endl <<
            "Is this correct? [Y/N]" << endl;

    cin >> YN;

    if(YN == "Y")
    {

        cout << "Opening 'Files'" << endl;

        ofstream log;
        ofstream cppfile;

        log.open("log.txt");
        cppfile.open("bf.cpp");

        log << "Writing Compiler Code to CPP File" << endl;
        cout << "Writing Compiler Code to CPP File..." << endl;

        cppfile << "//This was made by the BFCompiler by SirJosh3917" << endl << endl <<
                   "#include <iostream> //We have to use these" << endl <<
                   "#include <stdio.h>" << endl <<
                   "#include <string>" << endl << endl <<
                   "using namespace std; //So we don't have to do std::cout" << endl << endl <<
                   "class BFCompilerBySirJosh3917" << endl <<
                   "{" << endl <<
                   "    public:" << endl <<
                   "        char Cells[30000];" << endl <<
                   "        char *Pointer;" << endl <<
                   "        const char *Progress;" << endl << endl <<
                   "        BFCompilerBySirJosh3917(const char BFCode[])" << endl <<
                   "        {" << endl <<
                   "            Pointer = Cells;" << endl <<
                   "            Progress = BFCode;" << endl <<
                   "        }" << endl << endl <<
                   "        " << endl <<
                   "        void ExecuteCodeBFCompilerBySirJosh3917()" << endl <<
                   "        {" << endl <<
                   "            int BracketLevel = 0;" << endl <<
                   "            while(*Progress)" << endl <<
                   "            {" << endl <<
                   "                switch(*Progress)" << endl <<
                   "                {" << endl <<
                   "                    case '>':" << endl <<
                   "                        Pointer++;" << endl <<
                   "                        break;" << endl <<
                   "                    case '<':" << endl <<
                   "                        Pointer--;" << endl <<
                   "                        break;" << endl <<
                   "                    case '+':" << endl <<
                   "                        (*Pointer)++;" << endl <<
                   "                        break;" << endl <<
                   "                    case '-':" << endl <<
                   "                        (*Pointer)--;" << endl <<
                   "                        break;" << endl <<
                   "                    case '.':" << endl <<
                   "                        cout << *Pointer;" << endl <<
                   "                        break;" << endl <<
                   "                    case ',':" << endl <<
                   "                        cin >> *Pointer;" << endl <<
                   "                        break;" << endl <<
                   "                    case '[':" << endl <<
                   "                        BracketLevel = 1;" << endl <<
                   "                        if ( *Pointer == '\\0' )" << endl <<
                   "                        {" << endl <<
                   "                            do" << endl <<
                   "                            {" << endl <<
                   "                                Progress++; " << endl <<
                   "                                if ( *Progress == '[' ) BracketLevel++;" << endl <<
                   "                                else if ( *Progress == ']' ) BracketLevel--;" << endl <<
                   "                            } while ( BracketLevel != 0 );" << endl <<
                   "                        }" << endl <<
                   "                        break;" << endl <<
                   "                    case ']':" << endl <<
                   "                        BracketLevel = 1;" << endl <<
                   "                        do" << endl <<
                   "                        {" << endl <<
                   "                            if ( *Progress == '[' ) BracketLevel++;" << endl <<
                   "                            else if ( *Progress == ']' ) BracketLevel--;" << endl <<
                   "                            Progress--;" << endl <<
                   "                        } while ( BracketLevel != 0 );" << endl <<
                   "                        break;" << endl <<
                   "                }" << endl <<
                   "                Progress++;" << endl <<
                   "            }" << endl <<
                   "        }" << endl <<
                   "};" << endl << endl;

        log << "Compiler Code written to file" << endl;
        log << "Writing main code to file" << endl;

        cppfile << "int main()" << endl <<
                   "{" << endl <<

                   "    string str = \"" << BFCode << "\";" << endl <<
                   "    char *Code = new char[str.length() + 1];" << endl <<
                   "    Code = &str[0u];" << endl << endl <<
                   "    BFCompilerBySirJosh3917 Interpet = BFCompilerBySirJosh3917(Code);" << endl <<
                   "    Interpet.ExecuteCodeBFCompilerBySirJosh3917();" << endl << endl <<
                   "    return 0;" << endl <<
                   "}" << endl;

        log << "Code written. End of log" << endl;
        log << "Closing Files" << endl;
        cout << "Closing Files" << endl;

        log.close();
        cppfile.close();

        cout << "Brainfuck CPP created." << endl;
        cin >> EnterToClose;
    }

    goto Retry;

    return 0;
}
