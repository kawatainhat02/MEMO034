class HelloWorld {
  def static void main(String[] args) {
    println("Hello World")
  }
}

// Generated Java Source Code
import org.eclipse.xtext.xbase.lib.InputOutput;
 
public class HelloWorld {
  public static void main(final String[] args) {
    InputOutput.<String>println("Hello World");
  }
}
ssertEquals(42.km/h, (40_000.m + 2.km) / 60.min)

1..999).filter[ i | i % 3 == 0 || i % 5 == 0 ].reduce[ i1, i2 | i1 + i2 ]

@Data class Movie {
  String title
  int year
  double rating
  long numberOfVotes
  Set<String> categories 
}

import java.io.FileReader
import java.util.Set
import static extension com.google.common.io.CharStreams.*
 
class Movies {
  
  val movies = new FileReader('data.csv').readLines.map [ line |
    val segments = line.split('  ').iterator
    return new Movie(
      segments.next, 
      Integer.parseInt(segments.next), 
      Double.parseDouble(segments.next), 
      Long.parseLong(segments.next), 
      segments.toSet
    )
  ]
}

import static extension com.google.common.io.CharStreams.*

return new Movie (
  segments.next, 
  Integer.parseInt(segments.next), 
  Double.parseDouble(segments.next), 
  Long.parseLong(segments.next), 
  segments.toSet
)

@Test def numberOfActionMovies() {
  assertEquals(828, 
    movies.filter[ categories.contains('Action') ].size)
}

@Test def void yearOfBestMovieFrom80s() {
  assertEquals(1989, 
    movies.filter[ (1980..1989).contains(year) ].sortBy[ rating ].last.year)
}

@Test def void sumOfVotesOfTop2() {
  val long sum = movies.sortBy[ -rating ].take(2).map[ numberOfVotes ].reduce[ a, b | a + b ]
  assertEquals(47_229L, sum)
}

final LinkedList<String> list = new LinkedList<String>();

val list = new LinkedList<String>

def toList(String[] array) {
  val List<String> asList = array
  return asList
}

package com.acme
 
import java.util.List
 
class MyClass {
  String name
  
  new(String name) {
    this.name = name
  }
  
  def String first(List<String> elements) {
    elements.get(0)
  }
}
package com.acme

import java.math.BigDecimal
import static java.util.Collections.sort
import static org.junit.Assert.*

class MyClass {
}

class ArrayList<E> extends AbstractList<E>
        implements List<E>, RandomAccess, 
                   Cloneable, java.io.Serializable {
  ...
}


class MyClass extends AnotherClass {
  new(String s) {
    super(s)
  }
  
  new() {
    this("default")
  }
}

class MyClass {
  int count = 1
  static boolean debug = false
  var name = 'Foo'          // type String is inferred 
  val UNIVERSAL_ANSWER = 42 // final field with inferred type int
  ...
}

def String first(List<String> elements) {
  elements.get(0)
}

def static createInstance() {
  new MyClass('foo')
}

def printAll(String... strings) {
  strings.forEach[ s | println(s) ]
}

abstract class MyAbstractClass() {
  def String abstractMethod() // no body
}

override String second(List<String> elements) {
  elements.get(1)
}

/*
 * throws an Exception
 */
def void throwException() throws Exception {
   throw new Exception
}
 
/*
 * throws an Exception without declaring it
 */
def void sneakyThrowException() {
   throw new Exception
}

def String second(List<String> elements) {
  elements.get(1)
}

def second(List<String> elements) {
  elements.get(1)
}

def <T> second(List<T> elements) {
  elements.get(1)
}

class Money {
	def + (Money other) { ... }
	def - (Money other) { ... }
	def * (BigDecimal times) { ... }
	...
}

def dispatch printType(Number x) { 
  "it's a number" 
}
 
def dispatch printType(Integer x) { 
  "it's an int" 
}

protected String _printType(final Number x) {
  return "it\'s a number";
}
 
protected String _printType(final Integer x) {
  return "it\'s an int";
}
 
public String printType(final Number x) {
  if (x instanceof Integer) {
    return _printType((Integer)x);
  } else if (x != null) {
    return _printType(x);
  } else {
    throw new IllegalArgumentException("Unhandled parameter types: " +
      Arrays.<Object>asList(x).toString());
  }
}

def dispatch printTypes(Number x, Integer y) { 
  "it's some number and an int" 
}
 
def dispatch printTypes(Integer x, Number y) { 
  "it's an int and a number" 
}

public String printTypes(final Number x, final Number y) {
  if (x instanceof Integer
       && y != null) {
    return _printTypes((Integer)x, y);
  } else if (x != null
       && y instanceof Integer) {
    return _printTypes(x, (Integer)y);
  } else {
    throw new IllegalArgumentException("Unhandled parameter types: " +
      Arrays.<Object>asList(x, y).toString());
  }
}

def dispatch printType(Number x) { 
  "it's some number" 
}
 
def dispatch printType(Integer x) { 
  "it's an int" 
}
 
def dispatch printType(Void x) { 
  "it's null" 
}

public String printType(final Number x) {
  if (x instanceof Integer) {
    return _printType((Integer)x);
  } else if (x != null) {
    return _printType(x);
  } else if (x == null) {
    return _printType((Void)null);
  } else {
    throw new IllegalArgumentException("Unhandled parameter types: " +
      Arrays.<Object>asList(x).toString());
  }
}

public abstract class AbstractLabelProvider {
   protected String _label(Object o) {
      // some generic implementation
   }
}

class MyLabelProvider extends AbstractLabelProvider {
   def dispatch label(Entity it)  {
     name
   }
     
   def dispatch label(Method it) { 
     name+"("+params.join(",")+"):"+type
   }
   
   def dispatch label(Field it) { 
     name+type
   }
}

public String label(final Object it) {
  if (it instanceof Entity) {
    return _label((Entity)it);
  } else if (it instanceof Field) {
    return _label((Field)it);
  } else if (it instanceof Method) {
    return _label((Method)it);
  } else if (it != null) {
    return super._label(it);
  } else {
    throw new IllegalArgumentException("Unhandled parameter types: " +
      Arrays.<Object>asList(it).toString());
  }
}Fred Flintstone {
	marriedTo Willma Flintstone
	friendWith Barny Rubble
}
Willma Flintstone {
	marriedTo Fred Flintstone
}
Barny Rubble {
	friendWith Fred Flintstone
}

def List<Person> copyPersons(List<Person> persons) {
	persons.map[copy]
}
def copy(Person p) {
	val result = new Person()
	result.name = p.name
	// The following is wrong and results in a stack overflow
	result.friendWith = p.friendWith.map[copy]   
	result.marriedWith = p.marriedWith.map[copy]
}

def create result: new Person copy(Person p) {
	result.name = p.name
	// now it works	
	result.friendWith = p.friendWith.map[copy]   
	result.marriedWith = p.marriedWith.map[copy]
}	

def Person create new PersonImpl() copy(Person p) {
	/* it.*/name = p.name
	friendWith = p.friendWith.map[copy]   
	marriedWith = p.marriedWith.map[copy] 
}	

@TypeAnnotation("some value")
class MyClass {
  @FieldAnnotation(value = @NestedAnnotation(true))
  static val CONSTANT = 'a compile-time constant'
  
  @MethodAnnotation(constant = CONSTANT)
  def String myMethod(@ParameterAnnotation String param) {
    //...
  }
}

"hello".toFirstUpper() // calls StringExtensions.toFirstUpper("hello")

"hello".toFirstUpper // calls StringExtensions.toFirstUpper(String)
listOfStrings.map[ toUpperCase ] // calls ListExtensions.<T, R>map(List<T> list, Function<? super T, ? extends R> mapFunction)

class MyClass {
  def doSomething(Object obj) {
    // do something with obj
  }
  
  def extensionCall(Object obj) {
    obj.doSomething()  // calls this.doSomething(obj)
  }
}

import static extension java.util.Collections.singletonList

new MyClass().singletonList() 
// calls Collections.singletonList(new MyClass())

interface EntityPersistence {
  public save(Entity e);
  public update(Entity e);
  public delete(Entity e);
}

class MyServlet {
  extension EntityPersistence ep = Factory.get(EntityPersistence)
  ...
  
}

val Person person = ...
person.save  // calls ep.save(person)
person.name = 'Horst'
person.update  // calls ep.update(person)
person.delete  // calls ep.delete(person)

interface MyInterface<T> extends OtherInterface {
  val CONSTANT = 42
  def T doStuff(String ... varArg) throws SomeException
}

interface MyInterface {
  def doStuff() {
      'This is an instance method returning a string.'
  }
  static def doGlobalStuff() {
      'This is a static method returning a string.'
  }
}

interface A {
    def execute() {
        return 1
    }
}
 
interface B {
    def execute() {
        return 2
    }
}
 
interface C extends A, B {
}
 
class D implements A, B {
}

override execute()

override execute() {
    return 3
}

override execute() {
    A.super.execute()
}

annotation MyAnnotation {
  String[] value
  boolean isTricky = false
  int[] lotteryNumbers = #[ 42, 137 ]
}

enum MyColor {
  GREEN,
  BLUE,
  RED
}


class MyClass {
  static class NestedClass {}
  annotation NestedAnnotation {}
  enum NestedEnum {}
  interface NestedInterface {}
}
 
interface MyInterface {
  static class NestedClass {}
  annotation NestedAnnotation {}
  enum NestedEnum {}
  interface NestedInterface {}
}
 
annotation MyAnnotation {
  static class NestedClass {}
  annotation NestedAnnotation {}
  enum NestedEnum {}
  interface NestedInterface {}
}

val data = try {
    fileContentsToString('data.txt')
  } catch (IOException e) {
    'dummy data'
  }

val char c = 'c'

42
1_234_567_890 
0xbeef    // hexadecimal
077       // decimal 77 (*NOT* octal)
-1  // an expression consisting of the unary - operator and an integer literal  
42L
0xbeef#L // hexadecimal, mind the '#'
0xbeef_beef_beef_beef_beef#BI // BigInteger

42d     // double
0.42e2  // implicit double
0.42e2f // float
4.2f    // float
0.123_456_789_123_456_789_123_456_789e2000bd // BigDecimal

val myList = newArrayList('Hello', 'World')
val myMap = newLinkedHashMap('a' -> 1, 'b' -> 2) 

val myList = #['Hello','World']

val String[] myArray = newArrayOfSize(400)
val int[] intArray = newIntArrayOfSize(400)

val int[] myArray = #[1,2,3]
val List<Integer> myList = myArray

something as MyClass
42 as Integer

val x = 2.71BD
val y = 3.14BD
val sum = x + y    // calls BigDecimalExtension.operator_plus(x,y)


e1 += e2	e1.operator_add(e2)
e1 -= e2	e1.operator_remove(e2)
 	 
e1 || e2	e1.operator_or(e2)
 	 
e1 && e2	e1.operator_and(e2)
 	 
e1 == e2	e1.operator_equals(e2)
e1 != e2	e1.operator_notEquals(e2)
e1 === e2	e1.operator_tripleEquals(e2)
e1 !== e2	e1.operator_tripleNotEquals(e2)
 	 
e1 < e2	e1.operator_lessThan(e2)
e1 > e2	e1.operator_greaterThan(e2)
e1 <= e2	e1.operator_lessEqualsThan(e2)
e1 >= e2	e1.operator_greaterEqualsThan(e2)
 	 
e1 -> e2	e1.operator_mappedTo(e2)
e1 .. e2	e1.operator_upTo(e2)
e1 >.. e2	e1.operator_greaterThanDoubleDot(e2)
e1 ..< e2	e1.operator_doubleDotLessThan(e2)
e1 => e2	e1.operator_doubleArrow(e2)
e1 << e2	e1.operator_doubleLessThan(e2)
e1 >> e2	e1.operator_doubleGreaterThan(e2)
e1 <<< e2	e1.operator_tripleLessThan(e2)
e1 >>> e2	e1.operator_tripleGreaterThan(e2)
e1 <> e2	e1.operator_diamond(e2)
e1 ?: e2	e1.operator_elvis(e2)
e1 <=> e2	e1.operator_spaceship(e2)
 	 
e1 + e2	e1.operator_plus(e2)
e1 - e2	e1.operator_minus(e2)
 	 
e1 * e2	e1.operator_multiply(e2)
e1 / e2	e1.operator_divide(e2)
e1 % e2	e1.operator_modulo(e2)
e1 ** e2	e1.operator_power(e2)
 	 
! e1	e1.operator_not()
- e1	e1.operator_minus()
+ e1	e1.operator_plus()

if (name == 'Homer')
	println('Hi Homer')

if (someObject === anotherObject)
	println('same objects')

if (42 > myNumber) {
	...
}

val x = 2.71BD
val y = 3.14BD
val sum = x + y    // calls BigDecimalExtension.operator_plus(x,y)

val salutation = person.firstName ?: 'Sir/Madam' 

val person = new Person => [
	firstName = 'Homer'
	lastName = 'Simpson'
	address = new Address => [
		street = '742 Evergreen Terrace'
		city = 'SpringField'
	]
]

// iterate the list forwards
for (i : 0 ..< list.size) {
	val element = list.get(i)
	...
}

// or backwards
for (i : list.size >.. 0) {
	val element = list.get(i)
	...
}

list.forEach[ element, index |
	.. // if you need access to the current index
]
list.reverseView.forEach[
  .. // if you just need the element it in reverse order
]

@Data class NameAndAge {
	String name
	int age
}


var greeting = 'Hello'
if (isInformal)
  greeting = 'Hi'

myObj.myProperty = 'foo' // calls myObj.setMyProperty("foo")

var BigDecimal bd = 45bd
bd += 12bd // equivalent to bd = bd + 12bd
bd -= 12bd // equivalent to bd = bd - 12bd
bd /= 12bd // equivalent to bd = bd / 12bd
bd *= 12bd // equivalent to bd = bd * 12bd

{
  doSideEffect("foo")
  result
}
{
  var x = greeting;
  if (x.equals("Hello ")) {
    x + "World!" 
  } else {
    x
  }
}

{
  val max = 100
  var i = 0
  while (i < max) {
    println("Hi there!")
    i = i + 1
  }
}

var List<String> strings = new ArrayList

var strings = new ArrayList<String> // -> msg is of type ArrayList<String>  


myObj.myProperty // myObj.getMyProperty()  (.. in case myObj.myProperty is not visible.)


this.myField

myField

val it = new Person
name = 'Horst' // translates to 'it.setName("Horst");'

MyClass.myField
MyClass::myField

myRef?.doStuff

com.acme.MyClass.myMethod('foo')
com.acme.MyClass::myMethod('foo')
com::acme::MyClass::myMethod('foo')

if (myRef != null) myRef.doStuff()

// Java Code!
final JTextField textField = new JTextField();
textField.addActionListener(new ActionListener() {
  @Override
  public void actionPerformed(ActionEvent e) {
    textField.setText("Something happened!");
  }
});

val textField = new JTextField
textField.addActionListener([ ActionEvent e |
  textField.text = "Something happened!"
])

textField.addActionListener([ e |
  textField.text = "The command '" + e.actionCommand + "' happened!"
])

textField.addActionListener([
  textField.text = "The command '" + actionCommand + "' happened!"
])


val Runnable aBar = [|
  println("Hello I'm executed!")
]
val Runnable noBar = [
  println("Hello I'm executed!")
]

Collections.sort(someStrings) [ a, b |
  a.length - b.length
]


Collections.sort(someStrings, [ a, b |
  a.length - b.length
])

textField.addActionListener [
  textField.text = "Something happened!"
]

val lineReader = new LineReader(r);
val AbstractIterator<String> lineIterator = [|
	val result = lineReader.readLine 
	if (result==null)
		self.endOfData
	return result
]

val toUpperCaseFunction = [ String s | s.toUpperCase ] // inferred type is (String)=>String

val (String)=>String stringToStringFunction = [ toUpperCase ]
// or
val Function1<? super String,? extends String> same = [ toUpperCase ]
// or
val stringToStringFunction2 = [ String s | s.toUpperCase ] // inferred type is (String)=>String

val tabListener = new ActionBar.TabListener() {
  override onTabSelected(ActionBar.Tab tab, FragmentTransaction ft) {
    // show the given tab
  }
 
  override onTabUnselected(ActionBar.Tab tab, FragmentTransaction ft) {
    // hide the given tab
  }
 
  override onTabReselected(ActionBar.Tab tab, FragmentTransaction ft) {
    // probably ignore this event
  }
};


if (p) e1 else e2

if (foo) x 
if (foo) x  else null

val name = if (firstName != null) firstName + ' ' + lastName else lastName

switch myString {
  case myString.length > 5 : "a long string."
  case 'some' : "It's some string."
  default : "It's another short string."
}

switch myString : someComputation() {
  ..
}

def length (Object x) {
  switch x {
    String case x.length > 0 : x.length // length is defined for String 
    List<?> : x.size    // size is defined for List
    default : -1
  }
}

def length (Object x) {val x = flag?"Hello":"Goodbye"

  switch x {
	List<?> | Set<?> : x.size // size is defined for intersection type Collection
	String case x.length > 0: x.length // length is defined for String
	default: -1
  }
}

def isMale(String salutation) {
  switch salutation {
    case "Mr.", 
    case "Sir" : true
    default : false
  }
}


new String() == new String
new ArrayList<BigDecimal>() == new ArrayList<BigDecimal>

for (T1 variable : arrayOrIterable) expression

for (String s : myStrings) {
  doSideEffect(s)
}
 
for (s : myStrings)
  doSideEffect(s)

for (<init-expression> ;  <predicate> ; <update-expression>) body-expression


for (var i = 0 ; i < s.length ; i++) {
  println(s.subString(0,i)
}

while (predicate) expression

while (true) {
  doSideEffect("foo")
}
 
while ((i=i+1) < max) 
  doSideEffect("foo")

do expression while (predicate)

do {
  doSideEffect("foo");
} while (true)
 
 
do doSideEffect("foo") while ((i=i+1)<max)

listOfStrings.map [ e | 
  if (e==null) 
    return "NULL"
  e.toUpperCase
]

{
...
if (myList.isEmpty)
  throw new IllegalArgumentException("the list must not be empty")
...
}val name = try {
    readFromFile
  } catch (IOException e) {
    "unknown"
  }

try {
  throw new RuntimeException()
} catch (NullPointerException e) {
  // handle e
} finally {
  // do stuff
}

def readFile (String path) {
  try {
    readFromPath (path)
  } catch (FileNotFoundException | StreamCorruptedException it) {
    logException
  }
}

try (val resource = new StringReader("This \n is a text!"))
    return resource.read

synchronized(lock) {
  println("Hello")
}

val name = synchronized(lock) { 
  doStuff() 
}

def someHTML(String content) '''
  <html>
    <body>
      «content»
    </body>
  </html>
'''

def toText(Node n) {
  switch n {
    Contents : n.text
 
    A : '''<a href="«n.href»">«n.applyContents»</a>'''
 
    default : '''
        <«n.tagName»>
          «n.applyContents»
        </«n.tagName»>
    '''
  }
}

def someHTML(String body) '''
  <html>
    <body>
    ««« this will not be visible in the result
    ««« nor will this: «body»
    </body>
  </html>
'''

def someHTML(Paragraph p) '''
  <html>
    <body>
      «IF p.headLine != null»
        <h1>«p.headline»</h1>
      «ENDIF»
      <p>
        «p.text»
      </p>
    </body>
  </html>
'''

def someHTML(Paragraph p) '''
  <html>
    <body>
      «IF p.headLine != null»
        <h1>«p.headline»</h1>
      «ELSE»
        <h1>«p.standartHeadline»</h1>
      «ENDIF»
      <p>
        «p.text»
      </p>
    </body>
  </html>
'''

def someHTML(List<Paragraph> paragraphs) '''
  <html>
    <body>
      «FOR p : paragraphs»
        «IF p.headLine != null»
          <h1>«p.headline»</h1>
        «ENDIF»
        <p>
          «p.text»
        </p>
      «ENDFOR»
    </body>
  </html>
'''







