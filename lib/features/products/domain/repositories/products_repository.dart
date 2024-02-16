import 'package:ecom_mart/features/products/domain/entities/products_model.dart';

abstract class ProductRepository{
  // GET ALL PRODUCTS
  Future<List<Product>> getAllProducts();

  // GET A SINGLE PRODUCT
  Future<Product> getSingleProduct(Product product);

  // GET ALL CATEGORIES
  Future<List<Product>> getAllCategories();

  // GET PRODUCT BY SEARCH
  Future<List<Product>> getProductBySearch();

  // GET PRODUCTS IN A SPECIFIC CATEGORY
  Future<List<Product>> getSpecificCategory();

  //ADD PRODUCT
  Future<Product> addProduct(Product product);

  // UPDATE A PRODUCT
  Future<Product> updateProduct(Product product);

  // DELETE A PRODUCT
  Future<Product> deleteProduct(Product product);
}