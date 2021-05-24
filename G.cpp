#include <iostream>
#include <string>
#include <regex>
using namespace std;

int main() {
	string s, reg;
	cin>>reg;
	getline(cin , s);
	while (getline(cin , s)){
		regex reg_1("^(" + reg +")$");
		cmatch result;
		if (regex_match(s.c_str(), result, reg_1)){
			cout<<"YES\n";
		}
		else{
			cout<<"NO\n";
		}
	}
	return 0;
}
