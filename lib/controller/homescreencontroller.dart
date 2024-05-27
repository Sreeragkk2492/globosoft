import 'package:get/get.dart';
import 'package:globosoft/apiservice.dart';
import 'package:globosoft/model/product.dart';

class HomeController extends GetxController {
  var isLoading = true.obs;
 // var productdata = <dynamic>[].obs;
  // var product=Rxn<ProductClass>();
  var product = Product(
      success: false,
      product: ProductClass(
        id: '',
        name: '',
        description: '',
        metaTitle: '',
        metaDescription: '',
        metaKeyword: '',
        tag: '',
        model: '',
        sku: '',
        upc: '',
        ean: '',
        jan: '',
        isbn: '',
        mpn: '',
        location: '',
        quantity: '',
        stockStatus: '',
        manufacturerId: '',
        manufacturer: '',
        reward: '',
        points: '',
        dateAvailable: DateTime.now(),
        taxClassId: '',
        weightClassId: '',
        length: '',
        width: '',
        height: '',
        lengthClassId: '',
        subtract: '',
        reviews: [],
        minimum: '',
        sortOrder: '',
        status: '',
        dateAdded: DateTime.now(),
        dateModified: DateTime.now(),
        viewed: '',
        price: '',
        href: '',
        thumb: '',
        special: false,
        rating: 0,
        taxs: Taxs(
          taxClass: TaxClass(taxClassId: 0),
          taxRate: TaxRate(taxRateId: 0),
        ),
        discounts: [],
        options: [],
        related: [],
      )).obs;
  final ApiService apiService;

  HomeController(this.apiService);

  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  void fetchData() async {
    try {
      isLoading(true);
      var fetchedProduct = await apiService.fetchData();
      print('Fetched product: $fetchedProduct');
      product.value = fetchedProduct;
    } catch (e) {
      print('Error fetching data: $e');
    } finally {
      isLoading(false);
    }
  }
}
