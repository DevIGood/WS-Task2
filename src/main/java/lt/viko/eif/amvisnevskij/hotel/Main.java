package lt.viko.eif.amvisnevskij.hotel;

public class Main {
    public static void main(String[] args) {
        try {
            XslTransformer.transformToHTML(
                    "src/main/resources/hotel.xml",
                    "src/main/resources/html/hotel.xsl",
                    "src/main/resources/html/hotel.html");

            XslTransformer.transformToPdf("src/main/resources/hotel.xml",
                    "src/main/resources/pdf/hotel.xsl",
                    "src/main/resources/pdf/hotel.pdf");
        }
        catch (Exception e) {
            System.out.println("Transformation error: " + e.getMessage());
        }
    }

}
