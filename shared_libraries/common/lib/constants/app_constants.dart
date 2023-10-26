class AppConstants {
  const AppConstants();

  static CachedKey cachedKey = const CachedKey();

  static ErrorMessage errorMessage = const ErrorMessage();

  static ErrorKey errorKey = const ErrorKey();
}

class CachedKey {
  const CachedKey();

  String get accessTokenKey => "tokenKey";
  String get registerTokenKey => "registerTokenKey";
  String get emailKey => "emailTokenKey";
  String get firebaseTokenKey => "firebaseTokenKey";
  String get roleUserKey => "roleUserKey";
  String get userIdKey => "userIdKey";
}

class ErrorKey {
  const ErrorKey();

  String get storeName => 'storeName';

  String get ktpName => 'ktpName';

  String get ktpNumber => 'ktpNumber';

  String get ktpImagePath => 'ktpImagePath';

  String get no => 'no';

  String get password => 'password';

  String get confirmPassword => "confirmPassword";

  String get pickUp => "pickup";

  String get fullName => "fullName";

  String get phone => "phone";

  String get pickupAddress => "pickupAddress";

  String get address => "address";

  String get pjPickupName => "pjPickupName";

  String get printName => "printName";

  String get pjReturnName => "pjReturnName";

  String get userProfileNotEmpty => "userProfileNotEmpty";
}

class BaseUrl {
  static const String baseUrlProd = "https://dev-api.lincah.id/api/";
  static const String baseUrlDev = "https://dev-api.lincah.id/api/";
  static const String baseUrlStaging = "https://dev-api.lincah.id/api/";
}

class SocketBaseUrl {
  static const String baseUrlProd = "https://dev-ws.lincah.id/";
  static const String baseUrlDev = "https://dev-ws.lincah.id/";
  static const String baseUrlStaging = "https://dev-ws.lincah.id/";
}

class PackageNameIos {
  static const String backgroundFetchIosIdDev = "dev.eoatech.yaumi-dev.fetch";
  static const String backgroundFetchIosIdStg = "dev.eoatech.yaumi-dev.fetch";
  static const String backgroundFetchIosIdProd = "com.eoatech.yaumi.fetch";
}

class ErrorMessage {
  const ErrorMessage();

  String get failedGetToken => 'failed get token';

  //Auth
  String get failedSignIn => 'failedsignin';
  String get unauthenticated => 'unathenticated';
  String get authenticated => 'athenticated';

  //Store Name
  String get storeNameEmpty => 'Nama Toko tidak boleh kosong';

  //Ktp Name
  String get ktpNameEmpty => 'Nama KTP tidak boleh kosong';

  //Ktp Name
  String get ktpNumberEmpty => 'Nomor KTP tidak boleh kosong';

  //Ktp Name
  String get ktpImagePathEmpty => 'Foto Ktp harus dipilih';

  //No
  String get noEmpty => 'Nomor Rekening tidak boleh kosong';

  //No
  String get nameEmpty => 'Nama tidak boleh kosong';

  //Pickup Name PJ
  String get pickUpNamePJEmpty => 'Nama PJ Penjemputan tidak boleh kosong';

  //Return Name PJ
  String get returnNamePJEmpty => 'Nama PJ Pengembalian tidak boleh kosong';

  //Phone Number
  String get phoneNumberEmpty => 'Nomor Whatsapp tidak boleh kosong';
  String get phoneNumberInvalidFormat => 'Format Nomor Hp Salah';

  //Picup Addresss
  String get pickupAddress => 'Alamat Penjemputan tidak boleh kosong';

  //Message
  String get message => 'message';
}

class AppApi {
  const AppApi();

  //Auth
  String get signIn => 'auth/signin';
  String get signUp => 'auth/register';
  String get registerCheck => 'auth/register-check';
  String get resetPassword => 'auth/reset-password';
  String get verifyTwoFa => 'auth/2fa-verification';
  String get checkAccountVerificationStatus => 'user/alert';
  String get resendEmailVerification => 'auth/register-resend';
  String get registerDevice => 'auth/register-device';

  //Dashboard
  String get homeBanner => 'dashboard/mobile';

  //user
  String get user => 'user/me';
  String get userSubMember => 'user/sub-member/select';
  String get authenticate => 'authenticate';
  String get balance => 'balance/me';
  String get addBalance => 'balance';
  String get withdrawBalance => 'withdrawal';
  String get balancePendingCod => 'balance/pending-cod';
  String get balancePendingWithdrawl => 'balance/pending-withdraw';
  String get verificationId => 'id-verification';

  //address
  String get address => 'address';

  //banks
  String get banks => 'banks';

  //Claim
  String get order => 'order';

  //Pay
  String get pay => 'order/pay';

  //Claim
  String get claim => 'claim';

  String get totalOrder => "dashboard/count/all";
  String get totalShippingCost => "dashboard/calculate/shipping-cost";
  String get totalShippingDiscount => "dashboard/calculate/shipping-discount";
  String get totalOrderCompelete => "dashboard/count/complete";
  String get totalOrderProblem => "dashboard/count/problem";
  String get totalOrderReturn => "dashboard/count/return";
  String get totalOrderShipping => "dashboard/count/shipping";
  String get totalReturnCost => "dashboard/calculate/return";
  String get totalReconsiliationcComplete =>
      "dashboard/calculate/reconsiliation-complete";
  String get totalReconsiliationWaiting =>
      "dashboard/calculate/reconsiliation-waiting";
  String get totalReconsiliationShipping =>
      "dashboard/calculate/reconsiliation-shipping";
  String get totalReconsiliationProblem =>
      "dashboard/calculate/reconsiliation-problem";
  String get invoice => "invoice";
  String checkOrder(String id) => 'order/$id/draft';
  String getOrderDetailById(String id) => 'order/$id';
  String orderById(String id) => 'order/$id';
  String deleteOrder(String id) => 'order/$id/delete';
  String orderBatch({
    required String batchId,
    required int page,
    int pageSize = 10,
  }) =>
      'batch/$batchId/orders?current=$page&pageSize=$pageSize';

  // print label
  String get printLabel => 'order/print';
  String get attachLabel => 'attachment';

  // leads
  String get lead => 'lead';
  String get removeLead => 'lead/delete';
  String get shipmentLead => 'lead/shipment';
  String get leadGetNotif => 'get-notif';
  String get leadSendNotif => 'send-notif';
  String whatsAppSendNotifLeads({
    required String phoneNumber,
    required String message,
  }) {
    return "https://api.whatsapp.com/send?phone=$phoneNumber&text=$message";
  }

  //batch
  String get batch => 'batch';
  String get checkBatch => 'batch/check-draft';
  String get confirmBatch => 'batch/confirm';
  String batchReview(String id) => 'batch/$id/review';
  String batchOrderList({
    required String batchId,
    required int page,
    required Map<String?, dynamic> params,
    int pageSize = 20,
  }) =>
      'batch/$batchId/orders?current=$page&pageSize=$pageSize&search=$params';

  //Basic
  String get searchAddress => 'destination/search';
  String get courierList => 'couriers';
  String get courierServicesList => 'services';
  String get checkOngkir => 'check/ongkir';
  String get checkResi => 'check/resi';
  String get upload => 'upload';

  // Ticket
  String get ticket => 'ticket';

  // Commons
  String get checkScore => 'check/score';
}

class SocketEvent {
  SocketEvent();
  // socket
  String get updateTicketSocket => 'update-ticket';
}
