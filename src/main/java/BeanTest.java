public class BeanTest {



    public static void main(String[] args){
        Album myTest = new Album();
        myTest.setArtistName("Wu-Tang Clan");
        System.out.println(myTest.getArtistName());

        Album myTest1 = new Album();
        myTest1.setAlbumName("Enter the 36 Chambers");
        System.out.println(myTest1.getAlbumName());

        Album myTest2 = new Album();
        myTest2.setSales(60);
        System.out.println(myTest2.getSales());

//        Album myTest3 = new Album();
//        myTest3.setReleaseDate(1998/08/20);
//        System.out.println(myTest3.getReleaseDate());

        Author authorTest = new Author();
        authorTest.setIdNo(36);
        System.out.println("Author IdNo: " + authorTest.getIdNo());

        Author authorTest1 = new Author();
        authorTest1.setLastName("RZA");
        System.out.println(authorTest1.getLastName());

        Author authorTest2 = new Author();
        authorTest2.setFirstName("The");
        System.out.println(authorTest2.getFirstName());

//        Sample myTest = new Sample();
//        System.out.println(c);
//    }

    }
}

//public class Testing{
//    private int Sample(int c)
//    {
//        int a = 1;
//        int b = 2;
//        c = a + b;
//        return c;
//    }
//    public static void main(String []args)
//    {
//        Testing t = new Testing(); // instantiate a Testing class object
//        int result = t.Sample(1); // use the instance t to invoke a method on it
//        System.out.println(result);
