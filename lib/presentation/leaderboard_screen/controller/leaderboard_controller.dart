import 'package:product_hunt/presentation/leaderboard_screen/models/leaderboard_month_item_model.dart';
import 'package:product_hunt/presentation/leaderboard_screen/models/leaderboard_year_item_model.dart';

import '/core/app_export.dart';
import 'package:product_hunt/presentation/leaderboard_screen/models/leaderboard_model.dart';
import 'package:flutter/material.dart';
import 'package:product_hunt/data/models/all/get_all_resp.dart';
import 'package:product_hunt/data/apiClient/api_client.dart';
import '../models/leaderboard_today_item_model.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '/../core/constants/constants.dart';

class LeaderboardController extends GetxController {
  Rx<LeaderboardModel> leaderboardModelObj = LeaderboardModel().obs;

  GetAllResp getAllResp = GetAllResp();

  @override
  void onReady() {
    super.onReady();
    DateTime now = new DateTime.now();
    var day = now.day.toString();

    Map<String, dynamic> queryParams = {
      'search[featured_day]' : now.day.toString(),
      'search[featured_month]' :now.month.toString(),
      'search[featured_year]' : now.year.toString(),
      "page" : "1",
      "per_page" : "3",
      "sort_by" : "votes_count",
      "order" : "desc",
    };
    this.callFetchAll(
      successCall: _onFetchAllSuccess,
      errCall: _onFetchAllError,
      queryParams: queryParams,
    );


    //Top Month

    Map<String, dynamic> queryParamsForMonth = {
      'search[featured_month]' :now.month.toString(),
      'search[featured_year]' : now.year.toString(),
      "page" : "1",
      "per_page" : "3",
      "sort_by" : "votes_count",
      "order" : "desc",
    };
    this.callFetchLeaderboardMonth(
      successCall: _onFetchLeaderboardMonthSuccess,
      errCall: _onFetchLeaderboardMonthError,
      queryParams: queryParamsForMonth,
    );

    //Top Year
    Map<String, dynamic> queryParamsForYear = {
      'search[featured_year]' : now.year.toString(),
      "page" : "1",
      "per_page" : "3",
      "sort_by" : "votes_count",
      "order" : "desc",
    };
    this.callFetchLeaderboardYear(
      successCall: _onFetchLeaderboardYearSuccess,
      errCall: _onFetchLeaderboardYearError,
      queryParams: queryParamsForYear,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callFetchAll(
      {VoidCallback? successCall,
      VoidCallback? errCall,
      Map<String, dynamic> queryParams = const {}}) async {
    return Get.find<ApiClient>().fetchAll(
        headers: {
          'Authorization': "Bearer ${Constants.token}",
        },
        onSuccess: (resp) {
          onFetchAllSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchAllError(err);
          if (errCall != null) {
            errCall();
          }
        },
        queryParams: queryParams);
  }

  void onFetchAllSuccess(var response) {
    getAllResp = GetAllResp.fromJson(response);
  }

  void onFetchAllError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
        messageText: Text(
          '$err',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }

  void _onFetchAllSuccess() {
    List<LeaderboardTodayItemModel> leaderboardTodayItemModelList = [];
    if (getAllResp!.posts! != null && getAllResp!.posts!.isNotEmpty) {
      for (var element in getAllResp!.posts!) {
        var leaderboardTodayItemModel = LeaderboardTodayItemModel();
        leaderboardTodayItemModel.nimbusTxt.value = element.name!.toString();
        leaderboardTodayItemModel.cloudbasedecoTxt.value =
            element.tagline!.toString();
        leaderboardTodayItemModel.ninetyFourTxt.value =
            element.votesCount!.toString();
        leaderboardTodayItemModel.rectangleFourImg.value =
            element.thumbnail!.imageUrl!.toString();
        leaderboardTodayItemModelList.add(leaderboardTodayItemModel);
      }
    }
    leaderboardModelObj.value.leaderboardTodayItemList.value =
        leaderboardTodayItemModelList;
  }

  void _onFetchAllError() {
    Fluttertoast.showToast(
      msg: "Something went wrong!",
    );
  }

  //Month
  void callFetchLeaderboardMonth(
      {VoidCallback? successCall,
        VoidCallback? errCall,
        Map<String, dynamic> queryParams = const {}}) async {
    return Get.find<ApiClient>().fetchAll(
        headers: {
          'Authorization': "Bearer ${Constants.token}",
        },
        onSuccess: (resp) {
          onFetchLeaderboardMonthSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchLeaderboardMonthError(err);
          if (errCall != null) {
            errCall();
          }
        },
        queryParams: queryParams);
  }

  void onFetchLeaderboardMonthSuccess(var response) {
    getAllResp = GetAllResp.fromJson(response);
  }

  void onFetchLeaderboardMonthError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
        messageText: Text(
          '$err',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }

  void _onFetchLeaderboardMonthSuccess() {
    List<LeaderboardMonthItemModel> leaderboardMonthItemModelList = [];
    if (getAllResp!.posts! != null && getAllResp!.posts!.isNotEmpty) {
      for (var element in getAllResp!.posts!) {
        var leaderboardMonthItemModel = LeaderboardMonthItemModel();
        leaderboardMonthItemModel.nimbusTxt.value = element.name!.toString();
        leaderboardMonthItemModel.cloudbasedecoTxt.value =
            element.tagline!.toString();
        leaderboardMonthItemModel.ninetyFourTxt.value =
            element.votesCount!.toString();
        leaderboardMonthItemModel.rectangleFourImg.value =
            element.thumbnail!.imageUrl!.toString();
        leaderboardMonthItemModelList.add(leaderboardMonthItemModel);
      }
    }
    leaderboardModelObj.value.leaderboardMonthItemList.value =
        leaderboardMonthItemModelList;
  }

  void _onFetchLeaderboardMonthError() {
    Fluttertoast.showToast(
      msg: "Something went wrong!",
    );
  }

  //Year
  void callFetchLeaderboardYear(
      {VoidCallback? successCall,
        VoidCallback? errCall,
        Map<String, dynamic> queryParams = const {}}) async {
    return Get.find<ApiClient>().fetchAll(
        headers: {
          'Authorization': "Bearer ${Constants.token}",
        },
        onSuccess: (resp) {
          onFetchLeaderboardYearSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchLeaderboardYearError(err);
          if (errCall != null) {
            errCall();
          }
        },
        queryParams: queryParams);
  }

  void onFetchLeaderboardYearSuccess(var response) {
    getAllResp = GetAllResp.fromJson(response);
  }

  void onFetchLeaderboardYearError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
        messageText: Text(
          '$err',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }

  void _onFetchLeaderboardYearSuccess() {
    List<LeaderboardYearItemModel> leaderboardYearItemModelList = [];
    if (getAllResp!.posts! != null && getAllResp!.posts!.isNotEmpty) {
      for (var element in getAllResp!.posts!) {
        var leaderboardYearItemModel = LeaderboardYearItemModel();
        leaderboardYearItemModel.nimbusTxt.value = element.name!.toString();
        leaderboardYearItemModel.cloudbasedecoTxt.value =
            element.tagline!.toString();
        leaderboardYearItemModel.ninetyFourTxt.value =
            element.votesCount!.toString();
        leaderboardYearItemModel.rectangleFourImg.value =
            element.thumbnail!.imageUrl!.toString();
        leaderboardYearItemModelList.add(leaderboardYearItemModel);
      }
    }
    leaderboardModelObj.value.leaderboardYearItemList.value =
        leaderboardYearItemModelList;
  }

  void _onFetchLeaderboardYearError() {
    Fluttertoast.showToast(
      msg: "Something went wrong!",
    );
  }
}
