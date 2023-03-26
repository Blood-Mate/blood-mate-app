import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:bloodmate_app/data/model/models.dart';
import 'package:bloodmate_app/data/repository/people_repository.dart';
import 'package:bloodmate_app/data/repository/post_repository.dart';
import 'package:bloodmate_app/data/repository/post_repository.dart';

class AcquaintancePageViewModel with ChangeNotifier {
  late final PeopleRepository _peopleRepository;
  late final PostRepository _postRepository;
  late final PostRepository _postRepository;

  List<People> _guardian = [];
  List<People> _protege = [];
  List<People> _contact = [];

  List<People> get guardian => _guardian;
  List<People> get protege => _protege;
  List<People> get contact => _contact;

  late int statusCode;
  late String selectedSortOrder;
  late People focusedProtege;
  bool isFocused = false;
  late People focusedProtege;
  bool isFocused = false;
  final List<String> sortOptions = ['ASC', 'DSC'];

  AcquaintancePageViewModel() {
    _peopleRepository = PeopleRepository();
    _postRepository = PostRepository();
    _postRepository = PostRepository();
    selectedSortOrder = 'ASC';
    _loadItems();
  }

  Future<void> _loadItems() async {
    _guardian = await _peopleRepository.getGuardian();
    _protege = await _peopleRepository.getProtege();
    _contact = await _peopleRepository.getContact();
    notifyListeners();
  }

  Future<int> changeIsSendingTarget(contactId, isSendingTarget) async {
    statusCode = await _peopleRepository.patchContact(
        contactId: contactId, isSendingTarget: isSendingTarget);
    _loadItems();
    //notifyListeners();
    return statusCode;
  }

  Future<int> addGuardian(phoneNumber) async {
    statusCode = await _peopleRepository.postGuardian(phoneNumber: phoneNumber);
    _loadItems();
    notifyListeners();
    return statusCode;
  }

  Future<int> deleteGuardian(guardianId) async {
    Response response =
        await _peopleRepository.deleteGuardian(guardianId: guardianId);
    _loadItems();
    notifyListeners();
    return response.statusCode!;
  }

  Future<int> getContacts() async {
    // get permission
    var status = await Permission.contacts.status;
    print('have permission');
    if (status.isGranted) {
      // 연락처 가져오기
      final Iterable<Contact> contacts = await ContactsService.getContacts();
      final List<Map<String, String>> contactList = [];

      // API에 맞는 data로 transform
      for (Contact contact in contacts) {
        final String name = contact.displayName ?? '';
        final List<Item>? phones = contact.phones?.toList();

        if (phones != null && phones.isNotEmpty) {
          for (Item phone in phones) {
            final String phoneNumber = phone.value ?? '';
            contactList.add({
              "name": name,
              "phoneNumber": combinePhoneAndCountry(phoneNumber, '+82')
            });
          }
        }
      }
      print(contactList);
      print("get user's contacts");
      Response response =
          await _peopleRepository.postContact(contacts: contactList);
      _loadItems();
      notifyListeners();

      return response.statusCode!;
    } else if (status.isDenied) {
      print('permission failed');
      Permission.contacts.request(); // 허락해달라고 팝업띄우는 코드
    }
    return -1;
  }

  setSort(String sortBy) {
    selectedSortOrder = sortBy;
    notifyListeners();
  }

  focusProtege(People protege) {
    focusedProtege = protege;
    isFocused = true;
    print(protege);
  }

  releaseFocus() {
    isFocused = false;
  }

  Future<int> postMyDonation(content) async {
    Response response = await _postRepository.postPrivatePost(content: content);
    return response.statusCode!;
  }

  Future<int> postProtegeDonation(protegeId, content) async {
    Response response = await _postRepository.postPrivatePostAsGuardian(
        content: content, wardId: protegeId);
    return response.statusCode!;
  }

  Future<int> deleteContact(contactId) async {
    Response response =
        await _peopleRepository.deleteContact(contactId: contactId);
    _loadItems();
    notifyListeners();
    return response.statusCode!;
  }

  // convert phoneNumber
  combinePhoneAndCountry(String phoneNumber, String countryCode) {
    // 입력된 전화번호 문자열에서 하이픈 및 공백 제거, 0으로 시작 시 0제거
    phoneNumber = phoneNumber.replaceAll('-', '');
    phoneNumber = phoneNumber.replaceAll(' ', '');
    phoneNumber = phoneNumber.startsWith('0')
        ? phoneNumber.replaceFirst('0', '')
        : phoneNumber;

    // 전화번호와 국가 코드를 합쳐서 전체 전화번호 문자열을 생성
    String combinedNumber =
        phoneNumber.startsWith('+') ? phoneNumber : countryCode + phoneNumber;

    return combinedNumber;
  }
}
