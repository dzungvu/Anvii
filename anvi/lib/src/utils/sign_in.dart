import 'package:anvi/src/utils/my_share_preference.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:google_sign_in/google_sign_in.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();

Future<String> signInWithGoogle() async {
  final GoogleSignInAccount googleSigninAccount = await googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSigninAccount.authentication;

  final AuthCredential credential = GoogleAuthProvider.getCredential(
    idToken: googleSignInAuthentication.idToken,
    accessToken: googleSignInAuthentication.accessToken,
  );

  final AuthResult authResult = await _auth.signInWithCredential(credential);
  final FirebaseUser user = authResult.user;

  assert(!user.isAnonymous);
  assert(await user.getIdToken() != null);

  final FirebaseUser currentUser = await _auth.currentUser();
  assert(user.uid == currentUser.uid);

  MySharePreference _mSPrefs = MySharePreference.getInstance();
  _mSPrefs.setUserDisplayName(user.displayName);
  _mSPrefs.setEmail(user.email);
  _mSPrefs.setAvatarUrl(user.photoUrl);

  print('username: ${user.displayName}');
  print('email: ${user.email}');
  print('photo: ${user.photoUrl}');

  return 'Sign in with google successed $user';
}

void signOutWithGoogle() async {
  await googleSignIn.signOut();

  print('User sign out');
}

Future<FacebookLoginResult> initializeFacebookLogin() async {
  final facebookLogin = FacebookLogin();
  final result = await facebookLogin.logIn(['email', 'public_profile']);
  return result;
}
