class SignInWithEmailAndPasswordFailure {
  final String message;

  const SignInWithEmailAndPasswordFailure([this.message = "unknown"]);

  factory SignInWithEmailAndPasswordFailure.code(String code) {
    switch(code) {
      case 'invalid-email':
        return const SignInWithEmailAndPasswordFailure('유효하지 않은 이메일입니다.');
      case 'user-disabled':
        return const SignInWithEmailAndPasswordFailure('계정이 비활성화되었습니다.');
      case 'user-not-found':
        return const SignInWithEmailAndPasswordFailure('계정을 찾을 수 없습니다.');
      case 'wrong-password':
        return const SignInWithEmailAndPasswordFailure('비밀번호가 올바르지 않습니다.');
      default:
        return const SignInWithEmailAndPasswordFailure('알 수 없는 오류입니다.');
    }
  }
}

class SignUpWithEmailAndPasswordFailure {
  final String message;

  const SignUpWithEmailAndPasswordFailure([this.message = "unknown"]);

  factory SignUpWithEmailAndPasswordFailure.code(String code) {
    switch(code) {
      case 'email-already-in-use':
        return const SignUpWithEmailAndPasswordFailure('이미 사용 중인 이메일입니다.');
      case 'invalid-email':
        return const SignUpWithEmailAndPasswordFailure('유효하지 않은 이메일입니다.');
      case 'operation-not-allowed':
        return const SignUpWithEmailAndPasswordFailure('활성화되지 않은 계정입니다.');
      case 'weak-password':
        return const SignUpWithEmailAndPasswordFailure('취약한 비밀번호입니다.');
      default:
        return const SignUpWithEmailAndPasswordFailure('알 수 없는 오류입니다.');
    }
  }
}

class SignInWithCredential {
  final String message;

  const SignInWithCredential([this.message = "unknown"]);

  factory SignInWithCredential.code(String code) {
    switch(code) {
      case 'account-exists-with-different-credential':
        return const SignInWithCredential('이미 존재하는 계정입니다.');
      case 'invalid-credential':
        return const SignInWithCredential('유효하지 않은 계정입니다.');
      case 'operation-not-allowed':
        return const SignInWithCredential('활성화되지 않은 계정입니다.');
      case 'user-disabled':
        return const SignInWithCredential('사용할 수 없는 계정입니다.');
      case 'user-not-found':
        return const SignInWithCredential('계정을 찾을 수 없습니다.');
      case 'wrong-password':
        return const SignInWithCredential('비밀번호가 올바르지 않습니다.');
      case 'invalid-verification-code':
        return const SignInWithCredential('인증 코드가 유효하지 않습니다.');
      case 'invalid-verification-id':
        return const SignInWithCredential('인증되지 않은 ID입니다.');
      default:
        return const SignInWithCredential('알 수 없는 오류입니다.');
    }
  }
}