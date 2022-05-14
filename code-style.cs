class PascalCase {

	struct PascalCase {}

	interface IPascalCase {}

	//  i know about some conventions but PascalCase in public
	// fields, props, ev, methods is only for setget, coz screw it
	public int camelCasePublic;

	private int _camelCasePrivate;
	protected int _camelCaseProtected;

	//  static follows same rule as normal, except private
	// privates goes as s_
	public static int camelCaseStaticPublic;

	private static int s_camelCase;

	// thread statics changes s -> t
	private static int t_camelCase;

	// consts are controversial
	// we have something like readonly but the thing is
	// that we also have consts
	// and all them needs some style
	// so i usually do caps case for consts
	private const int CAPS_CASE;
	// or it might be smarter to use PascalCase for them
	private const int PascalCaseConst;
	// and nothing for readonly?, following public/private/static rules
	private readonly int _camelCaseReadonly;

	// naming order is:
	public static const int ConstValue;
	// or:
	private static readonly int ReadonlyValue;
	// visibility, isStatic, isConst, anything else, type, name

	// methods usually follow the main rules for particular language
	// so for c# it's PascalCase, for Java is camelCase, for c it's snake_case
	void method_case(){} // ???
	void MethodCase(){} // ???
	void methodCase(){} // ???

	// usually enum follows language convention
	// but might be some exceptions
	enum PascalCase {
		PascalCaseType1,
		PascalCaseType2
	}
	// which one is right?
	enum PascalCase {
		camelCaseType1,
		camelCaseType2
	}
	// for example in flags?
	enum PascalCaseFlags {
		CAPS_CASE_FLAG_1,
		CAPS_CASE_FLAG_2
	}

	// for keywords add _ in end
	int int_;
	bool bool_;

	// acronyms 
	// follow first letter
	string asciiString;
	string UTFString;

	// brackets
	// ONE TRUE BRACE STYLE
	// Aka
	void function() {

		// with one exception of if else if
		// goes like this
		if (bool_) {

		} else
		if (int_ == 0) {

		}

	}

	// comments goes like this
	// one space apart from slashes

	/* or same way with multiline
	 * like this
	 */

	/* tho this
	   is also allowed
	   as long as 
	   it's all on same level
	 */

	// BUT documentation follows:

	/// Triple for single likes

	/**
	 * Double for multi
	 * doc
	 */
}

